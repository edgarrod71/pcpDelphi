inherited fn1_meto_cst_tiem_maquina: Tfn1_meto_cst_tiem_maquina
  Left = 411
  Top = 243
  Width = 273
  Height = 288
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Tiempo máquina (TM)'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 265
  end
  inherited padr_shap_xp_down: TShape
    Top = 260
    Width = 265
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 265
  end
  inherited padr_pane_arriba: TPanel
    Width = 265
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 265
    inherited padr_sepa_new: TShape
      Width = 259
    end
  end
  inherited padr_pane_info: TPanel
    Top = 251
    Width = 265
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
    Top = 252
    Width = 265
    inherited padr_beve_abajo: TBevel
      Width = 259
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 265
  end
  object Panel1: TPanel [8]
    Left = 0
    Top = 54
    Width = 265
    Height = 197
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
      Top = 8
      Width = 170
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
      FocusControl = edit_larg_costura
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Largo de costura:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 28
      Width = 170
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
      FocusControl = edit_punt_por_centimetro
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Puntadas por cm.:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 10
      Top = 48
      Width = 170
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
      FocusControl = edit_revo_por_minuto
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Revoluciones por minuto:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 10
      Top = 68
      Width = 170
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
      FocusControl = edit_gd
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Grado de dificultad de manejo:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel6: TSCLDBLabel
      Left = 10
      Top = 88
      Width = 170
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
      FocusControl = edit_para_precision
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Paradas con precisión:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel7: TSCLDBLabel
      Left = 10
      Top = 108
      Width = 170
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
      FocusControl = edit_pp
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Precisión de parada:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel8: TSCLDBLabel
      Left = 10
      Top = 136
      Width = 170
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
      FocusControl = dxDBCurrencyEdit6
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tiempo máquina (min):'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel9: TSCLDBLabel
      Left = 10
      Top = 156
      Width = 170
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
      FocusControl = edit_tiem_maqu_tmu
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tiempo máquina (TMU):'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object edit_larg_costura: TdxDBCurrencyEdit
      Left = 182
      Top = 8
      Width = 65
      TabOrder = 0
      OnExit = HacerCalculos
      OnKeyDown = doCancelarEscape
      Alignment = taRightJustify
      DataField = 'larg_costura'
      DataSource = data_ventana
      StyleController = padr_estilo
      DisplayFormat = ',0.00'
      Nullable = False
      NullString = '0'
      StoredValues = 33
    end
    object edit_punt_por_centimetro: TdxDBCurrencyEdit
      Left = 182
      Top = 28
      Width = 65
      TabOrder = 1
      OnExit = HacerCalculos
      OnKeyDown = doCancelarEscape
      Alignment = taRightJustify
      DataField = 'punt_por_centimetro'
      DataSource = data_ventana
      StyleController = padr_estilo
      DisplayFormat = ',0.00'
      Nullable = False
      NullString = '0'
      StoredValues = 33
    end
    object edit_revo_por_minuto: TdxDBCurrencyEdit
      Left = 182
      Top = 48
      Width = 65
      TabOrder = 2
      OnExit = HacerCalculos
      OnKeyDown = doCancelarEscape
      Alignment = taRightJustify
      DataField = 'revo_por_minuto'
      DataSource = data_ventana
      StyleController = padr_estilo
      DecimalPlaces = 0
      DisplayFormat = ',0'
      Nullable = False
      NullString = '0'
      StoredValues = 33
    end
    object edit_para_precision: TdxDBCurrencyEdit
      Left = 182
      Top = 88
      Width = 65
      TabOrder = 4
      OnExit = HacerCalculos
      OnKeyDown = doCancelarEscape
      Alignment = taRightJustify
      DataField = 'para_precision'
      DataSource = data_ventana
      StyleController = padr_estilo
      DecimalPlaces = 0
      DisplayFormat = ',0'
      Nullable = False
      NullString = '0'
      StoredValues = 33
    end
    object dxDBCurrencyEdit6: TdxDBCurrencyEdit
      Left = 182
      Top = 136
      Width = 65
      Enabled = False
      TabOrder = 6
      OnKeyDown = doCancelarEscape
      Alignment = taRightJustify
      DataField = 'tiem_maqu'
      DataSource = data_ventana
      StyleController = padr_estilo
      DecimalPlaces = 3
      DisplayFormat = ',0.000'
      Nullable = False
      StoredValues = 33
    end
    object edit_tiem_maqu_tmu: TdxDBCurrencyEdit
      Tag = -15
      Left = 182
      Top = 156
      Width = 65
      Enabled = False
      TabOrder = 7
      OnKeyDown = doCancelarEscape
      Alignment = taRightJustify
      DataField = 'tiem_maqu_tmu'
      DataSource = data_ventana
      StyleController = padr_estilo
      DecimalPlaces = 3
      DisplayFormat = ',0.000'
      Nullable = False
      StoredValues = 33
    end
    object edit_gd: TdxDBSpinEdit
      Left = 182
      Top = 68
      Width = 65
      TabOrder = 3
      OnExit = HacerCalculos
      OnKeyDown = doCancelarEscape
      Alignment = taRightJustify
      DataField = 'grad_difi_manejo'
      DataSource = data_ventana
      HideSelection = False
      StyleController = padr_estilo
      OnChange = edit_gdChange
      MaxValue = 5
      MinValue = 1
      StoredValues = 49
    end
    object edit_pp: TdxDBSpinEdit
      Left = 182
      Top = 108
      Width = 65
      TabOrder = 5
      OnExit = edit_ppExit
      OnKeyDown = doCancelarEscape
      Alignment = taRightJustify
      DataField = 'prec_parada'
      DataSource = data_ventana
      HideSelection = False
      StyleController = padr_estilo
      MaxValue = 4
      StoredValues = 17
    end
  end
  inherited data_ventana: TDataSource
    DataSet = myTablaVentana
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
      OnUpdate = padr_acti_cancelarUpdate
    end
    inherited padr_acti_aceptar: TAction
      Visible = True
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
  object myTablaVentana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'larg_costura'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'punt_por_centimetro'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'revo_por_minuto'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'grad_difi_manejo'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'para_precision'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'prec_parada'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    AfterInsert = myTablaVentanaAfterInsert
    BeforePost = myTablaVentanaBeforePost
    AfterPost = myTablaVentanaAfterPost
    Left = 250
    Top = 37
    object myTablaVentanatiem_maqu: TFloatField
      FieldName = 'tiem_maqu'
    end
    object myTablaVentanatiem_maqu_tmu: TFloatField
      FieldName = 'tiem_maqu_tmu'
    end
    object myTablaVentanalarg_costura: TFloatField
      FieldName = 'larg_costura'
      Required = True
    end
    object myTablaVentanapunt_por_centimetro: TFloatField
      FieldName = 'punt_por_centimetro'
      Required = True
    end
    object myTablaVentanarevo_por_minuto: TIntegerField
      FieldName = 'revo_por_minuto'
      Required = True
    end
    object myTablaVentanagrad_difi_manejo: TIntegerField
      FieldName = 'grad_difi_manejo'
      Required = True
    end
    object myTablaVentanapara_precision: TIntegerField
      FieldName = 'para_precision'
      Required = True
    end
    object myTablaVentanaprec_parada: TIntegerField
      FieldName = 'prec_parada'
      Required = True
    end
  end
end

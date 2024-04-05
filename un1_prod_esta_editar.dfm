inherited fn1_prod_esta_editar: Tfn1_prod_esta_editar
  Left = 325
  Top = 220
  Width = 532
  Height = 370
  BorderIcons = [biSystemMenu]
  Caption = 'Editar estado'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 524
  end
  inherited padr_shap_xp_down: TShape
    Top = 333
    Width = 524
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 524
  end
  inherited padr_pane_arriba: TPanel
    Width = 524
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 524
    inherited padr_beve_1: TBevel
      Width = 518
    end
    inherited padr_sepa_new: TShape
      Width = 518
    end
  end
  inherited padr_pane_info: TPanel
    Top = 342
    Width = 524
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
  object pane: TPCPFrame [6]
    Tag = 251
    Left = 0
    Top = 54
    Width = 524
    Height = 251
    Align = alTop
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
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
      Top = 6
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
      Caption = 'Proceso:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 10
      Top = 26
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
      FocusControl = comb_usua_responsable
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Responsable:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 78
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
      FocusControl = edit_fech_estimada
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha estimada:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 270
      Top = 48
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
      FocusControl = edit_avance
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = '% Avance:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 10
      Top = 98
      Width = 100
      Height = 147
      Alive = False
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = dxDBMemo1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Observaciones:'
      Layout = tlTop
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object dxDBEdit1: TdxDBEdit
      Left = 112
      Top = 6
      Width = 260
      Enabled = False
      TabOrder = 1
      DataField = 'nomb_proceso'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object comb_usua_responsable: TPCPLookUpComboEdit
      Left = 112
      Top = 26
      Width = 140
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'usua_responsable'
      DataSource = data_ventana
      KeyField = 'user_name'
      ListField = 'user_name'
      ListSource = data_usuarios
      ParentCtl3D = False
      TabOrder = 2
      DirectInput = False
    end
    object edit_fech_estimada: TdxDBDateEdit
      Left = 112
      Top = 78
      Width = 140
      TabOrder = 5
      DataField = 'fech_estimada'
      DataSource = data_ventana
      StyleController = padr_estilo
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object edit_avance: TJvTracker
      Left = 372
      Top = 48
      Width = 129
      Height = 21
      BackColor = clBtnFace
      BackBorder = True
      TrackColor = clBtnShadow
      TrackPositionColored = False
      BorderColor = clBtnShadow
      ThumbColor = clBtnFace
      OnChangedValue = edit_avanceChangedValue
    end
    object dxDBMemo1: TdxDBMemo
      Left = 112
      Top = 98
      Width = 390
      Color = clWhite
      TabOrder = 6
      DataField = 'observaciones'
      DataSource = data_ventana
      StyleController = padr_estilo
      Height = 147
    end
    object pane_finalizacion: TPanel
      Left = 267
      Top = 75
      Width = 249
      Height = 23
      BevelOuter = bvNone
      TabOrder = 4
      Visible = False
      object SCLDBLabel6: TSCLDBLabel
        Left = 3
        Top = 3
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
        FocusControl = edit_fech_finalizacion
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Fecha finalización:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object edit_fech_finalizacion: TdxDBDateEdit
        Left = 105
        Top = 3
        Width = 130
        TabOrder = 0
        DataField = 'fech_sistema'
        DataSource = data_ventana
        StyleController = padr_estilo
        DateOnError = deToday
        DateValidation = True
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object chec_hecho: TdxDBCheckEdit
      Left = 112
      Top = 46
      Width = 140
      TabOrder = 3
      Caption = 'Finalizado'
      DataField = 'hecho'
      DataSource = data_ventana
      StyleController = padr_estilo
      ValueChecked = '1'
      ValueUnchecked = '-1'
      OnChange = chec_hechoChange
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 334
    Width = 524
    inherited padr_beve_abajo: TBevel
      Width = 518
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 524
  end
  inherited data_ventana: TDataSource
    DataSet = myTabla_ventana
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_buscar: TAction
      Enabled = False
    end
    inherited padr_acti_imprimir: TAction
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
  end
  object myTabla_ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'usua_responsable'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'fech_sistema'
        DataType = ftDate
      end
      item
        Name = 'observaciones'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'nomb_proceso'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'fech_estimada'
        DataType = ftDate
      end
      item
        Name = 'cons_prod_orde_responsable'
        DataType = ftInteger
      end
      item
        Name = 'porc_avance'
        DataType = ftInteger
      end
      item
        Name = 'hecho'
        DataType = ftInteger
      end>
    BeforePost = myTabla_ventanaBeforePost
    AfterCancel = myTabla_ventanaAfterCancel
    Left = 218
    Top = 4
  end
  object quer_actu_responsables: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Execute procedure pro_pcp_prod_orde_resp_update'
      '(:cons_prod_orde_responsable,'
      ':usua_responsable, '
      ':porc_avance, '
      ':fech_estimada,'
      ':fech_sistema, '
      ':observaciones)')
    Left = 250
    Top = 36
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_orde_responsable'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'usua_responsable'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'porc_avance'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'fech_estimada'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'fech_sistema'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'observaciones'
        ParamType = ptInput
      end>
  end
  object data_usuarios: TDataSource
    DataSet = _fMDI.tabl_usuarios
    Left = 290
    Top = 44
  end
end

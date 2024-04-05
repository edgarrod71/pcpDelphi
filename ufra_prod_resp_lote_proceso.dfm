object ffra_prod_resp_lote_proceso: Tffra_prod_resp_lote_proceso
  Left = 0
  Top = 0
  Width = 513
  Height = 277
  Align = alClient
  TabOrder = 0
  object pane_arriba: TPanel
    Left = 0
    Top = 53
    Width = 513
    Height = 93
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
      Top = 5
      Width = 100
      Height = 21
      Alive = False
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'MS Sans Serif'
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
      Caption = 'Etapa:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 10
      Top = 25
      Width = 100
      Height = 21
      Alive = False
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'MS Sans Serif'
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
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 65
      Width = 100
      Height = 21
      Alive = False
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'MS Sans Serif'
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
      Caption = 'Fecha estimada:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 269
      Top = 48
      Width = 100
      Height = 21
      Alive = False
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'MS Sans Serif'
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
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 9
      Top = 47
      Width = 100
      Height = 21
      Alive = False
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'MS Sans Serif'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Transparent = True
      ColorRequerido = clRed
      ColorNoRequerido = clWindowText
    end
    object dxDBEdit1: TdxDBEdit
      Tag = -1
      Left = 112
      Top = 5
      Width = 260
      Enabled = False
      TabOrder = 0
      DataField = 'NOMB_PROCESO'
      DataSource = data_sele_responsables
    end
    object comb_usua_responsable: TPCPLookUpComboEdit
      Left = 112
      Top = 25
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
      TabOrder = 1
      DirectInput = False
    end
    object dxDBEdit2: TdxDBEdit
      Tag = -1
      Left = 112
      Top = 65
      Width = 140
      Enabled = False
      TabOrder = 3
      DataField = 'FECH_ESTIMADA'
      DataSource = data_ventana
    end
    object edit_avance: TJvTracker
      Left = 371
      Top = 48
      Width = 21
      Height = 21
      BackColor = clBlack
      BackBorder = True
      TrackColor = clRed
      TrackPositionColored = False
      BorderColor = clOlive
      ThumbColor = clNavy
      CaptionColor = clGreen
      OnChangedValue = doActualizarAvance
    end
    object pane_finalizacion: TPanel
      Left = 264
      Top = 68
      Width = 243
      Height = 33
      BevelOuter = bvNone
      TabOrder = 5
      Visible = False
      object SCLDBLabel6: TSCLDBLabel
        Left = 5
        Top = 0
        Width = 100
        Height = 21
        Alive = False
        ColorActive = clBtnFace
        FontActive.Charset = DEFAULT_CHARSET
        FontActive.Color = clWindowText
        FontActive.Height = -11
        FontActive.Name = 'MS Sans Serif'
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
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object edit_fech_finalizacion: TdxDBDateEdit
        Left = 107
        Top = 0
        Width = 130
        TabOrder = 0
        DataField = 'fech_sistema'
        DataSource = data_ventana
        DateOnError = deToday
        DateValidation = True
        SaveTime = False
      end
    end
    object chec_hecho: TdxDBCheckEdit
      Left = 112
      Top = 45
      Width = 140
      Style.BorderStyle = xbsThick
      TabOrder = 2
      Caption = 'Finalizado'
      DataField = 'hecho'
      DataSource = data_ventana
      ValueChecked = '1'
      ValueUnchecked = '-1'
      OnChange = chec_hechoChange
    end
  end
  object pane_observaciones: TPanel
    Left = 0
    Top = 146
    Width = 513
    Height = 131
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object PCPFrame1: TPCPFrame
      Tag = 131
      Left = 0
      Top = 0
      Width = 513
      Height = 131
      Align = alClient
      BorderWidth = 2
      Constraints.MinHeight = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Caption = 'Observaciones'
      Titulo_Color = 16244694
      BorderWidthIn = 4
      FlatBorder = True
      object dxDBMemo1: TdxDBMemo
        Left = 7
        Top = 26
        Width = 499
        Align = alClient
        Color = clWhite
        Style.BorderStyle = xbsThick
        TabOrder = 1
        DataField = 'observaciones'
        DataSource = data_ventana
        Height = 98
      end
    end
  end
  object TBXDock1: TTBXDock
    Left = 0
    Top = 0
    Width = 513
    Height = 26
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      DockMode = dmCannotFloatOrChangeDocks
      DragHandleStyle = dhNone
      FullSize = True
      TabOrder = 0
      object TBXItem2: TTBXItem
        Action = acti_guardar
        DisplayMode = nbdmImageAndText
        ImageIndex = 5
        Images = _fMDI.imagenesPCP
      end
      object TBXItem1: TTBXItem
        Action = acti_cancelar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imagenesPCP
      end
    end
  end
  object pane_seleccion: TPanel
    Left = 0
    Top = 26
    Width = 513
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    Visible = False
    inline fram_lote: Tffra_prod_sele_lote
      Width = 513
      Height = 27
      Align = alClient
      inherited padr_labe_nume_lote: TSCLDBLabel
        Left = 10
      end
      inherited comb_nume_lote: TPCPLookUpComboEdit
        Left = 112
        Ctl3D = True
      end
      inherited quer_lotes: TQuery
        Left = 8
      end
      inherited data_lotes: TDataSource
        Left = 40
      end
    end
  end
  object quer_sele_responsables: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Select * from'
      'vis_pcp_prod_orde_responsables'
      'where cons_prod_lote = :cons_prod_lote'
      'and cons_proceso = :cons_proceso')
    Left = 504
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_lote'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_proceso'
        ParamType = ptUnknown
      end>
  end
  object data_sele_responsables: TDataSource
    DataSet = quer_sele_responsables
    Left = 538
    Top = 12
  end
  object ActionList1: TActionList
    Left = 514
    Top = 47
    object acti_cancelar: TDataSetCancel
      Category = 'Dataset'
      Caption = 'Cancelar'
      ImageIndex = 8
      ShortCut = 16449
      OnExecute = acti_cancelarExecute
      DataSource = data_ventana
    end
    object acti_guardar: TDataSetPost
      Category = 'Dataset'
      Caption = 'Guardar'
      ImageIndex = 7
      ShortCut = 16455
      DataSource = data_ventana
    end
  end
  object quer_upda_responsables: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'EXECUTE PROCEDURE PRO_PCP_PROD_ORDE_RESP_UPDATE('
      '    :CONS_PROD_ORDE_RESPONSABLE,'
      '    :USUA_RESPONSABLE,'
      '    :PORC_AVANCE,'
      '    :FECH_ESTIMADA,'
      '    :FECH_SISTEMA ,'
      '    :OBSERVACIONES)')
    Left = 514
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PROD_ORDE_RESPONSABLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUA_RESPONSABLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PORC_AVANCE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECH_ESTIMADA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECH_SISTEMA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSERVACIONES'
        ParamType = ptUnknown
      end>
  end
  object myTabla_ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_prod_orde_responsable'
        DataType = ftInteger
      end
      item
        Name = 'cons_prod_lote'
        DataType = ftInteger
      end
      item
        Name = 'cons_proceso'
        DataType = ftInteger
      end
      item
        Name = 'usua_responsable'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'hecho'
        DataType = ftInteger
      end
      item
        Name = 'porc_avance'
        DataType = ftInteger
      end
      item
        Name = 'fech_sistema'
        DataType = ftDate
      end
      item
        Name = 'observaciones'
        DataType = ftString
        Size = 1000
      end>
    BeforePost = myTabla_ventanaBeforePost
    AfterCancel = myTabla_ventanaAfterCancel
    Left = 410
    Top = 4
    object myTabla_ventanacons_prod_orde_responsable: TIntegerField
      FieldName = 'cons_prod_orde_responsable'
    end
    object myTabla_ventanacons_prod_lote: TIntegerField
      FieldName = 'cons_prod_lote'
    end
    object myTabla_ventanacons_proceso: TIntegerField
      FieldName = 'cons_proceso'
    end
    object myTabla_ventanausua_responsable: TStringField
      FieldName = 'usua_responsable'
    end
    object myTabla_ventanahecho2: TIntegerField
      FieldName = 'hecho'
    end
    object myTabla_ventanaporc_avance: TIntegerField
      FieldName = 'porc_avance'
    end
    object myTabla_ventanafech_estimada: TDateField
      FieldName = 'fech_estimada'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object myTabla_ventanafech_sistema: TDateField
      FieldName = 'fech_sistema'
    end
    object myTabla_ventanaobservaciones: TStringField
      FieldName = 'observaciones'
      Size = 1000
    end
  end
  object data_ventana: TDataSource
    DataSet = myTabla_ventana
    OnDataChange = data_ventanaDataChange
    Left = 438
    Top = 4
  end
  object data_usuarios: TDataSource
    DataSet = _fMDI.tabl_usuarios
    Left = 402
    Top = 46
  end
end

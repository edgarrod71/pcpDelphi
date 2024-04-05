object ffra_come_sele_pedido: Tffra_come_sele_pedido
  Left = 0
  Top = 0
  Width = 841
  Height = 127
  TabOrder = 0
  object pane_sele_pedido: TPCPFrame
    Tag = 124
    Left = 0
    Top = 0
    Width = 841
    Height = 124
    Align = alTop
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnResize = pane_sele_pedidoResize
    Caption = 'Seleccione el pedido'
    Titulo_Color = 16244694
    FlatBorder = True
    object SCLDBLabel2: TSCLDBLabel
      Left = 270
      Top = 44
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
      Caption = 'Temporada:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 270
      Top = 64
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
      Caption = 'Cliente:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 10
      Top = 64
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
      FocusControl = dxDBEdit3
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha pedido:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 10
      Top = 84
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
      FocusControl = dxDBEdit5
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha entrega:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel6: TSCLDBLabel
      Left = 270
      Top = 84
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
      FocusControl = dxDBEdit4
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Vendedor:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel8: TSCLDBLabel
      Left = 530
      Top = 24
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
      FocusControl = edit_prio_pedido
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Prioridad:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
      Top = 24
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'No. pedido:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel7: TSCLDBLabel
      Left = 270
      Top = 24
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
      FocusControl = comb_orde_compra
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Orden de compra:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel9: TSCLDBLabel
      Left = 10
      Top = 44
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
      FocusControl = dxDBEdit6
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Unidades:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object dxDBEdit1: TdxDBEdit
      Left = 372
      Top = 44
      Width = 130
      Enabled = False
      TabOrder = 1
      DataField = 'NOMB_REFE_TEMPORADA'
      DataSource = data_pedidos
    end
    object dxDBEdit2: TdxDBEdit
      Left = 372
      Top = 64
      Width = 260
      Enabled = False
      TabOrder = 2
      DataField = 'NOMB_TERCERO'
      DataSource = data_pedidos
    end
    object dxDBEdit3: TdxDBEdit
      Left = 112
      Top = 64
      Width = 130
      Enabled = False
      TabOrder = 3
      DataField = 'FECH_PEDIDO'
      DataSource = data_pedidos
    end
    object dxDBEdit4: TdxDBEdit
      Left = 372
      Top = 84
      Width = 260
      Enabled = False
      TabOrder = 4
      DataField = 'NOMB_COME_VENDEDOR'
      DataSource = data_pedidos
    end
    object dxDBEdit5: TdxDBEdit
      Left = 112
      Top = 84
      Width = 130
      Enabled = False
      TabOrder = 5
      DataField = 'FECH_ENTREGA'
      DataSource = data_pedidos
    end
    object edit_prio_pedido: TdxDBEdit
      Left = 632
      Top = 24
      Width = 130
      Color = clWhite
      TabOrder = 6
      TabStop = False
      DataField = 'NOMB_COME_PRIO_PEDIDO'
      DataSource = data_pedidos
      ReadOnly = True
      StoredValues = 64
    end
    object comb_pedido: TPCPLookUpComboEdit
      Left = 112
      Top = 24
      Width = 130
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'cons_pedido'
      KeyField = 'cons_pedido'
      ListField = 'nume_pedido'
      ListSource = data_pedidos
      ParentCtl3D = False
      TabOrder = 7
      OnChange = comb_pedidoChange
      DirectInput = False
    end
    object comb_orde_compra: TPCPLookUpComboEdit
      Left = 372
      Top = 24
      Width = 130
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'cons_pedi_referencia'
      KeyField = 'cons_pedi_Referencia'
      ListField = 'orde_compra'
      ListSource = data_pedi_referencias
      ParentCtl3D = False
      TabOrder = 8
      OnChange = comb_orde_compraChange
      DirectInput = False
    end
    object padr_boto_menu_Referencia: TTBXButtonSCL
      Left = 245
      Top = 25
      Width = 24
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      DropDownMenu = _fMDI.mdi_menu_comercial
      ImageIndex = 64
      Images = _fMDI.imagenesPCP
      SmartFocus = False
      TabOrder = 9
      TabStop = False
    end
    object boto_limpiar: TTBXButtonSCL
      Left = 504
      Top = 25
      Width = 19
      Height = 20
      Hint = 'Limpiar'
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      ImageIndex = 36
      Images = _fMDI.imagenesPCP
      ParentShowHint = False
      ShowHint = True
      SmartFocus = False
      TabOrder = 10
      TabStop = False
      OnClick = boto_limpiarClick
    end
    object dxDBEdit6: TdxDBEdit
      Left = 112
      Top = 44
      Width = 130
      Enabled = False
      TabOrder = 11
      DataField = 'UNIDADES'
      DataSource = data_cant_pedido
    end
    object boto_info_unidades: TTBXButtonSCL
      Left = 245
      Top = 45
      Width = 19
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      ImageIndex = 71
      Images = _fMDI.imagenesPCP
      ParentShowHint = False
      ShowHint = True
      SmartFocus = False
      TabOrder = 12
      TabStop = False
    end
  end
  object quer_pedidos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select *'
      'FROM vis_pcp_pedidos'
      'order by nume_pedido')
    Left = 768
    Top = 6
    object quer_pedidosCONS_PEDIDO: TIntegerField
      FieldName = 'CONS_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_PEDIDO'
    end
    object quer_pedidosNUME_PEDIDO: TStringField
      FieldName = 'NUME_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.NUME_PEDIDO'
    end
    object quer_pedidosCONS_REFE_TEMPORADA: TIntegerField
      FieldName = 'CONS_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_REFE_TEMPORADA'
    end
    object quer_pedidosNOMB_REFE_TEMPORADA: TStringField
      FieldName = 'NOMB_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.NOMB_REFE_TEMPORADA'
      Size = 60
    end
    object quer_pedidosCONS_TERCERO: TIntegerField
      FieldName = 'CONS_TERCERO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_TERCERO'
    end
    object quer_pedidosNOMB_TERCERO: TStringField
      FieldName = 'NOMB_TERCERO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.NOMB_TERCERO'
      Size = 120
    end
    object quer_pedidosFECH_PEDIDO: TDateTimeField
      FieldName = 'FECH_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.FECH_PEDIDO'
      DisplayFormat = 'dd MMM yyyy'
    end
    object quer_pedidosFECH_ENTREGA: TDateTimeField
      FieldName = 'FECH_ENTREGA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.FECH_ENTREGA'
      DisplayFormat = 'dd MMM yyyy'
    end
    object quer_pedidosOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.OBSERVACIONES'
      Size = 240
    end
    object quer_pedidosCONS_COME_VENDEDOR: TIntegerField
      FieldName = 'CONS_COME_VENDEDOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_COME_VENDEDOR'
    end
    object quer_pedidosNOMB_COME_VENDEDOR: TStringField
      FieldName = 'NOMB_COME_VENDEDOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.NOMB_COME_VENDEDOR'
      Size = 60
    end
    object quer_pedidosCONS_COME_PRIO_PEDIDO: TIntegerField
      FieldName = 'CONS_COME_PRIO_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_COME_PRIO_PEDIDO'
    end
    object quer_pedidosNOMB_COME_PRIO_PEDIDO: TStringField
      FieldName = 'NOMB_COME_PRIO_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.NOMB_COME_PRIO_PEDIDO'
      Size = 60
    end
    object quer_pedidosCOLO_COME_PRIO_PEDIDO: TIntegerField
      FieldName = 'COLO_COME_PRIO_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.COLO_COME_PRIO_PEDIDO'
    end
    object quer_pedidosCONS_DESPACHAR_A: TIntegerField
      FieldName = 'CONS_DESPACHAR_A'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_DESPACHAR_A'
    end
    object quer_pedidosCONS_FACTURAR_A: TIntegerField
      FieldName = 'CONS_FACTURAR_A'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_FACTURAR_A'
    end
    object quer_pedidosFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.FECH_SISTEMA'
    end
    object quer_pedidosUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.USUA_SISTEMA'
    end
  end
  object data_pedidos: TDataSource
    DataSet = quer_pedidos
    Left = 800
    Top = 6
  end
  object quer_pedi_referencias: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_pedidos
    SQL.Strings = (
      'SELECT *'
      'FROM VIS_PCP_PEDI_REFERENCIAS'
      'WHERE CONS_PEDIDO = :CONS_PEDIDO')
    Left = 768
    Top = 37
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_pedido'
        ParamType = ptUnknown
      end>
  end
  object data_pedi_referencias: TDataSource
    DataSet = quer_pedi_referencias
    Left = 800
    Top = 37
  end
  object quer_cant_pedido: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select UNIDADES'
      'FROM CON_PCP_PEDI_SUMA_UNIDADES('
      ':CONS_PEDIDO, :CONS_PEDI_REFERENCIA)')
    Left = 768
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_PEDI_REFERENCIA'
        ParamType = ptInput
      end>
    object quer_cant_pedidoUNIDADES: TIntegerField
      FieldName = 'UNIDADES'
      DisplayFormat = ',0'
    end
  end
  object data_cant_pedido: TDataSource
    DataSet = quer_cant_pedido
    Left = 800
    Top = 72
  end
end

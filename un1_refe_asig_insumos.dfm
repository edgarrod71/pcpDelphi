inherited fn1_refe_asig_insumos: Tfn1_refe_asig_insumos
  Left = 63
  Top = 87
  VertScrollBar.Range = 0
  ActiveControl = PCPLookUpComboEdit1
  BorderStyle = bsDialog
  Caption = 'Asignación de insumos'
  ClientHeight = 417
  ClientWidth = 655
  OldCreateOrder = True
  Position = poScreenCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 655
  end
  inherited padr_shap_xp_down: TShape
    Top = 407
    Width = 655
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 655
  end
  inherited padr_pane_arriba: TPanel
    Width = 655
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 655
    inherited padr_beve_1: TBevel
      Width = 649
    end
    inherited padr_sepa_new: TShape
      Width = 649
    end
  end
  inherited padr_pane_info: TPanel
    Top = 416
    Width = 655
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
  object pane_info_referencia: TPCPFrame [6]
    Tag = 190
    Left = 0
    Top = 54
    Width = 655
    Height = 52
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Titulo_Color = 16244694
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
      Top = 26
      Width = 100
      Height = 21
      Alive = True
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
      Caption = 'Referencia:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 270
      Top = 26
      Width = 100
      Height = 21
      Alive = True
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
      Caption = 'C.I.R.:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object dxDBEdit1: TdxDBEdit
      Left = 112
      Top = 26
      Width = 130
      Enabled = False
      TabOrder = 1
      TabStop = False
      DataField = 'codi_referencia'
      DataSource = data_referencias
      ReadOnly = True
      StyleController = padr_estilo
      StoredValues = 64
    end
    object dxDBEdit2: TdxDBEdit
      Left = 372
      Top = 26
      Width = 130
      Enabled = False
      TabOrder = 2
      TabStop = False
      DataField = 'codi_inte_referencia'
      DataSource = data_referencias
      ReadOnly = True
      StyleController = padr_estilo
      StoredValues = 64
    end
  end
  object PCPFrame1: TPCPFrame [7]
    Tag = 278
    Left = 0
    Top = 106
    Width = 655
    Height = 301
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Caption = 'Información del material'
    Titulo_Color = 16244694
    Boton_Visible = False
    object SCLDBLabel4: TSCLDBLabel
      Left = 10
      Top = 26
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = PCPLookUpComboEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Código grupo:'
      Transparent = True
      DataSource = data_falsa
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'cons_insu_grupo'
      Field = 'cons_insu_grupo'
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 270
      Top = 26
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = comb_insu_grupo
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Grupo:'
      Transparent = True
      DataSource = data_falsa
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'cons_insu_grupo'
      Field = 'cons_insu_grupo'
    end
    object SCLDBLabel6: TSCLDBLabel
      Left = 10
      Top = 46
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = PCPLookUpComboEdit3
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Código subgrupo:'
      Transparent = True
      DataSource = data_falsa
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'cons_insu_subgrupo'
      Field = 'cons_insu_subgrupo'
    end
    object SCLDBLabel7: TSCLDBLabel
      Left = 270
      Top = 46
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = comb_insu_subgrupo
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Subgrupo:'
      Transparent = True
      DataSource = data_falsa
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'cons_insu_subgrupo'
      Field = 'cons_insu_subgrupo'
    end
    object SCLDBLabel8: TSCLDBLabel
      Left = 10
      Top = 66
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = PCPLookUpComboEdit5
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Código referencia:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'cons_insu_referencia'
      Field = 'cons_insu_referencia'
    end
    object SCLDBLabel9: TSCLDBLabel
      Left = 264
      Top = 66
      Width = 106
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = PCPLookUpComboEdit6
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Referencia insumo:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'cons_insu_referencia'
      Field = 'cons_insu_referencia'
    end
    object SCLDBLabel10: TSCLDBLabel
      Left = 10
      Top = 86
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = PCPLookUpComboEdit7
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Código proveedor:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'cons_tercero'
      Field = 'cons_tercero'
    end
    object SCLDBLabel11: TSCLDBLabel
      Left = 270
      Top = 86
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = PCPLookUpComboEdit8
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Proveedor:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'cons_tercero'
      Field = 'cons_tercero'
    end
    object SCLDBLabel12: TSCLDBLabel
      Left = 10
      Top = 106
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = edit_consumo
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Consumo unitario:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'consumo'
      Field = 'consumo'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 198
      Width = 100
      Height = 81
      Alive = True
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
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'observaciones'
      Field = 'observaciones'
    end
    object SCLDBLabel14: TSCLDBLabel
      Left = 270
      Top = 106
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = dxDBCurrencyEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Costo estimado:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'cost_estimado'
      Field = 'cost_estimado'
    end
    object DBText1: TDBText
      Left = 198
      Top = 108
      Width = 64
      Height = 15
      DataField = 'codi_unid_medida'
      DataSource = data_ventana
    end
    object SCLDBLabel13: TSCLDBLabel
      Left = 10
      Top = 126
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = PCPLookUpComboEdit9
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Talla promedio:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'tall_promedio'
      Field = 'tall_promedio'
    end
    object PCPLookUpComboEdit1: TPCPLookUpComboEdit
      Left = 112
      Top = 26
      Width = 130
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'cons_insu_grupo'
      DataSource = data_falsa
      KeyField = 'cons_insu_grupo'
      ListField = 'codi_insu_grupo'
      ListSource = data_insu_grupos
      ParentCtl3D = False
      TabOrder = 1
      DirectInput = False
    end
    object comb_insu_grupo: TPCPLookUpComboEdit
      Left = 372
      Top = 26
      Width = 260
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'cons_insu_grupo'
      DataSource = data_falsa
      KeyField = 'cons_insu_grupo'
      ListField = 'nomb_insu_grupo'
      ListSource = data_insu_grupos
      ParentCtl3D = False
      TabOrder = 2
      DirectInput = False
    end
    object PCPLookUpComboEdit3: TPCPLookUpComboEdit
      Left = 112
      Top = 46
      Width = 130
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'cons_insu_subgrupo'
      DataSource = data_falsa
      KeyField = 'cons_insu_subgrupo'
      ListField = 'codi_insu_subgrupo'
      ListSource = data_insu_subgrupos
      ParentCtl3D = False
      TabOrder = 3
      DirectInput = False
    end
    object comb_insu_subgrupo: TPCPLookUpComboEdit
      Left = 372
      Top = 46
      Width = 260
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'cons_insu_subgrupo'
      DataSource = data_falsa
      KeyField = 'cons_insu_subgrupo'
      ListField = 'nomb_insu_subgrupo'
      ListSource = data_insu_subgrupos
      ParentCtl3D = False
      TabOrder = 4
      DirectInput = False
    end
    object PCPLookUpComboEdit5: TPCPLookUpComboEdit
      Left = 112
      Top = 66
      Width = 130
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'cons_insu_referencia'
      DataSource = data_ventana
      KeyField = 'cons_insu_referencia'
      ListField = 'codi_insu_referencia'
      ListSource = data_insu_referencias
      ParentCtl3D = False
      TabOrder = 5
      DirectInput = False
    end
    object PCPLookUpComboEdit6: TPCPLookUpComboEdit
      Left = 372
      Top = 66
      Width = 260
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'cons_insu_referencia'
      DataSource = data_ventana
      KeyField = 'cons_insu_referencia'
      ListField = 'nomb_insu_referencia'
      ListSource = data_insu_referencias
      ParentCtl3D = False
      TabOrder = 6
      DirectInput = False
    end
    object PCPLookUpComboEdit7: TPCPLookUpComboEdit
      Left = 112
      Top = 86
      Width = 130
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'cons_tercero'
      DataSource = data_ventana
      KeyField = 'cons_tercero'
      ListField = 'codi_tercero'
      ListSource = data_proveedores
      ParentCtl3D = False
      TabOrder = 7
      DirectInput = False
    end
    object PCPLookUpComboEdit8: TPCPLookUpComboEdit
      Left = 372
      Top = 86
      Width = 260
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'cons_tercero'
      DataSource = data_ventana
      KeyField = 'cons_tercero'
      ListField = 'nomb_tercero'
      ListSource = data_proveedores
      ParentCtl3D = False
      TabOrder = 8
      DirectInput = False
    end
    object edit_consumo: TdxDBCalcEdit
      Left = 112
      Top = 106
      Width = 81
      TabOrder = 9
      Alignment = taRightJustify
      DataField = 'consumo'
      DataSource = data_ventana
      StyleController = padr_estilo
      StoredValues = 1
    end
    object dxDBMemo1: TdxDBMemo
      Left = 112
      Top = 198
      Width = 518
      TabOrder = 15
      DataField = 'observaciones'
      DataSource = data_ventana
      StyleController = padr_estilo
      ScrollBars = ssBoth
      Height = 81
    end
    object dxDBCurrencyEdit2: TdxDBCurrencyEdit
      Left = 372
      Top = 106
      Width = 81
      TabOrder = 10
      Alignment = taRightJustify
      DataField = 'cost_estimado'
      DataSource = data_ventana
      StyleController = padr_estilo
      DisplayFormat = '$ ,0.00'
      Nullable = False
      StoredValues = 1
    end
    object dxDBCheckEdit1: TdxDBCheckEdit
      Left = 112
      Top = 154
      Width = 260
      TabOrder = 13
      Caption = 'Habilitar consumos diferentes por COLOR'
      DataField = 'combinacion'
      DataSource = data_ventana
      StyleController = padr_estilo
      ValueChecked = '1'
      ValueUnchecked = '-1'
    end
    object dxDBCheckEdit2: TdxDBCheckEdit
      Left = 112
      Top = 174
      Width = 260
      TabOrder = 14
      Caption = 'Habilitar consumos diferentes por TALLA'
      DataField = 'tallaje'
      DataSource = data_ventana
      StyleController = padr_estilo
      ValueChecked = '1'
      ValueUnchecked = '-1'
    end
    object PCPLookUpComboEdit9: TPCPLookUpComboEdit
      Left = 112
      Top = 126
      Width = 81
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'tall_promedio'
      DataSource = data_ventana
      KeyField = 'talla'
      ListField = 'talla'
      ListSource = data_tallas
      ParentCtl3D = False
      TabOrder = 12
      DirectInput = False
    end
    object comb_monedas: TPCPLookUpComboEdit
      Left = 452
      Top = 106
      Width = 65
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'cons_moneda'
      DataSource = data_ventana
      KeyField = 'cons_moneda'
      ListField = 'simb_moneda'
      ListSource = data_monedas
      ParentCtl3D = False
      TabOrder = 11
      DirectInput = False
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 408
    Width = 655
    inherited padr_beve_abajo: TBevel
      Width = 649
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 655
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
  object data_referencias: TDataSource
    Left = 250
    Top = 43
  end
  object data_insu_grupos: TDataSource
    Left = 282
    Top = 43
  end
  object data_insu_subgrupos: TDataSource
    Left = 314
    Top = 43
  end
  object data_insu_referencias: TDataSource
    Left = 346
    Top = 43
  end
  object data_proveedores: TDataSource
    Left = 378
    Top = 43
  end
  object tabl_falsa: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_insu_grupo'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'cons_insu_subgrupo'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    Left = 120
    Top = 10
    object tabl_falsacons_insu_grupo: TIntegerField
      FieldName = 'cons_insu_grupo'
      Required = True
      OnChange = tabl_falsacons_insu_grupoChange
    end
    object tabl_falsacons_insu_subgrupo: TIntegerField
      FieldName = 'cons_insu_subgrupo'
      Required = True
      OnChange = tabl_falsacons_insu_subgrupoChange
    end
  end
  object data_falsa: TDataSource
    DataSet = tabl_falsa
    Left = 146
    Top = 10
  end
  object data_tallas: TDataSource
    Left = 410
    Top = 43
  end
  object data_monedas: TDataSource
    Left = 442
    Top = 44
  end
end

inherited fn1_mate_referencias1: Tfn1_mate_referencias1
  Left = 60
  Width = 626
  Height = 402
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 618
  end
  inherited padr_shap_xp_down: TShape
    Top = 365
    Width = 618
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 618
  end
  inherited padr_pane_arriba: TPanel
    Width = 618
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 618
    inherited padr_beve_1: TBevel
      Width = 612
    end
    inherited padr_sepa_new: TShape
      Width = 612
    end
  end
  inherited padr_pane_info: TPanel
    Top = 374
    Width = 618
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
    Width = 618
    Height = 219
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
      Top = 8
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
      Caption = 'Código:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CODI_MATE_REFERENCIA'
      Field = 'CODI_MATE_REFERENCIA'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 0
      Top = 80
      Width = 110
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
      Caption = 'Referencia material:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_MATE_REFERENCIA'
      Field = 'NOMB_MATE_REFERENCIA'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 8
      Top = 32
      Width = 102
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
      Caption = 'Grupo:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_MATE_GRUPO'
      Field = 'CONS_MATE_GRUPO'
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 8
      Top = 56
      Width = 102
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
      FocusControl = PCPLookUpComboEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Subgrupo:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_MATE_SUBGRUPO'
      Field = 'CONS_MATE_SUBGRUPO'
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 0
      Top = 104
      Width = 110
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
      Caption = 'Unidad de consumo:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_UNID_MEDIDA'
      Field = 'CONS_UNID_MEDIDA'
    end
    object SCLDBLabel6: TSCLDBLabel
      Left = 8
      Top = 128
      Width = 102
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
      DataField = 'OBSERVACIONES'
      Field = 'OBSERVACIONES'
    end
    object dxDBEdit1: TdxDBEdit
      Left = 112
      Top = 8
      Width = 121
      TabOrder = 0
      DataField = 'CODI_MATE_REFERENCIA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 112
      Top = 80
      Width = 185
      TabOrder = 3
      DataField = 'NOMB_MATE_REFERENCIA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object PCPLookUpComboEdit1: TPCPLookUpComboEdit
      Left = 112
      Top = 32
      Width = 185
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'CONS_MATE_GRUPO'
      DataSource = data_ventana
      KeyField = 'cons_mate_grupo'
      ListField = 'nomb_mate_grupo'
      ListSource = data_mate_grupos
      ParentCtl3D = False
      TabOrder = 1
      DirectInput = False
    end
    object PCPLookUpComboEdit2: TPCPLookUpComboEdit
      Left = 112
      Top = 56
      Width = 185
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'CONS_MATE_SUBGRUPO'
      DataSource = data_ventana
      KeyField = 'cons_mate_subgrupo'
      ListField = 'nomb_mate_subgrupo'
      ListSource = data_mate_subgrupos
      ParentCtl3D = False
      TabOrder = 2
      DirectInput = False
    end
    object PCPLookUpComboEdit3: TPCPLookUpComboEdit
      Left = 112
      Top = 104
      Width = 185
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'CONS_UNID_MEDIDA'
      DataSource = data_ventana
      KeyField = 'cons_unid_medida'
      ListField = 'nomb_unid_medida'
      ListSource = data_unid_medida
      ParentCtl3D = False
      TabOrder = 4
      DirectInput = False
    end
    object dxDBMemo1: TdxDBMemo
      Left = 112
      Top = 128
      Width = 185
      TabOrder = 5
      DataField = 'OBSERVACIONES'
      DataSource = data_ventana
      StyleController = padr_estilo
      Height = 81
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 366
    Width = 618
    inherited padr_beve_abajo: TBevel
      Width = 612
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 618
  end
  inherited Tabla_Ventana: TTable
    TableName = 'PCP_MATE_REFERENCIAS'
    object Tabla_VentanaCONS_MATE_REFERENCIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_MATE_REFERENCIA'
      Required = True
    end
    object Tabla_VentanaCONS_MATE_GRUPO: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'CONS_MATE_GRUPO'
      Required = True
    end
    object Tabla_VentanaCONS_MATE_SUBGRUPO: TIntegerField
      DisplayLabel = 'Subgrupo'
      FieldName = 'CONS_MATE_SUBGRUPO'
      Required = True
    end
    object Tabla_VentanaCODI_MATE_REFERENCIA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_MATE_REFERENCIA'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_MATE_REFERENCIA: TStringField
      DisplayLabel = 'Referencia material'
      FieldName = 'NOMB_MATE_REFERENCIA'
      Required = True
      Size = 60
    end
    object Tabla_VentanaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object Tabla_VentanaCONS_UNID_MEDIDA: TIntegerField
      DisplayLabel = 'Unidad de consumo'
      FieldName = 'CONS_UNID_MEDIDA'
      Required = True
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
  object quer_mate_grupos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_mate_grupo, nomb_mate_grupo'
      'from PCP_MATE_GRUPOS'
      'Order by nomb_mate_grupo')
    Left = 368
    Top = 86
    object quer_mate_gruposCONS_MATE_GRUPO: TIntegerField
      FieldName = 'CONS_MATE_GRUPO'
    end
    object quer_mate_gruposNOMB_MATE_GRUPO: TStringField
      FieldName = 'NOMB_MATE_GRUPO'
      Size = 60
    end
  end
  object quer_mate_subgrupos: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_mate_grupos
    SQL.Strings = (
      'Select cons_mate_subgrupo, nomb_mate_subgrupo'
      'from pcp_mate_subgrupos'
      'where cons_mate_grupo =  :cons_mate_grupo'
      'order by cons_mate_subgrupo')
    Left = 368
    Top = 118
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_MATE_GRUPO'
        ParamType = ptUnknown
      end>
    object quer_mate_subgruposCONS_MATE_SUBGRUPO: TIntegerField
      FieldName = 'CONS_MATE_SUBGRUPO'
    end
    object quer_mate_subgruposNOMB_MATE_SUBGRUPO: TStringField
      FieldName = 'NOMB_MATE_SUBGRUPO'
      Size = 60
    end
  end
  object data_mate_grupos: TDataSource
    DataSet = quer_mate_grupos
    Left = 400
    Top = 86
  end
  object data_mate_subgrupos: TDataSource
    DataSet = quer_mate_subgrupos
    Left = 400
    Top = 118
  end
  object quer_unid_medida: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_unid_medida, nomb_unid_medida'
      'From VIS_GLO_INVE_UNID_MEDI_REFE'
      'order by nomb_unid_medida')
    Left = 368
    Top = 150
    object quer_unid_medidaCONS_UNID_MEDIDA: TIntegerField
      FieldName = 'CONS_UNID_MEDIDA'
    end
    object quer_unid_medidaNOMB_UNID_MEDIDA: TStringField
      FieldName = 'NOMB_UNID_MEDIDA'
      Size = 60
    end
  end
  object data_unid_medida: TDataSource
    DataSet = quer_unid_medida
    Left = 400
    Top = 150
  end
end

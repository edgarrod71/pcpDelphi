inherited fn1_mate_subgrupos1: Tfn1_mate_subgrupos1
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 541
  end
  inherited padr_shap_xp_down: TShape
    Top = 224
    Width = 541
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 541
  end
  inherited padr_pane_arriba: TPanel
    Width = 541
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 541
    inherited padr_sepa_new: TShape
      Width = 535
    end
  end
  inherited padr_pane_info: TPanel
    Top = 223
    Width = 541
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
    Width = 541
    Height = 179
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
      DataField = 'CODI_MATE_SUBGRUPO'
      Field = 'CODI_MATE_SUBGRUPO'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 10
      Top = 56
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
      Caption = 'Subgrupo:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_MATE_SUBGRUPO'
      Field = 'NOMB_MATE_SUBGRUPO'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 80
      Width = 100
      Height = 89
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
    object SCLDBLabel4: TSCLDBLabel
      Left = 10
      Top = 32
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
      Caption = 'Grupo:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_MATE_GRUPO'
      Field = 'CONS_MATE_GRUPO'
    end
    object dxDBEdit1: TdxDBEdit
      Left = 112
      Top = 8
      Width = 121
      TabOrder = 0
      DataField = 'CODI_MATE_SUBGRUPO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 112
      Top = 56
      Width = 185
      TabOrder = 2
      DataField = 'NOMB_MATE_SUBGRUPO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBMemo1: TdxDBMemo
      Left = 112
      Top = 80
      Width = 185
      TabOrder = 3
      DataField = 'OBSERVACIONES'
      DataSource = data_ventana
      StyleController = padr_estilo
      Height = 89
    end
    object PCPLookUpComboEdit1: TPCPLookUpComboEdit
      Left = 112
      Top = 32
      Width = 185
      Height = 21
      DropDownCount = 8
      DataField = 'CONS_MATE_GRUPO'
      DataSource = data_ventana
      KeyField = 'cons_mate_grupo'
      ListField = 'nomb_mate_grupo'
      ListSource = data_mate_grupos
      TabOrder = 1
      DirectInput = False
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 225
    Width = 541
    inherited padr_beve_abajo: TBevel
      Width = 535
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 541
  end
  inherited Tabla_Ventana: TTable
    TableName = 'PCP_MATE_SUBGRUPOS'
    object Tabla_VentanaCONS_MATE_SUBGRUPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_MATE_SUBGRUPO'
      Required = True
    end
    object Tabla_VentanaCONS_MATE_GRUPO: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'CONS_MATE_GRUPO'
      Required = True
    end
    object Tabla_VentanaCODI_MATE_SUBGRUPO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_MATE_SUBGRUPO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_MATE_SUBGRUPO: TStringField
      DisplayLabel = 'Subgrupo'
      FieldName = 'NOMB_MATE_SUBGRUPO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
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
      'from pcp_mate_grupos'
      'order by nomb_mate_grupo')
    Left = 384
    Top = 70
    object quer_mate_gruposCONS_MATE_GRUPO: TIntegerField
      FieldName = 'CONS_MATE_GRUPO'
    end
    object quer_mate_gruposNOMB_MATE_GRUPO: TStringField
      FieldName = 'NOMB_MATE_GRUPO'
      Size = 60
    end
  end
  object data_mate_grupos: TDataSource
    DataSet = quer_mate_grupos
    Left = 416
    Top = 70
  end
end

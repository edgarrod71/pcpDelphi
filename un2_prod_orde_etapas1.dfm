inherited fn2_prod_orde_etapas1: Tfn2_prod_orde_etapas1
  Left = 122
  Top = 146
  Height = 399
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 362
  end
  inherited padr_pane_info: TPanel
    Top = 371
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
  object PCPFrame1: TPCPFrame [6]
    Tag = 203
    Left = 0
    Top = 54
    Width = 557
    Height = 203
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
      DataField = 'CODI_PROD_ETAPA'
      Field = 'CODI_PROD_ETAPA'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 10
      Top = 32
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
      Caption = 'Nombre etapa:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_PROD_ETAPA'
      Field = 'NOMB_PROD_ETAPA'
    end
    object SCLDBLabel12: TSCLDBLabel
      Left = 10
      Top = 62
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Color:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'COLOR'
      Field = 'COLOR'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 91
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
      FocusControl = PCPLookUpComboEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Responsable:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'USUA_RESPONSABLE'
      Field = 'USUA_RESPONSABLE'
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 10
      Top = 118
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
      FocusControl = dxDBSpinEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Duración (días):'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'DURA_ESTIMADA'
      Field = 'DURA_ESTIMADA'
    end
    object dxDBEdit1: TdxDBEdit
      Left = 112
      Top = 8
      Width = 130
      TabOrder = 1
      DataField = 'CODI_PROD_ETAPA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 112
      Top = 32
      Width = 260
      TabOrder = 2
      DataField = 'NOMB_PROD_ETAPA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object boto_color: TdfsColorButton
      Left = 112
      Top = 57
      Width = 130
      Height = 30
      Caption = 'Color del estado'
      TabOrder = 3
      OtherBtnCaption = '&Más'
      OtherColor = clBtnFace
      PaletteColors.XSize = 4
      PaletteColors.YSize = 5
      PaletteColors.Colors = (
        16777215
        255
        65280
        16711680
        12572607
        0
        127
        32512
        8323072
        15712159
        12566463
        65535
        16776960
        16711935
        15726591
        8355711
        32639
        8355584
        8323199
        10461087)
      CustomColors.XSize = 8
      CustomColors.YSize = 2
      CustomColors.Colors = (
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215)
      Color = clBtnFace
      OnColorChange = boto_colorColorChange
    end
    object PCPLookUpComboEdit1: TPCPLookUpComboEdit
      Left = 112
      Top = 91
      Width = 130
      Height = 21
      DropDownCount = 8
      DataField = 'USUA_RESPONSABLE'
      DataSource = data_ventana
      KeyField = 'user_name'
      ListField = 'user_name'
      ListSource = data_usuarios
      TabOrder = 4
      DirectInput = False
    end
    object dxDBSpinEdit1: TdxDBSpinEdit
      Left = 112
      Top = 118
      Width = 57
      TabOrder = 5
      DataField = 'DURA_ESTIMADA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 363
  end
  inherited Tabla_Ventana: TTable
    TableName = 'PCP_PROD_ETAPAS'
    object Tabla_VentanaCONS_PROD_ETAPA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_PROD_ETAPA'
      Required = True
    end
    object Tabla_VentanaCODI_PROD_ETAPA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODI_PROD_ETAPA'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_PROD_ETAPA: TStringField
      DisplayLabel = 'Nombre etapa'
      FieldName = 'NOMB_PROD_ETAPA'
      Required = True
      Size = 60
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaCOLOR: TIntegerField
      DisplayLabel = 'Color'
      FieldName = 'COLOR'
    end
    object Tabla_VentanaUSUA_RESPONSABLE: TStringField
      DisplayLabel = 'Responsable:'
      FieldName = 'USUA_RESPONSABLE'
    end
    object Tabla_VentanaDURA_ESTIMADA: TIntegerField
      DisplayLabel = 'Duración (días):'
      FieldName = 'DURA_ESTIMADA'
    end
  end
  object data_usuarios: TDataSource
    DataSet = _fMDI.tabl_usuarios
    Left = 392
    Top = 62
  end
end

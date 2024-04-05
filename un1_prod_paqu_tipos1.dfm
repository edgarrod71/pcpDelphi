inherited fn1_prod_paqu_tipos1: Tfn1_prod_paqu_tipos1
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_info: TPanel
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
    Tag = 67
    Left = 0
    Top = 54
    Width = 557
    Height = 67
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
      Caption = 'Código:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CODI_PROD_PAQU_TIPO'
      Field = 'CODI_PROD_PAQU_TIPO'
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
      FocusControl = dxDBEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tipo distribución:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_PROD_PAQU_TIPO'
      Field = 'NOMB_PROD_PAQU_TIPO'
    end
    object dxDBEdit1: TdxDBEdit
      Left = 110
      Top = 8
      Width = 130
      TabOrder = 1
      DataField = 'CODI_PROD_PAQU_TIPO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 110
      Top = 28
      Width = 260
      TabOrder = 2
      DataField = 'NOMB_PROD_PAQU_TIPO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
  end
  inherited Tabla_Ventana: TTable
    TableName = 'PCP_PROD_PAQU_TIPOS'
    object Tabla_VentanaCONS_PROD_PAQU_TIPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_PROD_PAQU_TIPO'
      Required = True
    end
    object Tabla_VentanaCODI_PROD_PAQU_TIPO: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 12
      FieldName = 'CODI_PROD_PAQU_TIPO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_PROD_PAQU_TIPO: TStringField
      DisplayLabel = 'Tipo distribución:'
      FieldName = 'NOMB_PROD_PAQU_TIPO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
end

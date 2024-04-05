inherited fn1_meto_comp_variaciones1: Tfn1_meto_comp_variaciones1
  Left = 30
  Top = 36
  Width = 812
  Height = 612
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 788
  end
  inherited padr_shap_xp_down: TShape
    Top = 599
    Width = 788
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 788
  end
  inherited padr_pane_arriba: TPanel
    Width = 788
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 788
    inherited padr_beve_1: TBevel
      Width = 757
    end
    inherited padr_sepa_new: TShape
      Width = 782
    end
  end
  inherited padr_pane_info: TPanel
    Top = 608
    Width = 788
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
    Width = 788
    Height = 555
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
      DataField = 'CODI_COMP_VARIACION'
      Field = 'CODI_COMP_VARIACION'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 10
      Top = 48
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
      Caption = 'Nombre variación:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_COMP_VARIACION'
      Field = 'NOMB_COMP_VARIACION'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 0
      Top = 28
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
      FocusControl = PCPLookUpComboEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Grupo componente:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_COMP_GRUPO'
      Field = 'CONS_COMP_GRUPO'
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 10
      Top = 68
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
      Caption = 'Descripción:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'DESCRIPCION'
      Field = 'DESCRIPCION'
    end
    object labe_imagen: THTMLabel
      Left = 434
      Top = 7
      Width = 375
      Height = 17
      ColorTo = clNone
      AnchorHint = False
      AutoSizing = False
      AutoSizeType = asVertical
      Ellipsis = False
      GradientType = gtFullHorizontal
      HintShowFull = False
      Hover = False
      HoverColor = clNone
      HoverFontColor = clNone
      HTMLHint = False
      LineWidth = 0
      ShadowColor = clGray
      ShadowOffset = 2
      URLColor = clBlue
      VAlignment = tvaTop
      Version = '1.7.1.1'
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 8
      Top = 168
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
      Caption = 'Esquema costura:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object dxDBEdit1: TdxDBEdit
      Left = 112
      Top = 8
      Width = 121
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_COMP_VARIACION'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 112
      Top = 48
      Width = 185
      TabOrder = 2
      DataField = 'NOMB_COMP_VARIACION'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object PCPLookUpComboEdit1: TPCPLookUpComboEdit
      Left = 112
      Top = 28
      Width = 185
      Height = 21
      DropDownCount = 8
      DataField = 'CONS_COMP_GRUPO'
      DataSource = data_ventana
      KeyField = 'cons_comp_grupo'
      ListField = 'nomb_comp_grupo'
      ListSource = data_comp_grupos
      TabOrder = 1
      OnChange = darTamanoFoto
      DirectInput = False
    end
    object dxDBMemo1: TdxDBMemo
      Left = 112
      Top = 68
      Width = 305
      TabOrder = 3
      DataField = 'DESCRIPCION'
      DataSource = data_ventana
      StyleController = padr_estilo
      Height = 89
    end
    inline pane_imagen: Tffra_fotografiaDB
      Left = 430
      Top = 24
      Width = 379
      Height = 449
      TabOrder = 4
      inherited fram_pane_atras: TPanel
        Width = 379
        Height = 423
        BorderWidth = 0
        inherited fram_fotografia: TEDBImage
          Left = 0
          Top = 0
          Width = 379
          Height = 400
          DataField = 'IMAGEN'
          DataSource = data_ventana
        end
        inherited fram_pane_stretch: TPanel
          Left = 0
          Top = 400
          Width = 379
          Visible = False
          inherited fram_chec_ajustar: TdxDBCheckEdit
            Caption = 'Ajustar'
            DataField = 'AJUS_IMAGEN'
            DataSource = data_ventana
          end
        end
      end
      inherited TBXDock1: TTBXDock
        Width = 379
        inherited TBXToolbar1: TTBXToolbar
          DockPos = -8
        end
      end
    end
    inline ffra_fotografiaDB2: Tffra_fotografiaDB
      Left = 112
      Top = 168
      Width = 121
      Height = 60
      TabOrder = 5
      inherited fram_pane_atras: TPanel
        Width = 121
        Height = 34
        BorderWidth = 0
        inherited fram_fotografia: TEDBImage
          Left = 0
          Top = 0
          Width = 121
          Height = 11
          DataField = 'IMAG_ESQU_COSTURA'
          DataSource = data_ventana
        end
        inherited fram_pane_stretch: TPanel
          Left = 0
          Top = 11
          Width = 121
          Visible = False
          inherited fram_chec_ajustar: TdxDBCheckEdit
            Caption = 'Ajustar'
            DataField = 'AJUS_IMAG_ESQU_COSTURA'
            DataSource = data_ventana
          end
        end
      end
      inherited TBXDock1: TTBXDock
        Width = 121
        inherited TBXToolbar1: TTBXToolbar
          DockPos = -8
        end
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 600
    Width = 788
    inherited padr_beve_abajo: TBevel
      Width = 782
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 788
  end
  inherited Tabla_Ventana: TTable
    TableName = 'PCP_COMP_VARIACIONES'
    object Tabla_VentanaCONS_COMP_VARIACION: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_COMP_VARIACION'
      Required = True
    end
    object Tabla_VentanaCONS_COMP_GRUPO: TIntegerField
      DisplayLabel = 'Grupo componente:'
      FieldName = 'CONS_COMP_GRUPO'
      Required = True
    end
    object Tabla_VentanaCODI_COMP_VARIACION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODI_COMP_VARIACION'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_COMP_VARIACION: TStringField
      DisplayLabel = 'Nombre variación'
      FieldName = 'NOMB_COMP_VARIACION'
      Required = True
      Size = 60
    end
    object Tabla_VentanaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      FixedChar = True
      Size = 250
    end
    object Tabla_VentanaIMAGEN: TBlobField
      FieldName = 'IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object Tabla_VentanaAJUS_IMAGEN: TIntegerField
      FieldName = 'AJUS_IMAGEN'
    end
    object Tabla_VentanaIMAG_ESQU_COSTURA: TBlobField
      FieldName = 'IMAG_ESQU_COSTURA'
      BlobType = ftBlob
      Size = 1
    end
    object Tabla_VentanaAJUS_IMAG_ESQU_COSTURA: TIntegerField
      FieldName = 'AJUS_IMAG_ESQU_COSTURA'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
  object quer_comp_grupos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_comp_grupo, nomb_comp_grupo, alto, ancho'
      'from pcp_comp_grupos'
      'order by nomb_comp_grupo')
    Left = 394
    Top = 20
    object quer_comp_gruposCONS_COMP_GRUPO: TIntegerField
      FieldName = 'CONS_COMP_GRUPO'
    end
    object quer_comp_gruposNOMB_COMP_GRUPO: TStringField
      FieldName = 'NOMB_COMP_GRUPO'
      Size = 60
    end
    object quer_comp_gruposALTO: TIntegerField
      FieldName = 'ALTO'
    end
    object quer_comp_gruposANCHO: TIntegerField
      FieldName = 'ANCHO'
    end
  end
  object data_comp_grupos: TDataSource
    DataSet = quer_comp_grupos
    Left = 426
    Top = 20
  end
end

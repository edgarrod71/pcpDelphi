inherited fn1_meto_comp_grupos1: Tfn1_meto_comp_grupos1
  Left = 17
  Top = 40
  Width = 812
  Height = 612
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 576
    Width = 804
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 54
    Width = 804
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
      DataField = 'CODI_COMP_GRUPO'
      Field = 'CODI_COMP_GRUPO'
    end
    object SCLDBLabel2: TSCLDBLabel
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
      FocusControl = dxDBEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Grupo componentes:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_COMP_GRUPO'
      Field = 'NOMB_COMP_GRUPO'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 55
      Width = 100
      Height = 113
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
      CharCase = ecUpperCase
      DataField = 'CODI_COMP_GRUPO'
      DataSource = data_ventana
      MaxLength = 2
      StyleController = padr_estilo
      StoredValues = 2
    end
    object dxDBEdit2: TdxDBEdit
      Left = 112
      Top = 28
      Width = 201
      TabOrder = 1
      DataField = 'NOMB_COMP_GRUPO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBMemo1: TdxDBMemo
      Left = 112
      Top = 55
      Width = 353
      TabOrder = 2
      DataField = 'OBSERVACIONES'
      DataSource = data_ventana
      StyleController = padr_estilo
      Height = 113
    end
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 804
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 575
    Width = 804
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
    Top = 577
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 804
  end
  object PCPFrame1: TPCPFrame [9]
    Tag = 392
    Left = 0
    Top = 233
    Width = 804
    Height = 342
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
    TabOrder = 7
    Caption = 'Tamaño de las imágenes (pixels)'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    object SCLDBLabel4: TSCLDBLabel
      Left = 12
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
      FocusControl = spin_ancho
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Ancho:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 12
      Top = 52
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
      FocusControl = Spin_Alto
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Alto:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object tama_imagen: TPCPFrame
      Tag = 200
      Left = 200
      Top = 30
      Width = 200
      Height = 200
      BorderWidth = 2
      Color = clWhite
      Constraints.MinHeight = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnResize = tama_imagenResize
      Titulo_Color = 16244694
      TipoFrame = tfNinguno
      FlatBorder = True
      object HTMLabel1: THTMLabel
        Left = 3
        Top = 3
        Width = 194
        Height = 173
        Align = alClient
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
        HTMLText.Strings = (
          
            '<P align="center"><B>Vista previa de la imágen</B><BR><BR><IMG s' +
            'rc="1">  Puede cambiar el tamaño de la vista previa directamente' +
            ' sobre este componente, utilizando el ratón en una de las esquin' +
            'as.<BR><BR>Debe estar en EDICIÓN para cambiar el tamaño.')
        LineWidth = 0
        PictureContainer = padr_pict_container
        ShadowColor = clGray
        ShadowOffset = 2
        URLColor = clBlue
        VAlignment = tvaTop
        Version = '1.7.1.1'
      end
      object Panel2: TPanel
        Left = 3
        Top = 191
        Width = 194
        Height = 6
        Align = alBottom
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 1
        object ima: TImage
          Left = 188
          Top = 0
          Width = 6
          Height = 6
          Align = alRight
          AutoSize = True
          Picture.Data = {
            07544269746D6170AE000000424DAE0000000000000036000000280000000600
            0000060000000100180000000000780000000000000000000000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF00000000
            0000000000FFFFFF0000FFFFFFFFFFFFFFFFFF000000000000FFFFFF0000FFFF
            FFFFFFFF000000FFFFFF000000FFFFFF0000FFFFFF000000FFFFFFFFFFFFFFFF
            FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
          Visible = False
        end
      end
      object Panel3: TPanel
        Left = 3
        Top = 176
        Width = 194
        Height = 15
        Align = alBottom
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 2
        object tamano: THTMLabel
          Left = 0
          Top = 0
          Width = 194
          Height = 15
          Align = alClient
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
          HTMLText.Strings = (
            '<P align="center">%s</P>')
          LineWidth = 0
          ShadowColor = clGray
          ShadowOffset = 2
          URLColor = clBlue
          VAlignment = tvaTop
          Version = '1.7.1.1'
        end
      end
    end
    object spin_ancho: TdxDBSpinEdit
      Left = 114
      Top = 32
      Width = 65
      TabOrder = 2
      DataField = 'ANCHO'
      DataSource = data_ventana
      StyleController = padr_estilo
      OnChange = CambiarTamanoImagen
      MaxValue = 2000
      MinValue = 50
      StoredValues = 48
    end
    object Spin_Alto: TdxDBSpinEdit
      Left = 114
      Top = 52
      Width = 65
      TabOrder = 3
      DataField = 'ALTO'
      DataSource = data_ventana
      StyleController = padr_estilo
      OnChange = CambiarTamanoImagen
      MaxValue = 2000
      MinValue = 50
      StoredValues = 48
    end
  end
  inherited Tabla_Ventana: TTable
    TableName = 'PCP_COMP_GRUPOS'
    object Tabla_VentanaCONS_COMP_GRUPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_COMP_GRUPO'
      Required = True
    end
    object Tabla_VentanaCODI_COMP_GRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODI_COMP_GRUPO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_COMP_GRUPO: TStringField
      DisplayLabel = 'Grupo componentes'
      FieldName = 'NOMB_COMP_GRUPO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 5000
    end
    object Tabla_VentanaALTO: TIntegerField
      FieldName = 'ALTO'
    end
    object Tabla_VentanaANCHO: TIntegerField
      FieldName = 'ANCHO'
    end
  end
end

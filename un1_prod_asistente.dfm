inherited fn1_prod_asistente: Tfn1_prod_asistente
  Left = 42
  Top = 139
  Width = 812
  Height = 551
  Caption = 'Orden de producción :'
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape [0]
    Left = 0
    Top = 54
    Width = 1
    Height = 461
    Align = alLeft
    Pen.Color = clBtnShadow
  end
  object dfsSplitter1: TdfsSplitter [1]
    Left = 185
    Top = 54
    Height = 461
    Cursor = crHSplit
    Align = alLeft
    MinSize = 1
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object arbol: TsohoExpertTree [2]
    Left = 1
    Top = 54
    Width = 184
    Height = 461
    Align = alLeft
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      '1'
      '2')
    ItemIndex = 0
    LineColor = clBtnShadow
    BoxColor = clBtnFace
    HorizontalSpace = 5
    VerticalSpace = 6
    BoxHeight = 12
    BoxWidth = 12
    LeftMargin = 0
    OnChange = arbolChange
  end
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 515
    Width = 804
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 804
    inherited padr_beve_1: TBevel
      Width = 898
    end
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 516
    Width = 804
    Height = 0
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
  object panel1: TPanel [9]
    Left = 195
    Top = 54
    Width = 609
    Height = 461
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 6
    object Titulos: TJvgWizardHeader
      Left = 0
      Top = 98
      Width = 609
      Height = 21
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      CommentFont.Charset = DEFAULT_CHARSET
      CommentFont.Color = clWindowText
      CommentFont.Height = -11
      CommentFont.Name = 'MS Sans Serif'
      CommentFont.Style = []
      SymbolFont.Charset = DEFAULT_CHARSET
      SymbolFont.Color = clHighlightText
      SymbolFont.Height = -35
      SymbolFont.Name = 'Wingdings'
      SymbolFont.Style = [fsBold]
      PageNo = 0
      Comments.Strings = (
        '')
      Gradient.FromColor = clHighlight
      Gradient.ToColor = clWindow
      Gradient.Active = True
      Gradient.Orientation = fgdVertical
      BufferedDraw = False
    end
    object PCPFrame1: TPCPFrame
      Tag = 98
      Left = 0
      Top = 0
      Width = 609
      Height = 98
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
      TabOrder = 0
      Caption = 'Información de la orden de producción'
      Titulo_Color = 16244694
      object padr_SCLDBLabel1: TSCLDBLabel
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
        FocusControl = padr_dxDBEdit1
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'No. orden:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object padr_SCLDBLabel2: TSCLDBLabel
        Left = 570
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
        FocusControl = padr_dxDBEdit2
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Fecha creación:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object padr_SCLDBLabel3: TSCLDBLabel
        Left = 10
        Top = 50
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
        FocusControl = padr_dxDBEdit3
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Usuario:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object padr_scllabel4: TSCLDBLabel
        Left = 270
        Top = 50
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
        FocusControl = padr_dxDBEdit4
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Referencia:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object padr_scllabel5: TSCLDBLabel
        Left = 570
        Top = 50
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
        FocusControl = padr_dxDBEdit5
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'C.I.R.:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object padr_scllabel6: TSCLDBLabel
        Left = 10
        Top = 73
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
        FocusControl = padr_dxDBEdit6
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Variación:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object padr_scllabel7: TSCLDBLabel
        Left = 270
        Top = 73
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
        FocusControl = padr_dxDBEdit7
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Nombre referencia:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object padr_dxDBEdit1: TdxDBEdit
        Left = 112
        Top = 26
        Width = 130
        Enabled = False
        TabOrder = 1
        DataField = 'NUME_PROD_ORDEN'
        DataSource = data_ventana
        StyleController = padr_estilo
      end
      object padr_dxDBEdit2: TdxDBEdit
        Left = 672
        Top = 26
        Width = 130
        Enabled = False
        TabOrder = 2
        DataField = 'FECH_SISTEMA'
        DataSource = data_ventana
        StyleController = padr_estilo
      end
      object padr_dxDBEdit3: TdxDBEdit
        Left = 112
        Top = 50
        Width = 130
        Enabled = False
        TabOrder = 3
        DataField = 'USUA_SISTEMA'
        DataSource = data_ventana
        StyleController = padr_estilo
      end
      object padr_dxDBEdit4: TdxDBEdit
        Left = 372
        Top = 50
        Width = 130
        Enabled = False
        TabOrder = 4
        DataField = 'CODI_REFERENCIA'
        DataSource = padr_data_prod_referencias
        StyleController = padr_estilo
      end
      object padr_dxDBEdit5: TdxDBEdit
        Left = 672
        Top = 50
        Width = 130
        Enabled = False
        TabOrder = 5
        DataField = 'CODI_INTE_REFERENCIA'
        DataSource = padr_data_prod_referencias
        StyleController = padr_estilo
      end
      object padr_dxDBEdit6: TdxDBEdit
        Left = 112
        Top = 73
        Width = 130
        Enabled = False
        TabOrder = 6
        DataField = 'NOMB_REFE_TIPO_VARIACION'
        DataSource = padr_data_prod_referencias
        StyleController = padr_estilo
      end
      object padr_dxDBEdit7: TdxDBEdit
        Left = 372
        Top = 73
        Width = 260
        Enabled = False
        TabOrder = 7
        DataField = 'NOMB_REFERENCIA'
        DataSource = padr_data_prod_referencias
        StyleController = padr_estilo
      end
      object comb_nume_orden: TPCPLookUpComboEdit
        Left = 112
        Top = 26
        Width = 130
        Height = 21
        DropDownCount = 8
        EscapeClear = False
        Ctl3D = False
        KeyField = 'cons_prod_orden'
        ListField = 'nume_prod_orden'
        ListSource = data_ventana
        ParentCtl3D = False
        TabOrder = 8
        OnChange = comb_nume_ordenChange
        DirectInput = False
      end
    end
    object pane_contenedor: TPanel
      Left = 0
      Top = 119
      Width = 609
      Height = 342
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 2
      Caption = '<- Seleccione una de las etapas en el árbol de avance'
      TabOrder = 1
    end
  end
  object list_consecutivos: TListBox [10]
    Left = 16
    Top = 112
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 7
    Visible = False
  end
  inherited pane_beve_abajo: TPanel
    Top = 516
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 804
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Visible = False
    end
    inherited acti_padr_cancelar_2: TAction
      Visible = False
    end
    inherited padr_acti_nuevo: TDataSetInsert
      Visible = False
    end
    inherited padr_acti_guar_cerrar: TDataSetPost
      Visible = False
    end
    object acti_anterior: TAction
      Caption = 'Anterior'
      ShortCut = 16422
    end
    object acti_siguiente: TAction
      Caption = 'Siguente'
      ShortCut = 16424
    end
  end
  inherited Tabla_Ventana: TTable
    TableName = 'PCP_PROD_ORDENES'
    object Tabla_VentanaCONS_PROD_ORDEN: TIntegerField
      FieldName = 'CONS_PROD_ORDEN'
      Required = True
    end
    object Tabla_VentanaNUME_PROD_ORDEN: TStringField
      FieldName = 'NUME_PROD_ORDEN'
      Required = True
      Size = 12
    end
    object Tabla_VentanaANULADA: TIntegerField
      FieldName = 'ANULADA'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
  inherited padr_estilo: TdxEditStyleController
    Left = 602
    Top = 10
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController
    Left = 642
    Top = 10
  end
  inherited padr_esti_panel: TAdvPanelStyler
    Left = 722
    Top = 26
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler
    Left = 722
    Top = 10
  end
  inherited padr_pict_container: TPictureContainer
    Left = 682
    Top = 13
  end
  object padr_quer_prod_referencias: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Select * from'
      'vis_pcp_prod_orde_referencias'
      'where cons_prod_orden = :cons_prod_orden'
      'order by cons_referencia')
    Left = 800
    Top = 65534
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_ORDEN'
        ParamType = ptUnknown
      end>
  end
  object padr_data_prod_referencias: TDataSource
    DataSet = padr_quer_prod_referencias
    Left = 800
    Top = 26
  end
  object quer_avance: TQuery
    AfterOpen = quer_avanceAfterOpen
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select * from con_pcp_procesos'
      'order by cons_consulta')
    Left = 857
    Top = 94
  end
end

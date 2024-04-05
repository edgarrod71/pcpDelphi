inherited fn1_cont_nove_defectos: Tfn1_cont_nove_defectos
  Left = 25
  Top = 100
  Width = 812
  Height = 612
  Caption = 'Novedades de calidad'
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 584
    Width = 804
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
    Height = 45
    inherited padr_barra: TTBXToolbar
      object TBControlItem1: TTBControlItem [0]
        Control = Panel1
      end
      inherited padr_boto_vinculos: TTBXSubmenuItem
        Images = _fMDI.imag_grandes
        LinkSubitems = _fMDI.menu_control_produccion
        Visible = True
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 61
        Height = 41
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 2
          Top = 2
          Width = 57
          Height = 13
          Caption = 'Imprimir en:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edit_impr_en: TdxEdit
          Left = 2
          Top = 16
          Width = 57
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = False
          Text = 'LPT1'
          StyleController = padr_estilo
        end
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 48
    Width = 804
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 576
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
  inherited pane_beve_abajo: TPanel
    Top = 576
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 157
    Width = 804
  end
  object fram_seleccion: TPCPFrame [8]
    Tag = 102
    Left = 0
    Top = 55
    Width = 804
    Height = 102
    Align = alTop
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Caption = 'Información del tiquete'
    Titulo_Color = 16244694
    FlatBorder = True
    object SCLDBLabel1: TSCLDBLabel
      Left = 16
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
      FocusControl = comb_prod_orden
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Orden producción:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 264
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
      FocusControl = comb_nume_lote
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Lote:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 16
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
      FocusControl = comb_secu_operacion
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Operación:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 16
      Top = 72
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
      FocusControl = comb_nume_paquete
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Paquete:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 496
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
      FocusControl = dxDBEdit1
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
    object SCLDBLabel6: TSCLDBLabel
      Left = 496
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
      FocusControl = dxDBEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tipo de paqueteo:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object comb_prod_orden: TPCPLookUpComboEdit
      Left = 118
      Top = 32
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_PROD_ORDEN'
      DataSource = data_ventana
      KeyField = 'cons_prod_orden'
      ListField = 'nume_prod_orden'
      ListSource = data_prod_ordenes
      ParentCtl3D = False
      TabOrder = 1
      OnChange = doCambiarOrden
      DirectInput = False
    end
    object comb_nume_lote: TPCPLookUpComboEdit
      Left = 366
      Top = 32
      Width = 69
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_PROD_LOTE'
      DataSource = data_ventana
      Enabled = False
      KeyField = 'cons_prod_lote'
      ListField = 'nume_lote'
      ListSource = data_prod_lotes
      ParentCtl3D = False
      TabOrder = 2
      OnChange = doCambiarLote
      DirectInput = False
    end
    object dxDBEdit1: TdxDBEdit
      Tag = -1
      Left = 598
      Top = 32
      Width = 129
      Enabled = False
      TabOrder = 3
      DataField = 'CODI_REFERENCIA'
      DataSource = data_prod_ordenes
      StyleController = padr_estilo
    end
    object comb_secu_operacion: TPCPLookUpComboEdit
      Left = 118
      Top = 52
      Width = 317
      Height = 21
      DropDownCount = 8
      DisplayAllFields = True
      Ctl3D = True
      DataField = 'SECU_OPERACION'
      DataSource = data_ventana
      Enabled = False
      KeyField = 'secu_operacion'
      ListField = 'secu_oper_texto;nomb_oper_costura'
      ListSource = data_operaciones
      ParentCtl3D = False
      TabOrder = 4
      OnChange = doCambiarOperacion
      DirectInput = False
    end
    object dxDBEdit2: TdxDBEdit
      Tag = -1
      Left = 598
      Top = 52
      Width = 129
      Enabled = False
      TabOrder = 6
      DataField = 'NOMB_PROD_PAQU_TIPO'
      DataSource = data_prod_paqu_tipo
      StyleController = padr_estilo
    end
    object comb_nume_paquete: TPCPLookUpComboEdit
      Left = 118
      Top = 72
      Width = 73
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'NUME_PAQUETE'
      DataSource = data_ventana
      Enabled = False
      KeyField = 'nume_paquete'
      ListField = 'NUME_PAQU_TEXTO'
      ListSource = data_paquetes
      ParentCtl3D = False
      TabOrder = 5
      OnChange = doCambiarPaquete
      OnExit = comb_nume_paqueteExit
      DirectInput = False
    end
    object pane_hide_referencia: TPanel
      Left = 600
      Top = 34
      Width = 125
      Height = 17
      TabOrder = 7
    end
    object pane_hide_tipo_paqueteo: TPanel
      Left = 600
      Top = 54
      Width = 125
      Height = 17
      TabOrder = 8
    end
    object boto_buscar: TTBXButtonSCL
      Left = 193
      Top = 74
      Width = 17
      Height = 20
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 4
      Images = _fMDI.imagenesPCP
      TabOrder = 9
      TabStop = False
      OnClick = doCambiarPaquete
    end
  end
  object pane_info: TPanel [9]
    Left = 0
    Top = 159
    Width = 804
    Height = 417
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 7
    Visible = False
    object pane_info_operario: TPCPFrame
      Tag = 143
      Left = 0
      Top = 0
      Width = 804
      Height = 143
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
      Caption = 'Datos del operario que elaboró la operación'
      Titulo_Color = 16244694
      FlatBorder = True
      object SCLDBLabel7: TSCLDBLabel
        Left = 16
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
        FocusControl = dxDBEdit3
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Código:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object SCLDBLabel8: TSCLDBLabel
        Left = 263
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
        FocusControl = dxDBEdit4
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Nombres:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object SCLDBLabel9: TSCLDBLabel
        Left = 16
        Top = 46
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
        Caption = 'Fecha:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object SCLDBLabel10: TSCLDBLabel
        Left = 16
        Top = 94
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
        Caption = 'Empresa:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object SCLDBLabel11: TSCLDBLabel
        Left = 374
        Top = 90
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
        FocusControl = dxDBEdit7
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Planta:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object SCLDBLabel12: TSCLDBLabel
        Left = 517
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
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Unidades:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object SCLDBLabel13: TSCLDBLabel
        Left = 16
        Top = 114
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
        FocusControl = dxDBEdit9
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Línea:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object SCLDBLabel14: TSCLDBLabel
        Left = 374
        Top = 110
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
        FocusControl = dxDBEdit10
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Sección:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object dxDBEdit3: TdxDBEdit
        Left = 118
        Top = 26
        Width = 121
        Enabled = False
        TabOrder = 1
        DataField = 'CODI_PERSONAL'
        DataSource = data_info_personal
        StyleController = padr_estilo
      end
      object dxDBEdit4: TdxDBEdit
        Left = 365
        Top = 26
        Width = 360
        Enabled = False
        TabOrder = 2
        DataField = 'NOMB_COMPLETO'
        DataSource = data_info_personal
        StyleController = padr_estilo
      end
      object dxDBEdit5: TdxDBEdit
        Left = 118
        Top = 46
        Width = 185
        Enabled = False
        TabOrder = 3
        DataField = 'FECH_LECTURA'
        DataSource = data_info_personal
        StyleController = padr_estilo
      end
      object dxDBEdit6: TdxDBEdit
        Left = 118
        Top = 94
        Width = 249
        Enabled = False
        TabOrder = 4
        DataField = 'NOMB_EMPRESA'
        DataSource = data_info_personal
        StyleController = padr_estilo
      end
      object dxDBEdit7: TdxDBEdit
        Left = 476
        Top = 90
        Width = 249
        Enabled = False
        TabOrder = 5
        DataField = 'NOMB_PLANTA'
        DataSource = data_info_personal
        StyleController = padr_estilo
      end
      object dxDBEdit8: TdxDBEdit
        Left = 620
        Top = 50
        Width = 105
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        DataField = 'CANT_UNIDADES'
        DataSource = data_info_personal
        StyleController = padr_estilo
      end
      object dxDBEdit9: TdxDBEdit
        Left = 118
        Top = 114
        Width = 249
        Enabled = False
        TabOrder = 7
        DataField = 'NOMB_LINEA'
        DataSource = data_info_personal
        StyleController = padr_estilo
      end
      object dxDBEdit10: TdxDBEdit
        Left = 476
        Top = 110
        Width = 249
        Enabled = False
        TabOrder = 8
        DataField = 'NOMB_SECCION'
        DataSource = data_info_personal
        StyleController = padr_estilo
      end
    end
    inline pane_mens_no_leido: Tffra_mens_atencion
      Top = 143
      Width = 804
      Height = 20
      TabOrder = 1
      Visible = False
      inherited padr_shap_top: TShape
        Width = 804
      end
      inherited padr_shap_bottom: TShape
        Top = 19
        Width = 804
      end
      inherited padr_shap_right: TShape
        Left = 803
        Height = 18
      end
      inherited padr_shap_left: TShape
        Height = 18
      end
      inherited fram_label: TAdvPanel
        Width = 802
        Height = 18
        Text = '<IMG src="3">  El tiquete no ha sido reportado!'
        FullHeight = 18
      end
    end
    object pane_edicion: TPCPFrame
      Tag = 115
      Left = 0
      Top = 189
      Width = 804
      Height = 115
      Align = alTop
      BorderWidth = 2
      Constraints.MinHeight = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnEnter = doIniciarCapturaReproceso
      Caption = 'Información del defecto'
      Titulo_Color = 16244694
      FlatBorder = True
      object SCLDBLabel15: TSCLDBLabel
        Left = 16
        Top = 27
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
        FocusControl = fech_reproceso
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Fecha reproceso:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object SCLDBLabel16: TSCLDBLabel
        Left = 16
        Top = 47
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
        Caption = 'Código defecto:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object SCLDBLabel17: TSCLDBLabel
        Left = 16
        Top = 67
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
        FocusControl = edit_unidades
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Unidades:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object SCLDBLabel18: TSCLDBLabel
        Left = 16
        Top = 86
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
        FocusControl = comb_codi_operario
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Código operario:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object fech_reproceso: TdxDBDateEdit
        Left = 118
        Top = 27
        Width = 130
        TabOrder = 1
        OnEnter = doIniciarCapturaReproceso
        DataField = 'FECH_DEFECTO'
        DataSource = data_ventana
        StyleController = padr_estilo
        DateOnError = deToday
        DateValidation = True
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object edit_unidades: TdxDBCurrencyEdit
        Left = 118
        Top = 67
        Width = 51
        TabOrder = 4
        OnEnter = doIniciarCapturaReproceso
        OnKeyDown = doGuardarConEnter
        Alignment = taRightJustify
        DataField = 'CANT_UNID_DEFECTUOSAS'
        DataSource = data_ventana
        StyleController = padr_estilo
        DisplayFormat = ',0'
        Nullable = False
        StoredValues = 1
      end
      object comb_codi_operario: TPCPLookUpComboEdit
        Left = 118
        Top = 86
        Width = 131
        Height = 21
        DropDownCount = 8
        DataField = 'CONS_PERS_ASIGNADO'
        DataSource = data_ventana
        KeyField = 'cons_personal'
        ListField = 'codi_personal'
        ListSource = data_pers_codigo
        TabOrder = 5
        DirectInput = False
      end
      object comb_nomb_operario: TPCPLookUpComboEdit
        Tag = -15
        Left = 248
        Top = 86
        Width = 297
        Height = 21
        DropDownCount = 8
        DataField = 'CONS_PERS_ASIGNADO'
        DataSource = data_ventana
        KeyField = 'cons_personal'
        ListField = 'nomb_completo'
        ListSource = data_pers_nombre
        TabOrder = 6
        OnKeyDown = doGuardarConEnter
        DirectInput = False
      end
      object comb_defecto: TPCPLookUpComboEdit
        Left = 118
        Top = 47
        Width = 130
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        Ctl3D = True
        DataField = 'CONS_CALI_DEFECTO'
        DataSource = data_ventana
        KeyField = 'CONS_CALI_DEFECTO'
        ListField = 'CODI_CALI_DEFECTO'
        ListSource = data_defe_codigo
        ParentCtl3D = False
        TabOrder = 2
        OnEnter = doIniciarCapturaReproceso
        DirectInput = False
      end
      object comb_nomb_defecto: TPCPLookUpComboEdit
        Left = 247
        Top = 47
        Width = 297
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        Ctl3D = True
        DataField = 'CONS_CALI_DEFECTO'
        DataSource = data_ventana
        KeyField = 'CONS_CALI_DEFECTO'
        ListField = 'NOMB_CALI_DEFECTO'
        ListSource = data_defe_nombre
        ParentCtl3D = False
        TabOrder = 3
        OnEnter = doIniciarCapturaReproceso
        DirectInput = False
      end
    end
    object dock: TTBXDock
      Left = 0
      Top = 163
      Width = 804
      Height = 26
      object menu_ventana: TTBXToolbar
        Left = 0
        Top = 0
        BorderStyle = bsNone
        DockPos = 8
        DragHandleStyle = dhNone
        FullSize = True
        Images = _fMDI.imagenesPCP
        TabOrder = 0
        object TBXItem3: TTBXItem
          Action = acti_guardar
          DisplayMode = nbdmImageAndText
        end
        object TBXItem2: TTBXItem
          Action = acti_cancelar
          DisplayMode = nbdmImageAndText
        end
        object TBXSeparatorItem1: TTBXSeparatorItem
        end
        object TBXItem1: TTBXItem
          Action = acti_imprimir
          DisplayMode = nbdmImageAndText
        end
        object TBXSeparatorItem2: TTBXSeparatorItem
        end
        object TBXItem4: TTBXItem
          Action = acti_eliminar
          DisplayMode = nbdmImageAndText
        end
      end
    end
    object PCPFrame1: TPCPFrame
      Tag = 121
      Left = 0
      Top = 304
      Width = 804
      Height = 113
      Align = alClient
      BorderWidth = 2
      Constraints.MinHeight = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Caption = 'Defectos reportados'
      Titulo_Color = 16244694
      BorderWidthIn = 4
      FlatBorder = True
      object grid: TSCLDBGrid
        Left = 7
        Top = 26
        Width = 790
        Height = 80
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CONS_CONT_NOVE_DEFE_FABRICACION'
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ArrowsColor = clHighlight
        AutoSearchColor = 4227327
        AutoSearchTextColor = clBlack
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = data_defe_reportados
        Filter.Criteria = {00000000}
        GridLineColor = 14467501
        GroupPanelColor = 13265692
        GroupPanelFontColor = clWhite
        GroupNodeColor = 15982803
        GroupNodeTextColor = 8072450
        HeaderColor = 16578290
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = 8072450
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = []
        HideFocusRect = True
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object gridCONS_CONT_NOVE_DEFE_FABRICACION: TdxDBGridMaskColumn
          Width = 68
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_CONT_NOVE_DEFE_FABRICACION'
        end
        object gridFECH_DEFECTO: TdxDBGridDateColumn
          Width = 199
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FECH_DEFECTO'
        end
        object gridCONS_CALI_DEFECTO: TdxDBGridMaskColumn
          Visible = False
          Width = 127
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_CALI_DEFECTO'
        end
        object gridCODI_CALI_DEFECTO: TdxDBGridMaskColumn
          Width = 118
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODI_CALI_DEFECTO'
          SummaryFooterType = cstCount
          SummaryFooterFormat = ',0'
        end
        object gridNOMB_CALI_DEFECTO: TdxDBGridMaskColumn
          Width = 291
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_CALI_DEFECTO'
        end
        object gridCANT_UNID_DEFECTUOSAS: TdxDBGridMaskColumn
          Width = 58
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CANT_UNID_DEFECTUOSAS'
          SummaryFooterType = cstSum
          SummaryFooterField = 'CANT_UNID_DEFECTUOSAS'
          SummaryFooterFormat = ',0'
        end
        object gridUSUA_SISTEMA: TdxDBGridMaskColumn
          Width = 114
          BandIndex = 0
          RowIndex = 0
          FieldName = 'USUA_SISTEMA'
        end
      end
    end
  end
  inherited data_ventana: TDataSource
    DataSet = myTabla_Ventana
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_guardar: TDataSetPost
      Enabled = True
      Visible = False
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Enabled = True
      Visible = False
    end
    inherited acti_padr_cancelar_2: TAction
      Visible = False
    end
    inherited padr_acti_nuevo: TDataSetInsert
      Visible = False
      DataSource = data_defe_codigo
    end
    inherited padr_acti_modificar: TDataSetEdit
      Enabled = True
      DataSource = data_defe_codigo
    end
    inherited padr_acti_eliminar: TDataSetDelete
      Enabled = True
      DataSource = data_defe_codigo
    end
    inherited padr_acti_duplicar: TAction
      Visible = False
    end
    inherited padr_acti_elim_todos: TAction
      Visible = False
    end
    inherited padr_acti_guar_cerrar: TDataSetPost
      Enabled = True
      Visible = False
    end
  end
  object quer_prod_ordenes: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PROD_ORDEN, NUME_PROD_ORDEN, CODI_REFERENCIA'
      'FROM VIS_PCP_PROD_ORDE_ACTIVAS'
      'WHERE ANULADA = -1'
      'AND FINALIZADO = -1'
      'ORDER BY NUME_PROD_ORDEN')
    Left = 456
    Top = 56
  end
  object data_prod_ordenes: TDataSource
    DataSet = quer_prod_ordenes
    Left = 456
    Top = 84
  end
  object myTabla_Ventana: TRxMemoryData
    FieldDefs = <>
    AfterInsert = myTabla_VentanaAfterInsert
    BeforePost = myTabla_VentanaBeforePost
    Left = 250
    Top = 7
    object myTabla_VentanaCONS_PROD_ORDEN: TIntegerField
      FieldName = 'CONS_PROD_ORDEN'
    end
    object myTabla_VentanaCONS_PROD_LOTE: TIntegerField
      FieldName = 'CONS_PROD_LOTE'
    end
    object myTabla_VentanaSECU_OPERACION: TIntegerField
      FieldName = 'SECU_OPERACION'
    end
    object myTabla_VentanaCONS_PROCESO: TIntegerField
      FieldName = 'CONS_PROCESO'
    end
    object myTabla_VentanaCONS_PROD_PAQU_TIPO: TIntegerField
      FieldName = 'CONS_PROD_PAQU_TIPO'
    end
    object myTabla_VentanaNUME_PAQUETE: TIntegerField
      FieldName = 'NUME_PAQUETE'
    end
    object myTabla_VentanaFECH_DEFECTO: TDateField
      FieldName = 'FECH_DEFECTO'
    end
    object myTabla_VentanaCONS_CALI_DEFECTO: TIntegerField
      FieldName = 'CONS_CALI_DEFECTO'
    end
    object myTabla_VentanaCANT_UNID_DEFECTUOSAS: TIntegerField
      FieldName = 'CANT_UNID_DEFECTUOSAS'
    end
    object myTabla_VentanaCONS_CONT_NOVE_DIARIA: TIntegerField
      FieldName = 'CONS_CONT_NOVE_DIARIA'
    end
    object myTabla_VentanaCONS_PERS_ASIGNADO: TIntegerField
      FieldName = 'CONS_PERS_ASIGNADO'
    end
  end
  object quer_prod_lotes: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT CONS_PROD_LOTE, '
      'CAST(NUME_LOTE AS VARCHAR(10)) AS NUME_LOTE'
      'FROM PCP_PROD_LOTES'
      'WHERE CONS_PROD_ORDEN = :CONS_PROD_ORDEN'
      'ORDER BY NUME_LOTE')
    Left = 484
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PROD_ORDEN'
        ParamType = ptUnknown
      end>
  end
  object data_prod_lotes: TDataSource
    DataSet = quer_prod_lotes
    Left = 484
    Top = 84
  end
  object quer_operaciones: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT OPER.SECU_OPERACION, '
      'CAST (OPER.SECU_OPERACION AS VARCHAR(12)) AS SECU_OPER_TEXTO,'
      'OPER.CODI_OPER_COSTURA, OPER.NOMB_OPER_COSTURA, '
      'OPER.TIEMPO, OPER.FRECUENCIA, OPER.ES_TITULO, '
      'OPER.COST_OPERACION'
      'FROM PCP_PROD_LIST_OPER_COSTURA OPER'
      'WHERE OPER.CONS_PROD_LOTE = :CONS_PROD_LOTE'
      'ORDER BY OPER.SECU_OPERACION')
    Left = 512
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_LOTE'
        ParamType = ptUnknown
      end>
  end
  object data_operaciones: TDataSource
    DataSet = quer_operaciones
    Left = 512
    Top = 84
  end
  object quer_prod_paqu_Tipo: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_operaciones
    SQL.Strings = (
      'SELECT CONS_PROD_PAQU_TIPO, NOMB_PROD_PAQU_TIPO'
      'FROM VIS_PCP_OPER_COST_PAQU_TIPO'
      'WHERE CODI_OPER_COSTURA = :CODI_OPER_COSTURA')
    Left = 540
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODI_OPER_COSTURA'
        ParamType = ptUnknown
      end>
  end
  object data_prod_paqu_tipo: TDataSource
    DataSet = quer_prod_paqu_Tipo
    Left = 540
    Top = 84
  end
  object quer_paquetes: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT NUME_PAQUETE, CANT_UNIDADES,'
      'CAST(NUME_PAQUETE AS VARCHAR(12)) AS NUME_PAQU_TEXTO'
      'FROM PCP_PROD_DIST_PAQUETES'
      'WHERE CONS_PROD_LOTE = :CONS_PROD_LOTE'
      'AND CONS_PROCESO = :CONS_PROCESO'
      'AND CONS_PROD_PAQU_TIPO = :CONS_PROD_PAQU_TIPO'
      'ORDER BY NUME_PAQUETE')
    Left = 568
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PROD_LOTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PROCESO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PROD_PAQU_TIPO'
        ParamType = ptUnknown
      end>
  end
  object data_paquetes: TDataSource
    DataSet = quer_paquetes
    Left = 568
    Top = 84
  end
  object quer_info_personal: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT CONS_CONT_NOVE_TIQU_FABRICACION, CONS_CONT_NOVE_DIARIA,'
      '    CANT_UNIDADES, CODI_BARRAS, CONS_PERSONAL, CODI_PERSONAL,'
      '    NOMB_COMPLETO,'
      '    FECH_LECTURA, NUME_LECTURA, NOMB_EMPRESA,'
      '    NOMB_PLANTA, NOMB_LINEA, NOMB_SECCION,'
      '    CODI_TURNO, TIPO_TURNO'
      'FROM VIS_PCP_CONT_NOVE_TIQU_FABR_UB'
      'WHERE CONS_PROD_LOTE = :CONS_PROD_LOTE'
      'AND CONS_PROD_PAQU_TIPO = :CONS_PROD_PAQU_TIPO'
      'AND NUME_PAQUETE = :NUME_PAQUETE'
      'AND SECU_OPERACION = :SECU_OPERACION')
    Left = 528
    Top = 124
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_LOTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CONS_PROD_PAQU_TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'NUME_PAQUETE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'SECU_OPERACION'
        ParamType = ptUnknown
      end>
  end
  object data_info_personal: TDataSource
    DataSet = quer_info_personal
    Left = 560
    Top = 124
  end
  object quer_defe_codigo: TQuery
    BeforeInsert = doIgnorarAcciones
    BeforeEdit = doIgnorarAcciones
    BeforeDelete = doIgnorarAcciones
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_CALI_DEFECTO, CODI_CALI_DEFECTO'
      'FROM PCP_CALI_DEFECTOS'
      'ORDER BY CODI_CALI_DEFECTO')
    Left = 616
    Top = 276
  end
  object data_defe_codigo: TDataSource
    DataSet = quer_defe_codigo
    Left = 648
    Top = 276
  end
  object acci_ventana: TActionList
    Images = _fMDI.imagenesPCP
    OnUpdate = acci_ventanaUpdate
    Left = 864
    Top = 212
    object acti_guardar: TAction
      Caption = 'Guardar'
      ImageIndex = 5
      ShortCut = 16455
      OnExecute = acti_guardarExecute
    end
    object acti_cancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 8
      ShortCut = 16449
      OnExecute = acti_cancelarExecute
    end
    object acti_imprimir: TAction
      Caption = 'Imprimir tiquete'
      ImageIndex = 10
      ShortCut = 16464
      OnExecute = acti_imprimirExecute
    end
    object acti_eliminar: TAction
      Caption = 'Eliminar defecto'
      ImageIndex = 2
      OnExecute = acti_eliminarExecute
    end
  end
  object quer_guardar: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'EXECUTE PROCEDURE PRO_PCP_CONT_NOVE_DEFE_FABR_I'
      '('
      ':CONS_CALI_DEFECTO,'
      ':CONS_PROD_LOTE,'
      ':CONS_PROCESO,'
      ':CONS_PROD_PAQU_TIPO,'
      ':NUME_PAQUETE,'
      ':SECU_OPERACION,'
      ':FECH_DEFECTO,'
      ':CONS_CONT_NOVE_DIARIA,'
      ':CONS_PERS_ASIGNADO,'
      ':CANT_UNID_DEFECTUOSAS)')
    Left = 864
    Top = 276
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_CALI_DEFECTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PROD_LOTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PROCESO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PROD_PAQU_TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUME_PAQUETE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SECU_OPERACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECH_DEFECTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_CONT_NOVE_DIARIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PERS_ASIGNADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANT_UNID_DEFECTUOSAS'
        ParamType = ptUnknown
      end>
  end
  object quer_defe_reportados: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT *'
      'FROM VIS_PCP_CONT_NOVE_DEFE_FABR_BA'
      'WHERE CONS_PROD_LOTE = :CONS_PROD_LOTE'
      'AND NUME_PAQUETE = :NUME_PAQUETE'
      'AND SECU_OPERACION = :SECU_OPERACION'
      'ORDER BY FECH_DEFECTO')
    Left = 864
    Top = 308
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_LOTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'NUME_PAQUETE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'SECU_OPERACION'
        ParamType = ptUnknown
      end>
    object quer_defe_reportadosCONS_CONT_NOVE_DEFE_FABRICACION: TIntegerField
      DisplayLabel = 'Consecutivo'
      FieldName = 'CONS_CONT_NOVE_DEFE_FABRICACION'
      Origin = 
        'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.CONS_CONT_NOVE_DEFE' +
        '_FABRICACION'
    end
    object quer_defe_reportadosFECH_DEFECTO: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_DEFECTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.FECH_DEFECTO'
    end
    object quer_defe_reportadosCONS_CALI_DEFECTO: TIntegerField
      FieldName = 'CONS_CALI_DEFECTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.CONS_CALI_DEFECTO'
    end
    object quer_defe_reportadosCODI_CALI_DEFECTO: TStringField
      DisplayLabel = 'Cód. defecto'
      FieldName = 'CODI_CALI_DEFECTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.CODI_CALI_DEFECTO'
      Size = 12
    end
    object quer_defe_reportadosNOMB_CALI_DEFECTO: TStringField
      DisplayLabel = 'Defecto'
      FieldName = 'NOMB_CALI_DEFECTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.NOMB_CALI_DEFECTO'
      Size = 60
    end
    object quer_defe_reportadosCANT_UNID_DEFECTUOSAS: TIntegerField
      DisplayLabel = 'Unidades'
      FieldName = 'CANT_UNID_DEFECTUOSAS'
      Origin = 
        'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.CANT_UNID_DEFECTUOS' +
        'AS'
    end
    object quer_defe_reportadosUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.USUA_SISTEMA'
    end
  end
  object data_defe_reportados: TDataSource
    DataSet = quer_defe_reportados
    Left = 896
    Top = 308
  end
  object quer_pers_codigo: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PERSONAL, CODI_PERSONAL'
      'FROM CON_GLO_PERS_ACTIVO('#39'NOW'#39')'
      'ORDER BY CODI_PERSONAL')
    Left = 866
    Top = 385
  end
  object data_pers_codigo: TDataSource
    DataSet = quer_pers_codigo
    Left = 904
    Top = 385
  end
  object quer_pers_nombre: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PERSONAL, NOMB_COMPLETO'
      'FROM CON_GLO_PERS_ACTIVO('#39'NOW'#39')'
      'ORDER BY NOMB_COMPLETO')
    Left = 866
    Top = 417
  end
  object data_pers_nombre: TDataSource
    DataSet = quer_pers_nombre
    Left = 904
    Top = 417
  end
  object quer_defe_nombre: TQuery
    BeforeInsert = doIgnorarAcciones
    BeforeEdit = doIgnorarAcciones
    BeforeDelete = doIgnorarAcciones
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_CALI_DEFECTO, NOMB_CALI_DEFECTO'
      'FROM PCP_CALI_DEFECTOS'
      'ORDER BY NOMB_CALI_DEFECTO')
    Left = 616
    Top = 308
  end
  object data_defe_nombre: TDataSource
    DataSet = quer_defe_nombre
    Left = 648
    Top = 308
  end
  object quer_eliminar: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_defe_reportados
    SQL.Strings = (
      'DELETE FROM'
      'PCP_CONT_NOVE_DEFE_FABRICACION'
      
        'WHERE CONS_CONT_NOVE_DEFE_FABRICACION = :CONS_CONT_NOVE_DEFE_FAB' +
        'RICACION')
    Left = 864
    Top = 449
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_CONT_NOVE_DEFE_FABRICACION'
        ParamType = ptUnknown
      end>
  end
end

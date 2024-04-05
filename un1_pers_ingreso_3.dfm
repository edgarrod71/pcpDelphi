inherited fn1_pers_ingreso_3: Tfn1_pers_ingreso_3
  Left = 127
  Top = 103
  Width = 812
  Height = 536
  Caption = 'Ingreso de personal'
  Color = clBtnFace
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 500
    Width = 804
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 66
    Width = 804
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 499
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
    Top = 501
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 73
    Width = 804
  end
  object Page: TAdvPageControl [8]
    Left = 0
    Top = 75
    Width = 804
    Height = 424
    ActivePage = page_docu_entrada
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    Align = alClient
    BiDiMode = bdLeftToRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Images = _fMDI.imagenesPCP
    ParentBiDiMode = False
    ParentFont = False
    TabSheetBorderColor = clRed
    TabBackGroundColor = clBtnFace
    TabMargin.LeftMargin = 10
    TabMargin.RightMargin = 0
    TabOverlap = 0
    TabStyle = tsDotNet
    Version = '1.5.0.2'
    TabHeight = 21
    TabOrder = 6
    object page_docu_entrada: TAdvTabSheet
      Caption = 'Documento de entrada'
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 52
      TabColor = clBtnFace
      TabColorTo = clNone
      object SCLDBLabel40: TSCLDBLabel
        Left = 24
        Top = 11
        Width = 137
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
        FocusControl = comb_tipo_documento
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Tipo Documento Ingreso:'
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
        Field = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      end
      object SCLDBLabel42: TSCLDBLabel
        Left = 354
        Top = 11
        Width = 112
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
        FocusControl = edit_nume_documento
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Número Documento:'
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'NUME_DOCUMENTO'
        Field = 'NUME_DOCUMENTO'
      end
      object SCLDBLabel64: TSCLDBLabel
        Left = 48
        Top = 31
        Width = 113
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
        FocusControl = edit_Fech_ingreso
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Fecha de ingreso:'
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'FECH_INICIAL'
        Field = 'FECH_INICIAL'
      end
      object SCLDBLabel17: TSCLDBLabel
        Left = 24
        Top = 59
        Width = 137
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
        FocusControl = edit_soli_por
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Solicitado Por:'
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CONS_SOLICITA'
        Field = 'CONS_SOLICITA'
      end
      object SCLDBLabel39: TSCLDBLabel
        Left = 24
        Top = 79
        Width = 137
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
        FocusControl = edit_apro_por
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Aprobado Por:'
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CONS_APROBO'
        Field = 'CONS_APROBO'
      end
      object SCLDBLabel68: TSCLDBLabel
        Left = 48
        Top = 115
        Width = 113
        Height = 102
        Alive = True
        ColorActive = clBtnFace
        FontActive.Charset = DEFAULT_CHARSET
        FontActive.Color = clWindowText
        FontActive.Height = -11
        FontActive.Name = 'Tahoma'
        FontActive.Style = []
        FocusOffset = 2
        Position = wlpLeft
        FocusControl = edit_observaciones
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
      object SCLDBLabel5: TSCLDBLabel
        Left = 8
        Top = 229
        Width = 153
        Height = 21
        Alive = True
        ColorActive = 15726584
        FontActive.Charset = DEFAULT_CHARSET
        FontActive.Color = clWindowText
        FontActive.Height = -11
        FontActive.Name = 'Tahoma'
        FontActive.Style = []
        FocusOffset = 2
        Position = wlpLeft
        FocusControl = edit_Codigo
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Código del operario:'
        Color = 15726584
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        DataSource = data_memo_generales
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CODI_PERSONAL'
        Field = 'CODI_PERSONAL'
      end
      object comb_tipo_documento: TPCPLookUpComboEdit
        Left = 163
        Top = 11
        Width = 145
        Height = 21
        DropDownCount = 8
        DataField = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
        DataSource = data_ventana
        KeyField = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
        ListField = 'NOMB_PERS_MOVI_TIPO_DOCUMENTO'
        ListSource = Data_Tipo_Documento_Movimiento
        TabOrder = 0
        DirectInput = False
      end
      object SCLButton27: TTBXButtonSCL
        Left = 313
        Top = 10
        Width = 20
        Height = 20
        AllowAllUnchecked = True
        BorderSize = 2
        ButtonStyle = bsFlat
        Enabled = False
        ImageIndex = 0
        Images = Imagenes_Botones_Pequenos
        SmartFocus = False
        TabOrder = 1
        TabStop = False
      end
      object edit_nume_documento: TdxDBEdit
        Left = 468
        Top = 11
        Width = 119
        TabOrder = 2
        DataField = 'NUME_DOCUMENTO'
        DataSource = data_ventana
        StyleController = padr_estilo
      end
      object edit_Fech_ingreso: TdxDBDateEdit
        Left = 163
        Top = 31
        Width = 121
        TabOrder = 3
        AutoSize = False
        DataField = 'FECH_INICIAL'
        DataSource = data_ventana
        StyleController = padr_estilo
        SaveTime = False
        UseEditMask = True
        Height = 21
        StoredValues = 4
      end
      object edit_soli_por: TPCPLookUpComboEdit
        Left = 163
        Top = 59
        Width = 424
        Height = 21
        DropDownCount = 8
        DataField = 'CONS_SOLICITA'
        DataSource = data_ventana
        KeyField = 'CONS_PERSONAL'
        ListField = 'NOMB_COMPLETO'
        ListSource = data_pers_responsable
        TabOrder = 4
        DirectInput = False
      end
      object edit_apro_por: TPCPLookUpComboEdit
        Left = 163
        Top = 79
        Width = 424
        Height = 21
        DropDownCount = 8
        DataField = 'CONS_APROBO'
        DataSource = data_ventana
        KeyField = 'CONS_PERSONAL'
        ListField = 'NOMB_COMPLETO'
        ListSource = data_pers_responsable
        TabOrder = 5
        DirectInput = False
      end
      object edit_observaciones: TdxDBMemo
        Left = 163
        Top = 115
        Width = 424
        TabOrder = 6
        DataField = 'OBSERVACIONES'
        DataSource = data_ventana
        StyleController = padr_estilo
        Height = 102
      end
      object edit_Codigo: TdxDBEdit
        Left = 163
        Top = 229
        Width = 145
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnExit = edit_CodigoExit
        DataField = 'CODI_PERSONAL'
        DataSource = data_memo_generales
        StyleController = padr_estilo
      end
    end
    object page_generales: TAdvTabSheet
      Caption = 'Datos generales'
      Color = clBtnFace
      ColorTo = clNone
      Enabled = False
      ImageIndex = 56
      TabColor = clBtnFace
      TabColorTo = clNone
      object SCLDBLabel1: TSCLDBLabel
        Left = 56
        Top = 14
        Width = 97
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
        FocusControl = edit_Codi_personal
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Código:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        DataSource = data_memo_generales
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CODI_PERSONAL'
        Field = 'CODI_PERSONAL'
      end
      object SCLDBLabel2: TSCLDBLabel
        Left = 56
        Top = 42
        Width = 97
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
        Caption = 'Primer Apellido:'
        Transparent = True
        DataSource = data_memo_generales
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'PRIM_APELLIDO'
        Field = 'PRIM_APELLIDO'
      end
      object SCLDBLabel3: TSCLDBLabel
        Left = 56
        Top = 62
        Width = 97
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
        FocusControl = dxDBEdit3
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Segundo Apellido:'
        Transparent = True
        DataSource = data_memo_generales
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'SEGU_APELLIDO'
        Field = 'SEGU_APELLIDO'
      end
      object SCLDBLabel4: TSCLDBLabel
        Left = 56
        Top = 82
        Width = 97
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
        FocusControl = dxDBEdit4
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Nombres:'
        Transparent = True
        DataSource = data_memo_generales
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'NOMBRES'
        Field = 'NOMBRES'
      end
      object SCLDBLabel41: TSCLDBLabel
        Left = 56
        Top = 126
        Width = 97
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
        FocusControl = PCPLookUpComboEdit18
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Sexo:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CONS_SEXO'
        Field = 'CONS_SEXO'
      end
      object SCLDBLabel43: TSCLDBLabel
        Left = 56
        Top = 146
        Width = 97
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
        FocusControl = PCPLookUpComboEdit19
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Estado Civil:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CONS_ESTA_CIVIL'
        Field = 'CONS_ESTA_CIVIL'
      end
      object SCLDBLabel69: TSCLDBLabel
        Left = 56
        Top = 166
        Width = 97
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
        FocusControl = dxDBEdit8
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'No. Hijos'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'NUME_HIJOS'
        Field = 'NUME_HIJOS'
      end
      object edit_Codi_personal: TdxDBEdit
        Left = 155
        Top = 14
        Width = 145
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        DataField = 'CODI_PERSONAL'
        DataSource = data_memo_generales
        StyleController = padr_estilo
      end
      object dxDBEdit2: TdxDBEdit
        Left = 155
        Top = 42
        Width = 145
        TabOrder = 1
        DataField = 'PRIM_APELLIDO'
        DataSource = data_memo_generales
        StyleController = padr_estilo
      end
      object dxDBEdit3: TdxDBEdit
        Left = 155
        Top = 62
        Width = 145
        TabOrder = 2
        DataField = 'SEGU_APELLIDO'
        DataSource = data_memo_generales
        StyleController = padr_estilo
      end
      object dxDBEdit4: TdxDBEdit
        Left = 155
        Top = 82
        Width = 145
        TabOrder = 3
        DataField = 'NOMBRES'
        DataSource = data_memo_generales
        StyleController = padr_estilo
      end
      inline ffra_fotografiaDB1: Tffra_fotografiaDB
        Left = 328
        Top = 9
        Width = 265
        Height = 287
        TabOrder = 4
        inherited fram_pane_atras: TPanel
          Width = 265
          Height = 261
          inherited fram_fotografia: TEDBImage
            Width = 255
            Height = 228
            DataField = 'IMAGEN'
          end
          inherited fram_pane_stretch: TPanel
            Top = 233
            Width = 255
            inherited fram_chec_ajustar: TdxDBCheckEdit
              DataField = 'AJUS_IMAGEN'
            end
          end
        end
        inherited TBXDock1: TTBXDock
          Width = 265
        end
      end
      object PCPLookUpComboEdit18: TPCPLookUpComboEdit
        Left = 155
        Top = 126
        Width = 145
        Height = 21
        DropDownCount = 8
        DataField = 'CONS_SEXO'
        KeyField = 'CONS_SEXO'
        ListField = 'NOMB_SEXO'
        ListSource = DSQSexos
        TabOrder = 5
        DirectInput = False
      end
      object PCPLookUpComboEdit19: TPCPLookUpComboEdit
        Left = 155
        Top = 146
        Width = 145
        Height = 21
        DropDownCount = 8
        DataField = 'CONS_ESTA_CIVIL'
        KeyField = 'CONS_ESTA_CIVIL'
        ListField = 'NOMB_ESTA_CIVIL'
        ListSource = DSQEstado_Civil
        TabOrder = 6
        DirectInput = False
      end
      object dxDBEdit8: TdxDBEdit
        Left = 155
        Top = 166
        Width = 46
        TabOrder = 7
        DataField = 'NUME_HIJOS'
        StyleController = padr_estilo
      end
    end
    object cxTabSheet1: TAdvTabSheet
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 2
      TabColor = clBtnFace
      TabColorTo = clNone
    end
  end
  inline pane_nomb_completo: Tffra_mens_atencion [9]
    Top = 45
    Width = 804
    Height = 21
    TabOrder = 7
    Visible = False
    inherited padr_shap_top: TShape
      Width = 804
    end
    inherited padr_shap_bottom: TShape
      Top = 20
      Width = 804
    end
    inherited padr_shap_right: TShape
      Left = 803
      Height = 19
    end
    inherited padr_shap_left: TShape
      Height = 19
    end
    inherited fram_label: TAdvPanel
      Width = 802
      Height = 19
      FullHeight = 15
      inherited data_label: TDBText
        Left = 6
        Top = 1
        Width = 68
        Height = 16
        DataField = 'NOMB_COMPLETO'
        DataSource = data_memo_generales
        Font.Height = -13
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited padr_acciones: TActionList [10]
  end
  inherited Imagenes_Botones_Pequenos: TImageList [11]
  end
  inherited Variables: TSCLPropiedadesForm [12]
    NombreAMostrar = 'Personal'
    verBotonesNavegacion = False
  end
  inherited Tabla_Ventana: TTable [13]
  end
  inherited padr_estilo: TdxEditStyleController [14]
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [15]
  end
  inherited padr_esti_panel: TAdvPanelStyler [16]
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [17]
  end
  inherited imag_pequenas: TImageList [18]
  end
  inherited padr_imag_tem1_colo: TImageList [19]
  end
  inherited data_ventana: TDataSource [21]
    DataSet = myTabla_Ventana
  end
  object myTabla_Ventana: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.00 beta'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AfterInsert = myTabla_VentanaAfterInsert
    BeforePost = myTabla_VentanaBeforePost
    AfterPost = myTabla_VentanaAfterPost
    OnPostError = myTabla_VentanaPostError
    Left = 249
    Top = 6
    object myTabla_VentanaCONS_PERSONAL: TIntegerField
      DisplayLabel = 'Personal'
      FieldName = 'CONS_PERSONAL'
    end
    object myTabla_VentanaCONS_PERS_TIPO_MOVIMIENTO: TIntegerField
      DisplayLabel = 'Tipo Movimiento'
      FieldName = 'CONS_PERS_TIPO_MOVIMIENTO'
    end
    object myTabla_VentanaFECH_INICIAL: TDateTimeField
      DisplayLabel = 'Fecha Inicial'
      FieldName = 'FECH_INICIAL'
      Required = True
    end
    object myTabla_VentanaFECH_FINAL: TDateTimeField
      DisplayLabel = 'Fecha Final'
      FieldName = 'FECH_FINAL'
    end
    object myTabla_VentanaCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      Required = True
    end
    object myTabla_VentanaNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Número Documento'
      FieldName = 'NUME_DOCUMENTO'
      Size = 12
    end
    object myTabla_VentanaCONS_SOLICITA: TIntegerField
      DisplayLabel = 'Solicitado Por'
      FieldName = 'CONS_SOLICITA'
    end
    object myTabla_VentanaCONS_APROBO: TIntegerField
      DisplayLabel = 'Aprobado Por'
      FieldName = 'CONS_APROBO'
    end
    object myTabla_VentanaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      DisplayWidth = 240
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
  end
  object data_tipo_docu_ingreso: TDataSource
    AutoEdit = False
    DataSet = quer_tipo_docu_ingreso
    Left = 637
    Top = 393
  end
  object quer_tipo_docu_ingreso: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PERS_TIPO_DOCUMENTO, NOMB_PERS_TIPO_DOCUMENTO'
      'FROM SIS_PERS_TIPO_DOCUMENTO'
      'ORDER BY NOMB_PERS_TIPO_DOCUMENTO')
    Left = 609
    Top = 393
  end
  object DSQPais_Nacimiento: TDataSource
    AutoEdit = False
    DataSet = qpaises_nacimiento
    Left = 637
    Top = 421
  end
  object qpaises_nacimiento: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PAIS, NOMB_PAIS'
      'FROM GLO_PAISES'
      'ORDER BY NOMB_PAIS')
    Left = 609
    Top = 421
  end
  object DSQDepartamento_Nacimiento: TDataSource
    AutoEdit = False
    DataSet = qDepartamentos_nacimiento
    Left = 637
    Top = 449
  end
  object qDepartamentos_nacimiento: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQPais_Nacimiento
    SQL.Strings = (
      'SELECT CONS_PAIS, CONS_DEPARTAMENTO, NOMB_DEPARTAMENTO'
      'FROM GLO_DEPARTAMENTOS'
      'WHERE CONS_PAIS = :CONS_PAIS'
      'ORDER BY NOMB_DEPARTAMENTO')
    Left = 609
    Top = 449
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PAIS'
        ParamType = ptUnknown
      end>
  end
  object DSQCiudades_Nacimiento: TDataSource
    AutoEdit = False
    DataSet = qCiudades_Nacimiento
    Left = 637
    Top = 477
  end
  object qCiudades_Nacimiento: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQDepartamento_Nacimiento
    SQL.Strings = (
      'SELECT CONS_CIUDAD, NOMB_CIUDAD'
      'FROM GLO_CIUDADES'
      'WHERE CONS_DEPARTAMENTO = :CONS_DEPARTAMENTO'
      'ORDER BY NOMB_CIUDAD')
    Left = 609
    Top = 477
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_DEPARTAMENTO'
        ParamType = ptUnknown
      end>
  end
  object data_pers_responsable: TDataSource
    AutoEdit = False
    DataSet = quer_pers_responsable
    Left = 710
    Top = 85
  end
  object quer_pers_responsable: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERSONAL'
      'ORDER BY NOMB_COMPLETO')
    Left = 682
    Top = 85
  end
  object Data_Tipo_Documento_Movimiento: TDataSource
    AutoEdit = False
    DataSet = quer_Tipo_Documento_Movimiento
    Left = 710
    Top = 57
  end
  object quer_Tipo_Documento_Movimiento: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      
        'SELECT CONS_PERS_MOVI_TIPO_DOCUMENTO, NOMB_PERS_MOVI_TIPO_DOCUME' +
        'NTO'
      'FROM GLO_PERS_MOVI_TIPO_DOCUMENTO'
      'ORDER BY NOMB_PERS_MOVI_TIPO_DOCUMENTO')
    Left = 682
    Top = 57
  end
  object DSQSexos: TDataSource
    AutoEdit = False
    DataSet = QSexos
    Left = 712
    Top = 128
  end
  object QSexos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_SEXO, NOMB_SEXO'
      'FROM SIS_SEXOS'
      'ORDER BY NOMB_SEXO')
    Left = 684
    Top = 128
  end
  object DSQEstado_Civil: TDataSource
    AutoEdit = False
    DataSet = QEstado_Civil
    Left = 712
    Top = 156
  end
  object QEstado_Civil: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_ESTA_CIVIL, NOMB_ESTA_CIVIL'
      'FROM SIS_ESTA_CIVIL'
      'ORDER BY NOMB_ESTA_CIVIL')
    Left = 684
    Top = 156
  end
  object quer_veri_codigo: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT COUNT(*) AS CUANTOS'
      'FROM GLO_PERSONAL'
      'WHERE CODI_PERSONAL = :CODI_PERSONAL')
    Left = 8
    Top = 4
    ParamData = <
      item
        DataType = ftString
        Name = 'CODI_PERSONAL'
        ParamType = ptInput
      end>
  end
  object tabl_memo_generales: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.00 beta'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    OnCalcFields = tabl_memo_generalesCalcFields
    Left = 762
    Top = 359
    object tabl_memo_generalesCONS_PERSONAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_PERSONAL'
    end
    object tabl_memo_generalesCODI_PERSONAL: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERSONAL'
      Required = True
      Size = 12
    end
    object tabl_memo_generalesPRIM_APELLIDO: TStringField
      DisplayLabel = 'Primer Apellido'
      FieldName = 'PRIM_APELLIDO'
      Required = True
      Size = 30
    end
    object tabl_memo_generalesSEGU_APELLIDO: TStringField
      DisplayLabel = 'Segundo Apellido'
      FieldName = 'SEGU_APELLIDO'
      Required = True
      Size = 30
    end
    object tabl_memo_generalesNOMBRES: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRES'
      Required = True
      Size = 40
    end
    object tabl_memo_generalesNOMB_COMPLETO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMB_COMPLETO'
      Size = 102
      Calculated = True
    end
  end
  object TGeneral: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.00 beta'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 762
    Top = 387
    object TGeneralCONS_PERSONAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_PERSONAL'
    end
    object TGeneralCONS_PAIS: TIntegerField
      DisplayLabel = 'País Residencia'
      FieldName = 'CONS_PAIS'
      Required = True
    end
    object TGeneralCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'Departamento Residencia'
      FieldName = 'CONS_DEPARTAMENTO'
      Required = True
    end
    object TGeneralCONS_CIUDAD: TIntegerField
      DisplayLabel = 'Ciudad Residencia'
      FieldName = 'CONS_CIUDAD'
      Required = True
    end
    object TGeneralDIRECCION: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRECCION'
      Size = 60
    end
    object TGeneralTELE_RESIDENCIA: TStringField
      DisplayLabel = 'Teléfono Residencia'
      FieldName = 'TELE_RESIDENCIA'
      Size = 30
    end
    object TGeneralTELE_OTRO: TStringField
      DisplayLabel = 'Otro Teléfono'
      FieldName = 'TELE_OTRO'
      Size = 30
    end
    object TGeneralTELE_MOVIL: TStringField
      DisplayLabel = 'Teléfono Movil'
      FieldName = 'TELE_MOVIL'
      Size = 30
    end
    object TGeneralFECH_NACIMIENTO: TDateTimeField
      DisplayLabel = 'Fecha Nacimiento'
      FieldName = 'FECH_NACIMIENTO'
      Required = True
    end
    object TGeneralCONS_PAIS_NACIMIENTO: TIntegerField
      DisplayLabel = 'País Nacimiento'
      FieldName = 'CONS_PAIS_NACIMIENTO'
      Required = True
    end
    object TGeneralCONS_DEPA_NACIMIENTO: TIntegerField
      DisplayLabel = 'Departamento Nacimiento'
      FieldName = 'CONS_DEPA_NACIMIENTO'
      Required = True
    end
    object TGeneralCONS_CIUD_NACIMIENTO: TIntegerField
      DisplayLabel = 'Ciudad Nacimiento'
      FieldName = 'CONS_CIUD_NACIMIENTO'
      Required = True
    end
    object TGeneralCONS_PERS_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'Tipo Documento'
      FieldName = 'CONS_PERS_TIPO_DOCUMENTO'
      Required = True
    end
    object TGeneralNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Número Documento'
      FieldName = 'NUME_DOCUMENTO'
      Required = True
      Size = 12
    end
    object TGeneralFECH_EXPE_DOCUMENTO: TDateTimeField
      DisplayLabel = 'Fecha Expedición Documento'
      FieldName = 'FECH_EXPE_DOCUMENTO'
      Required = True
    end
    object TGeneralLUGA_EXPE_DOCUMENTO: TStringField
      DisplayLabel = 'Lugar Expedición Documento'
      FieldName = 'LUGA_EXPE_DOCUMENTO'
      Required = True
      Size = 30
    end
    object TGeneralNUME_PASAPORTE: TStringField
      DisplayLabel = 'Número Pasaporte'
      FieldName = 'NUME_PASAPORTE'
      Size = 12
    end
    object TGeneralFECH_EXPE_PASAPORTE: TDateTimeField
      DisplayLabel = 'Fecha Expedición Pasaporte'
      FieldName = 'FECH_EXPE_PASAPORTE'
    end
    object TGeneralFECH_VENC_PASAPORTE: TDateTimeField
      DisplayLabel = 'Fecha Vencimiento Pasaporte'
      FieldName = 'FECH_VENC_PASAPORTE'
    end
    object TGeneralLUGA_EXPE_PASAPORTE: TStringField
      DisplayLabel = 'Lugar Expedición Pasaporte'
      FieldName = 'LUGA_EXPE_PASAPORTE'
      Size = 30
    end
    object TGeneralNUME_LIBR_MILITAR: TStringField
      DisplayLabel = 'Número Libreta Militar'
      FieldName = 'NUME_LIBR_MILITAR'
      Size = 12
    end
    object TGeneralFECH_EXPE_LIBR_MILITAR: TDateTimeField
      DisplayLabel = 'Fecha Expedición Libreta Militar'
      FieldName = 'FECH_EXPE_LIBR_MILITAR'
    end
    object TGeneralNUME_SEGU_SOCIAL: TStringField
      DisplayLabel = 'Número Seguro Social'
      FieldName = 'NUME_SEGU_SOCIAL'
      Size = 12
    end
    object TGeneralNUME_HIJOS: TIntegerField
      DisplayLabel = 'Número Hijos'
      FieldName = 'NUME_HIJOS'
      Required = True
    end
    object TGeneralCONS_SEXO: TIntegerField
      DisplayLabel = 'Sexo'
      FieldName = 'CONS_SEXO'
      Required = True
    end
    object TGeneralCONS_ESTA_CIVIL: TIntegerField
      DisplayLabel = 'Estado Civil'
      FieldName = 'CONS_ESTA_CIVIL'
      Required = True
    end
    object TGeneralIMAGEN: TBlobField
      DisplayLabel = 'Imagen'
      FieldName = 'IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object TGeneralAJUS_IMAGEN: TIntegerField
      DisplayLabel = 'Ajustar Imagen'
      FieldName = 'AJUS_IMAGEN'
    end
  end
  object TFamiliares: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.00 beta'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 762
    Top = 415
    object TFamiliaresCONS_PERSONAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_PERSONAL'
    end
    object TFamiliaresCONS_PERS_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'Tipo Documento'
      FieldName = 'CONS_PERS_TIPO_DOCUMENTO'
    end
    object TFamiliaresNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Número Documento'
      FieldName = 'NUME_DOCUMENTO'
    end
    object TFamiliaresPRIM_APELLIDO: TStringField
      DisplayLabel = 'Primer Apellido'
      FieldName = 'PRIM_APELLIDO'
      Required = True
      Size = 30
    end
    object TFamiliaresSEGU_APELLIDO: TStringField
      DisplayLabel = 'Segundo Apellido'
      FieldName = 'SEGU_APELLIDO'
      Required = True
      Size = 30
    end
    object TFamiliaresNOMBRES: TStringField
      DisplayLabel = 'Nombres'
      FieldName = 'NOMBRES'
      Required = True
      Size = 40
    end
    object TFamiliaresCONS_SEXO: TIntegerField
      DisplayLabel = 'Sexo'
      FieldName = 'CONS_SEXO'
      Required = True
    end
    object TFamiliaresCONS_PARENTESCO: TIntegerField
      DisplayLabel = 'Parentesco'
      FieldName = 'CONS_PARENTESCO'
      Required = True
    end
    object TFamiliaresFECH_NACIMIENTO: TDateTimeField
      DisplayLabel = 'Fecha Nacimiento'
      FieldName = 'FECH_NACIMIENTO'
    end
    object TFamiliaresCONS_PAIS: TIntegerField
      DisplayLabel = 'País'
      FieldName = 'CONS_PAIS'
    end
    object TFamiliaresCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'Departamento'
      FieldName = 'CONS_DEPARTAMENTO'
    end
    object TFamiliaresCONS_CIUDAD: TIntegerField
      DisplayLabel = 'Ciudad'
      FieldName = 'CONS_CIUDAD'
    end
    object TFamiliaresDIRECCION: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRECCION'
      Size = 240
    end
    object TFamiliaresTELE_RESIDENCIA: TStringField
      DisplayLabel = 'Teléfono Residencia'
      FieldName = 'TELE_RESIDENCIA'
    end
    object TFamiliaresTELE_OTRO: TStringField
      DisplayLabel = 'Otro Teléfono'
      FieldName = 'TELE_OTRO'
    end
    object TFamiliaresTELE_MOVIL: TStringField
      DisplayLabel = 'Teléfono Movil'
      FieldName = 'TELE_MOVIL'
    end
    object TFamiliaresOCUPACION: TStringField
      DisplayLabel = 'Ocupación'
      FieldName = 'OCUPACION'
      Size = 60
    end
    object TFamiliaresNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Size = 60
    end
    object TFamiliaresDIRE_EMPRESA: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRE_EMPRESA'
      Size = 240
    end
    object TFamiliaresTELE_EMPRESA: TStringField
      DisplayLabel = 'Teléfono Empresa'
      FieldName = 'TELE_EMPRESA'
    end
    object TFamiliaresCORR_ELECTRONICO: TStringField
      DisplayLabel = 'Correo Electrónico'
      FieldName = 'CORR_ELECTRONICO'
      Size = 120
    end
    object TFamiliaresNOMB_SEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldKind = fkLookup
      FieldName = 'NOMB_SEXO'
      LookupDataSet = QSexos
      LookupKeyFields = 'CONS_SEXO'
      LookupResultField = 'NOMB_SEXO'
      KeyFields = 'CONS_SEXO'
      Size = 60
      Lookup = True
    end
    object TFamiliaresNOMB_PARENTESCO: TStringField
      DisplayLabel = 'Parentesco'
      FieldKind = fkLookup
      FieldName = 'NOMB_PARENTESCO'
      LookupKeyFields = 'CONS_PARENTESCO'
      LookupResultField = 'NOMB_PARENTESCO'
      KeyFields = 'CONS_PARENTESCO'
      Size = 60
      Lookup = True
    end
    object TFamiliaresNOMB_PAIS: TStringField
      DisplayLabel = 'País'
      FieldKind = fkLookup
      FieldName = 'NOMB_PAIS'
      LookupKeyFields = 'CONS_PAIS'
      LookupResultField = 'NOMB_PAIS'
      KeyFields = 'CONS_PAIS'
      Size = 60
      Lookup = True
    end
    object TFamiliaresNOMB_DEPARTAMENTO: TStringField
      DisplayLabel = 'Departamento'
      FieldKind = fkLookup
      FieldName = 'NOMB_DEPARTAMENTO'
      LookupKeyFields = 'CONS_DEPARTAMENTO'
      LookupResultField = 'NOMB_DEPARTAMENTO'
      KeyFields = 'CONS_DEPARTAMENTO'
      Size = 60
      Lookup = True
    end
    object TFamiliaresNOMB_CIUDAD: TStringField
      DisplayLabel = 'Ciudad'
      FieldKind = fkLookup
      FieldName = 'NOMB_CIUDAD'
      LookupKeyFields = 'CONS_CIUDAD'
      LookupResultField = 'NOMB_CIUDAD'
      KeyFields = 'CONS_CIUDAD'
      Size = 60
      Lookup = True
    end
    object TFamiliaresNOMB_PERS_TIPO_DOCUMENTO: TStringField
      DisplayLabel = 'Tipo de Documento'
      FieldKind = fkLookup
      FieldName = 'NOMB_PERS_TIPO_DOCUMENTO'
      LookupKeyFields = 'CONS_PERS_TIPO_DOCUMENTO'
      LookupResultField = 'NOMB_PERS_TIPO_DOCUMENTO'
      KeyFields = 'CONS_PERS_TIPO_DOCUMENTO'
      Size = 60
      Lookup = True
    end
    object TFamiliaresFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object TFamiliaresUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
    object TFamiliaresCONS_PERS_FAMILIAR: TIntegerField
      FieldName = 'CONS_PERS_FAMILIAR'
    end
  end
  object TConfidencial: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.00 beta'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 762
    Top = 443
    object TConfidencialCONS_PERS_MOVIMIENTO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERS_MOVIMIENTO'
    end
    object TConfidencialCONS_PERS_NIVE_SALARIAL: TIntegerField
      FieldName = 'CONS_PERS_NIVE_SALARIAL'
      Required = True
    end
    object TConfidencialCONS_PERS_TIPO_CONTRATO: TIntegerField
      FieldName = 'CONS_PERS_TIPO_CONTRATO'
      Required = True
    end
    object TConfidencialNUME_CONTRATO: TStringField
      FieldName = 'NUME_CONTRATO'
      Required = True
    end
    object TConfidencialCONS_PERI_PAGO: TIntegerField
      FieldName = 'CONS_PERI_PAGO'
      Required = True
    end
    object TConfidencialAUXI_TRANSPORTE: TFloatField
      DisplayLabel = 'Auxilio de Transporte'
      FieldName = 'AUXI_TRANSPORTE'
      Required = True
    end
    object TConfidencialAUXI_SALARIAL: TFloatField
      DisplayLabel = 'Auxilio Salarial'
      FieldName = 'AUXI_SALARIAL'
      Required = True
    end
    object TConfidencialVALO_SALARIO: TIntegerField
      DisplayLabel = 'Salario'
      FieldName = 'VALO_SALARIO'
      Required = True
      DisplayFormat = '$ ,0'
    end
    object TConfidencialDIAS_VENC_CONTRATO: TIntegerField
      DisplayLabel = 'Aviso Vencimiento Contrato'
      FieldName = 'DIAS_VENC_CONTRATO'
    end
    object TConfidencialAPLI_INCENTIVO: TIntegerField
      DisplayLabel = 'Aplica Incentivo'
      FieldName = 'APLI_INCENTIVO'
    end
  end
  object TTraslados: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.00 beta'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 762
    Top = 471
    object TTrasladosCONS_PERS_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_PERS_MOVIMIENTO'
    end
    object TTrasladosCONS_EMPRESA: TIntegerField
      FieldName = 'CONS_EMPRESA'
      Required = True
    end
    object TTrasladosCONS_AREA: TIntegerField
      FieldName = 'CONS_AREA'
      Required = True
    end
    object TTrasladosCONS_PLANTA: TIntegerField
      FieldName = 'CONS_PLANTA'
      Required = True
    end
    object TTrasladosCONS_PLAN_LINEA: TIntegerField
      FieldName = 'CONS_PLAN_LINEA'
      Required = True
    end
    object TTrasladosCONS_LINE_SECCION: TIntegerField
      FieldName = 'CONS_LINE_SECCION'
      Required = True
    end
    object TTrasladosCONS_BODEGA: TIntegerField
      FieldName = 'CONS_BODEGA'
      Required = True
    end
    object TTrasladosCONS_TURNO: TIntegerField
      FieldName = 'CONS_TURNO'
      Required = True
    end
    object TTrasladosCONS_UBIC_TIPO: TIntegerField
      DisplayLabel = 'Tipo Ubicación'
      FieldName = 'CONS_UBIC_TIPO'
      Required = True
    end
    object TTrasladosOTRA_UBICACION: TStringField
      DisplayLabel = 'Otra Ubicación'
      FieldName = 'OTRA_UBICACION'
      Size = 60
    end
    object TTrasladosCONS_PERS_CARGO: TIntegerField
      DisplayLabel = 'Cargo'
      FieldName = 'CONS_PERS_CARGO'
      Required = True
    end
    object TTrasladosCONS_PERS_CENT_COSTO: TIntegerField
      DisplayLabel = 'Centro de Costos'
      FieldName = 'CONS_PERS_CENT_COSTO'
      Required = True
    end
    object TTrasladosCONS_COST_GRUPO: TIntegerField
      DisplayLabel = 'Sub - Centro de Costos'
      FieldName = 'CONS_COST_GRUPO'
      Required = True
    end
  end
  object data_memo_generales: TDataSource
    DataSet = tabl_memo_generales
    Left = 794
    Top = 359
  end
  object DSGeneral: TDataSource
    DataSet = TGeneral
    Left = 794
    Top = 387
  end
  object DSFamiliares: TDataSource
    DataSet = TFamiliares
    Left = 794
    Top = 415
  end
  object DSConfidencial: TDataSource
    DataSet = TConfidencial
    Left = 794
    Top = 443
  end
  object DSTraslados: TDataSource
    DataSet = TTraslados
    Left = 794
    Top = 471
  end
end

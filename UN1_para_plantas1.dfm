inherited fn1_para_plantas1: Tfn1_para_plantas1
  Left = 147
  Top = 86
  Width = 748
  Height = 603
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 740
  end
  inherited padr_shap_xp_down: TShape
    Top = 566
    Width = 740
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 740
  end
  inherited padr_pane_arriba: TPanel
    Width = 740
    TabOrder = 2
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 740
    TabOrder = 5
    inherited padr_beve_1: TBevel
      Width = 734
    end
    inherited padr_sepa_new: TShape
      Width = 734
    end
  end
  inherited padr_pane_info: TPanel
    Top = 575
    Width = 740
    inherited _LFecha_Creacion: TSCLDBLabel
      Left = 8
      Top = 414
    end
    inherited _LUsuario: TSCLDBLabel
      Left = 8
      Top = 439
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Left = 110
      Top = 414
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Left = 110
      Top = 439
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object PCPFrame1: TPCPFrame [6]
    Tag = 107
    Left = 0
    Top = 101
    Width = 740
    Height = 107
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
    Caption = 'Pertenece a:'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    object SCLDBLabel3: TSCLDBLabel
      Left = 387
      Top = 24
      Width = 67
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
      FocusControl = dxDBEdit11
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Dirección:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 387
      Top = 44
      Width = 67
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
      FocusControl = dxDBEdit12
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Teléfono 1:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel6: TSCLDBLabel
      Left = 546
      Top = 44
      Width = 64
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
      FocusControl = dxDBEdit13
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Teléfono 2:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel14: TSCLDBLabel
      Left = 387
      Top = 64
      Width = 67
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
      FocusControl = dxDBEdit14
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fax:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel16: TSCLDBLabel
      Left = 546
      Top = 64
      Width = 64
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
      FocusControl = dxDBEdit15
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Movil:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    inline fram_empresa: Tffra_empresa
      Left = 2
      Top = 21
      Width = 382
      Height = 84
      Align = alLeft
      TabOrder = 1
      inherited SCLDBLabel3: TSCLDBLabel
        FontActive.Name = 'Tahoma'
        DataSource = data_ventana
      end
      inherited comb_empresas: TPCPLookUpComboEdit
        DataSource = data_ventana
        OnChange = fram_empresacomb_empresasChange
      end
      inherited SCLButton1: TTBXButtonSCL
        Images = Imagenes_Botones_Pequenos
      end
      inherited fram_ubic_regional: Tffra_ubic_regional
        inherited SCLDBLabel3: TSCLDBLabel
          FontActive.Name = 'Tahoma'
          DataSource = data_ventana
        end
        inherited SCLDBLabel4: TSCLDBLabel
          FontActive.Name = 'Tahoma'
          DataSource = data_ventana
        end
        inherited SCLDBLabel5: TSCLDBLabel
          FontActive.Name = 'Tahoma'
          DataSource = data_ventana
        end
        inherited comb_paises: TPCPLookUpComboEdit
          DataSource = data_ventana
        end
        inherited comb_departamentos: TPCPLookUpComboEdit
          DataSource = data_ventana
        end
        inherited comb_ciudades: TPCPLookUpComboEdit
          DataSource = data_ventana
        end
        inherited SCLButton1: TTBXButtonSCL
          Images = Imagenes_Botones_Pequenos
        end
        inherited SCLButton2: TTBXButtonSCL
          Images = Imagenes_Botones_Pequenos
        end
        inherited SCLButton3: TTBXButtonSCL
          Images = Imagenes_Botones_Pequenos
        end
      end
    end
    object dxDBEdit11: TdxDBEdit
      Left = 456
      Top = 24
      Width = 245
      Enabled = False
      TabOrder = 2
      TabStop = False
      DataField = 'DIRECCION'
      DataSource = fram_empresa.data_empresas
      StyleController = padr_estilo
    end
    object dxDBEdit12: TdxDBEdit
      Left = 456
      Top = 44
      Width = 89
      Enabled = False
      TabOrder = 3
      TabStop = False
      DataField = 'TELE_1'
      DataSource = fram_empresa.data_empresas
      StyleController = padr_estilo
    end
    object dxDBEdit13: TdxDBEdit
      Left = 612
      Top = 44
      Width = 89
      Enabled = False
      TabOrder = 4
      TabStop = False
      DataField = 'TELE_2'
      DataSource = fram_empresa.data_empresas
      StyleController = padr_estilo
    end
    object dxDBEdit14: TdxDBEdit
      Left = 456
      Top = 64
      Width = 89
      Enabled = False
      TabOrder = 5
      TabStop = False
      DataField = 'TELE_FAX'
      DataSource = fram_empresa.data_empresas
      StyleController = padr_estilo
    end
    object dxDBEdit15: TdxDBEdit
      Left = 612
      Top = 64
      Width = 89
      Enabled = False
      TabOrder = 6
      TabStop = False
      DataField = 'TELE_MOVIL'
      DataSource = fram_empresa.data_empresas
      StyleController = padr_estilo
    end
  end
  object PCPFrame2: TPCPFrame [7]
    Tag = 238
    Left = 0
    Top = 208
    Width = 740
    Height = 238
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
    TabOrder = 8
    Caption = 'Ubicación de la planta:'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    object SCLDBLabel7: TSCLDBLabel
      Left = 8
      Top = 24
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
      FocusControl = dxDBEdit3
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Dirección:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'DIRECCION'
      Field = 'DIRECCION'
    end
    object SCLDBLabel8: TSCLDBLabel
      Left = 8
      Top = 44
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
      FocusControl = dxDBEdit4
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Teléfono 1:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'TELE_1'
      Field = 'TELE_1'
    end
    object SCLDBLabel10: TSCLDBLabel
      Left = 8
      Top = 64
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
      FocusControl = dxDBEdit6
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fax:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'TELE_FAX'
      Field = 'TELE_FAX'
    end
    object SCLDBLabel12: TSCLDBLabel
      Left = 8
      Top = 104
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
      FocusControl = dxDBEdit8
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Supervisor:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_SUPERVISOR'
      Field = 'NOMB_SUPERVISOR'
    end
    object SCLDBLabel13: TSCLDBLabel
      Left = 8
      Top = 84
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
      FocusControl = dxDBEdit9
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Responsable:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_RESPONSABLE'
      Field = 'NOMB_RESPONSABLE'
    end
    object SCLDBLabel15: TSCLDBLabel
      Left = 8
      Top = 171
      Width = 100
      Height = 58
      Alive = True
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
    object SCLDBLabel4: TSCLDBLabel
      Left = 8
      Top = 129
      Width = 100
      Height = 33
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = DBRadioGroup1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tipo de planta:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'TIPO_PLANTA'
      Field = 'TIPO_PLANTA'
    end
    object SCLDBLabel9: TSCLDBLabel
      Left = 200
      Top = 44
      Width = 59
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
      FocusControl = dxDBEdit5
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Teléfono 2'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'TELE_2'
      Field = 'TELE_2'
    end
    object SCLDBLabel11: TSCLDBLabel
      Left = 200
      Top = 64
      Width = 59
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
      FocusControl = dxDBEdit7
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Móvil:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'TELE_MOVIL'
      Field = 'TELE_MOVIL'
    end
    object dxDBEdit3: TdxDBEdit
      Left = 110
      Top = 24
      Width = 245
      TabOrder = 1
      DataField = 'DIRECCION'
      DataSource = data_ventana
      ReadOnly = False
      StyleController = padr_estilo
      StoredValues = 64
    end
    object dxDBEdit4: TdxDBEdit
      Left = 110
      Top = 44
      Width = 89
      TabOrder = 2
      DataField = 'TELE_1'
      DataSource = data_ventana
      ReadOnly = False
      StyleController = padr_estilo
      StoredValues = 64
    end
    object dxDBEdit6: TdxDBEdit
      Left = 110
      Top = 64
      Width = 89
      TabOrder = 3
      DataField = 'TELE_FAX'
      DataSource = data_ventana
      ReadOnly = False
      StyleController = padr_estilo
      StoredValues = 64
    end
    object dxDBEdit9: TdxDBEdit
      Left = 110
      Top = 84
      Width = 245
      TabOrder = 4
      DataField = 'NOMB_RESPONSABLE'
      DataSource = data_ventana
      ReadOnly = False
      StyleController = padr_estilo
      StoredValues = 64
    end
    object dxDBEdit8: TdxDBEdit
      Left = 110
      Top = 104
      Width = 245
      TabOrder = 5
      Alignment = taLeftJustify
      DataField = 'NOMB_SUPERVISOR'
      DataSource = data_ventana
      ReadOnly = False
      StyleController = padr_estilo
      StoredValues = 65
    end
    object dxDBEdit5: TdxDBEdit
      Left = 261
      Top = 44
      Width = 94
      TabOrder = 6
      DataField = 'TELE_2'
      DataSource = data_ventana
      ReadOnly = False
      StyleController = padr_estilo
      StoredValues = 64
    end
    object dxDBEdit7: TdxDBEdit
      Left = 261
      Top = 64
      Width = 94
      TabOrder = 7
      DataField = 'TELE_MOVIL'
      DataSource = data_ventana
      ReadOnly = False
      StyleController = padr_estilo
      StoredValues = 64
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 110
      Top = 129
      Width = 246
      Height = 33
      Columns = 2
      DataField = 'TIPO_PLANTA'
      DataSource = data_ventana
      Items.Strings = (
        'Interna'
        'Externa')
      TabOrder = 8
      Values.Strings = (
        '0'
        '1')
    end
    object dxDBEdit10: TdxDBEdit
      Left = 110
      Top = 171
      Width = 435
      TabOrder = 9
      AutoSize = False
      DataField = 'DESCRIPCION'
      DataSource = data_ventana
      ReadOnly = False
      StyleController = padr_estilo
      Height = 58
      StoredValues = 64
    end
  end
  object Panel1: TPanel [8]
    Left = 0
    Top = 52
    Width = 740
    Height = 47
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object SCLDBLabel1: TSCLDBLabel
      Left = 8
      Top = 3
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
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CODI_PLANTA'
      Field = 'CODI_PLANTA'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 8
      Top = 23
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
      Caption = 'Planta:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_PLANTA'
      Field = 'NOMB_PLANTA'
    end
    object dxDBEdit1: TdxDBEdit
      Left = 110
      Top = 3
      Width = 89
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_PLANTA'
      DataSource = data_ventana
      ReadOnly = False
      StyleController = padr_estilo
      StoredValues = 64
    end
    object dxDBEdit2: TdxDBEdit
      Left = 110
      Top = 23
      Width = 245
      TabOrder = 1
      DataField = 'NOMB_PLANTA'
      DataSource = data_ventana
      ReadOnly = False
      StyleController = padr_estilo
      StoredValues = 64
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 567
    Width = 740
    inherited padr_beve_abajo: TBevel
      Width = 734
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 99
    Width = 740
    TabOrder = 6
  end
  inherited Imagenes_Botones_Pequenos: TImageList
    Left = 681
    Top = 24
  end
  inherited Variables: TSCLPropiedadesForm
    Left = 680
    Top = 65532
  end
  inherited imag_pequenas: TImageList [16]
    Left = 651
    Top = 26
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [17]
    Left = 682
    Top = 58
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController
    Left = 682
    Top = 90
  end
  inherited padr_esti_panel: TAdvPanelStyler
    Left = 650
    Top = 58
  end
  inherited Tabla_Ventana: TTable [20]
    TableName = 'GLO_PLANTAS'
    object Tabla_VentanaCONS_PLANTA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_PLANTA'
      Required = True
    end
    object Tabla_VentanaCODI_PLANTA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_PLANTA'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta'
      FieldName = 'NOMB_PLANTA'
      Required = True
      Size = 60
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaDIRECCION: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRECCION'
      Size = 240
    end
    object Tabla_VentanaTELE_1: TStringField
      DisplayLabel = 'Teléfono 1'
      FieldName = 'TELE_1'
      Size = 30
    end
    object Tabla_VentanaTELE_2: TStringField
      DisplayLabel = 'Teléfono 2'
      FieldName = 'TELE_2'
      Size = 30
    end
    object Tabla_VentanaTELE_FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'TELE_FAX'
      Size = 30
    end
    object Tabla_VentanaTELE_MOVIL: TStringField
      DisplayLabel = 'Movil'
      FieldName = 'TELE_MOVIL'
      Size = 30
    end
    object Tabla_VentanaTIPO_PLANTA: TIntegerField
      DisplayLabel = 'Tipo Planta'
      FieldName = 'TIPO_PLANTA'
    end
    object Tabla_VentanaDESCRIPCION: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESCRIPCION'
      Size = 240
    end
    object Tabla_VentanaCONS_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'CONS_EMPRESA'
      Required = True
    end
    object Tabla_VentanaCONS_PAIS: TIntegerField
      DisplayLabel = 'País'
      FieldName = 'CONS_PAIS'
      Required = True
    end
    object Tabla_VentanaCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'Departamento'
      FieldName = 'CONS_DEPARTAMENTO'
      Required = True
    end
    object Tabla_VentanaCONS_CIUDAD: TIntegerField
      DisplayLabel = 'Ciudad'
      FieldName = 'CONS_CIUDAD'
      Required = True
    end
    object Tabla_VentanaNOMB_RESPONSABLE: TStringField
      DisplayLabel = 'Responsable'
      FieldName = 'NOMB_RESPONSABLE'
      Size = 60
    end
    object Tabla_VentanaNOMB_SUPERVISOR: TStringField
      DisplayLabel = 'Supervisor'
      FieldName = 'NOMB_SUPERVISOR'
      Size = 60
    end
  end
  inherited padr_estilo: TdxEditStyleController [21]
    Left = 650
    Top = 90
  end
  inherited padr_pict_container: TPictureContainer
    Left = 714
    Top = 93
  end
end

inherited FN1_Para_Empresas1: TFN1_Para_Empresas1
  Left = 149
  Top = 145
  Width = 757
  Height = 515
  ActiveControl = DBCodigo
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object SCLDBLabel6: TSCLDBLabel [0]
    Left = 10
    Top = 222
    Width = 100
    Height = 20
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = DBDireccion
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
  object SCLDBLabel7: TSCLDBLabel [1]
    Left = 0
    Top = 242
    Width = 110
    Height = 21
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = DBRepresentante
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Representante Legal:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'REPR_LEGAL'
    Field = 'REPR_LEGAL'
  end
  object SCLDBLabel8: TSCLDBLabel [2]
    Left = 10
    Top = 262
    Width = 100
    Height = 21
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = DBTelefono1
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
  object SCLDBLabel9: TSCLDBLabel [3]
    Left = 211
    Top = 262
    Width = 60
    Height = 21
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = DBTelefono2
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Teléfono 2:'
    Layout = tlTop
    Transparent = True
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'TELE_2'
    Field = 'TELE_2'
  end
  object SCLDBLabel10: TSCLDBLabel [4]
    Left = 10
    Top = 282
    Width = 100
    Height = 21
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = DBfax
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
  object SCLDBLabel11: TSCLDBLabel [5]
    Left = 211
    Top = 282
    Width = 60
    Height = 21
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = DBMovil
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Movil:'
    Layout = tlTop
    Transparent = True
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'TELE_MOVIL'
    Field = 'TELE_MOVIL'
  end
  object SCLDBLabel12: TSCLDBLabel [6]
    Left = 10
    Top = 302
    Width = 100
    Height = 21
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = DBCorreo
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Correo Electrónico:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CORR_ELECTRONICO'
    Field = 'CORR_ELECTRONICO'
  end
  object SCLDBLabel13: TSCLDBLabel [7]
    Left = 10
    Top = 322
    Width = 100
    Height = 21
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = DBPagina
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Página Web:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'PAGI_WEB'
    Field = 'PAGI_WEB'
  end
  object SCLDBLabel1: TSCLDBLabel [8]
    Left = 10
    Top = 64
    Width = 100
    Height = 21
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = DBCodigo
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
    DataField = 'CODI_EMPRESA'
    Field = 'CODI_EMPRESA'
  end
  object SCLDBLabel2: TSCLDBLabel [9]
    Left = 10
    Top = 84
    Width = 100
    Height = 21
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = DBEmpresa
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Empresa:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_EMPRESA'
    Field = 'NOMB_EMPRESA'
  end
  object SCLDBLabel3: TSCLDBLabel [10]
    Left = 10
    Top = 104
    Width = 100
    Height = 21
    Alive = True
    ColorActive = 16578290
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
    Caption = 'No. identificación:'
    Layout = tlTop
    Transparent = True
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NUME_IDENTIFICACION'
    Field = 'NUME_IDENTIFICACION'
  end
  object SCLDBLabel4: TSCLDBLabel [11]
    Left = 10
    Top = 124
    Width = 100
    Height = 21
    Alive = True
    ColorActive = 16578290
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
    Caption = 'Actividad principal:'
    Layout = tlTop
    Transparent = True
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'ACTI_PRINCIPAL'
    Field = 'ACTI_PRINCIPAL'
  end
  inherited padr_shap_xp_up: TShape
    Width = 749
  end
  inherited padr_shap_xp_down: TShape
    Top = 478
    Width = 749
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 749
  end
  inherited padr_pane_arriba: TPanel
    Width = 749
    TabOrder = 15
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 749
    TabOrder = 18
    inherited padr_beve_1: TBevel
      Width = 636
    end
    inherited padr_sepa_new: TShape
      Width = 743
    end
  end
  inherited padr_pane_info: TPanel
    Top = 487
    Width = 749
    TabOrder = 16
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 364
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 386
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 364
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 386
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object DBDireccion: TdxDBEdit [18]
    Left = 112
    Top = 222
    Width = 257
    TabOrder = 6
    DataField = 'DIRECCION'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object DBRepresentante: TdxDBEdit [19]
    Left = 112
    Top = 242
    Width = 257
    TabOrder = 7
    DataField = 'REPR_LEGAL'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object DBTelefono1: TdxDBEdit [20]
    Left = 112
    Top = 262
    Width = 97
    TabOrder = 8
    DataField = 'TELE_1'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object DBTelefono2: TdxDBEdit [21]
    Left = 273
    Top = 262
    Width = 96
    TabOrder = 9
    DataField = 'TELE_2'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object DBfax: TdxDBEdit [22]
    Left = 112
    Top = 282
    Width = 97
    TabOrder = 10
    DataField = 'TELE_FAX'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object DBMovil: TdxDBEdit [23]
    Left = 273
    Top = 282
    Width = 96
    TabOrder = 11
    DataField = 'TELE_MOVIL'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object DBCorreo: TdxDBEdit [24]
    Left = 112
    Top = 302
    Width = 257
    TabOrder = 12
    DataField = 'CORR_ELECTRONICO'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object DBPagina: TdxDBEdit [25]
    Left = 112
    Top = 322
    Width = 257
    TabOrder = 13
    DataField = 'PAGI_WEB'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object DBCodigo: TdxDBEdit [26]
    Left = 112
    Top = 64
    Width = 97
    TabOrder = 0
    CharCase = ecUpperCase
    DataField = 'CODI_EMPRESA'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object DBEmpresa: TdxDBEdit [27]
    Left = 112
    Top = 84
    Width = 257
    TabOrder = 1
    DataField = 'NOMB_EMPRESA'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  inline fram_ubic_regional: Tffra_ubic_regional [28]
    Left = 10
    Top = 149
    TabOrder = 5
    inherited SCLDBLabel3: TSCLDBLabel
      ColorActive = 16578290
      FontActive.Name = 'Tahoma'
      DataSource = data_ventana
    end
    inherited SCLDBLabel4: TSCLDBLabel
      Left = 16
      Width = 84
      ColorActive = 16578290
      FontActive.Name = 'Tahoma'
      DataSource = data_ventana
    end
    inherited SCLDBLabel5: TSCLDBLabel
      Left = 8
      Width = 92
      ColorActive = 16578290
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
  object dxDBEdit1: TdxDBEdit [29]
    Left = 112
    Top = 104
    Width = 97
    TabOrder = 2
    DataField = 'NUME_IDENTIFICACION'
    DataSource = data_ventana
    MaxLength = 11
    StyleController = padr_estilo
    StoredValues = 2
  end
  object dxDBEdit2: TdxDBEdit [30]
    Left = 208
    Top = 104
    Width = 17
    TabOrder = 3
    DataField = 'DIGI_VERI_NUME_IDENTIFICACION'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object dxDBEdit3: TdxDBEdit [31]
    Left = 112
    Top = 124
    Width = 257
    TabOrder = 4
    DataField = 'ACTI_PRINCIPAL'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  inherited pane_beve_abajo: TPanel [32]
    Top = 479
    Width = 749
    TabOrder = 17
    inherited padr_beve_abajo: TBevel
      Width = 743
    end
  end
  inherited padr_pane_principal: TPanel [33]
    Width = 749
    TabOrder = 19
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [34]
  end
  inherited padr_esti_panel: TAdvPanelStyler [35]
  end
  inherited padr_estilo: TdxEditStyleController [36]
  end
  inherited padr_imag_tem1_colo: TImageList [37]
  end
  inherited padr_quer_consecutivo: TQuery [38]
  end
  inherited data_ventana: TDataSource [39]
  end
  inherited imag_pequenas: TImageList [40]
  end
  inherited Variables: TSCLPropiedadesForm [41]
  end
  inherited padr_acciones: TActionList [42]
  end
  inherited Tabla_Ventana: TTable [43]
    TableName = 'GLO_EMPRESAS'
    object Tabla_VentanaCONS_EMPRESA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_EMPRESA'
      Required = True
    end
    object Tabla_VentanaCODI_EMPRESA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_EMPRESA'
      Required = True
      Size = 12
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Required = True
      Size = 60
    end
    object Tabla_VentanaNUME_IDENTIFICACION: TStringField
      DisplayLabel = 'No. Identificación'
      FieldName = 'NUME_IDENTIFICACION'
    end
    object Tabla_VentanaDIGI_VERI_NUME_IDENTIFICACION: TStringField
      DisplayLabel = 'Dígito de verificación (identificación)'
      FieldName = 'DIGI_VERI_NUME_IDENTIFICACION'
      Size = 1
    end
    object Tabla_VentanaACTI_PRINCIPAL: TStringField
      DisplayLabel = 'Actividad principal'
      FieldName = 'ACTI_PRINCIPAL'
      Size = 60
    end
    object Tabla_VentanaREPR_LEGAL: TStringField
      DisplayLabel = 'Representante legal'
      FieldName = 'REPR_LEGAL'
      Size = 60
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
      DisplayLabel = 'Móvil'
      FieldName = 'TELE_MOVIL'
      Size = 30
    end
    object Tabla_VentanaCORR_ELECTRONICO: TStringField
      DisplayLabel = 'Correo electrónico'
      FieldName = 'CORR_ELECTRONICO'
      Size = 60
    end
    object Tabla_VentanaPAGI_WEB: TStringField
      DisplayLabel = 'Página WEB'
      FieldName = 'PAGI_WEB'
      Size = 60
    end
  end
  inherited Imagenes_Botones_Pequenos: TImageList [44]
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [45]
  end
end

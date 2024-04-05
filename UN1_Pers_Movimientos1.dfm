inherited FN1_Pers_Movimientos1: TFN1_Pers_Movimientos1
  Left = 289
  Top = 172
  Width = 644
  Height = 500
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 636
  end
  inherited padr_shap_xp_down: TShape
    Top = 472
    Width = 636
  end
  object SCLDBLabel1: TSCLDBLabel [2]
    Left = 39
    Top = 54
    Width = 71
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
    FocusControl = DBConsecutivo
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Consecutivo:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'SECU_MOVIMIENTO'
    Field = 'SECU_MOVIMIENTO'
  end
  object SCLDBLabel4: TSCLDBLabel [3]
    Left = 10
    Top = 100
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
    FocusControl = CBPersonal
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Personal:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_PERSONAL'
    Field = 'CODI_PERSONAL'
  end
  object SCLDBLabel10: TSCLDBLabel [4]
    Left = 10
    Top = 77
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
    FocusControl = CBCodigo
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
    DataField = 'CODI_PERSONAL'
    Field = 'CODI_PERSONAL'
  end
  object SCLDBLabel2: TSCLDBLabel [5]
    Left = 39
    Top = 123
    Width = 71
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
    FocusControl = DBFecha_Inicial
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Fecha Inicial:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FECH_INICIAL'
    Field = 'FECH_INICIAL'
  end
  object SCLDBLabel3: TSCLDBLabel [6]
    Left = 218
    Top = 123
    Width = 71
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
    FocusControl = DBFecha_Final
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Fecha Final:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FECH_INICIAL'
    Field = 'FECH_INICIAL'
  end
  object SCLDBLabel6: TSCLDBLabel [7]
    Left = 10
    Top = 145
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
    FocusControl = CBMovimiento
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Tipo Movimiento:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_PERSONAL'
    Field = 'CODI_PERSONAL'
  end
  object SCLDBLabel5: TSCLDBLabel [8]
    Left = 10
    Top = 168
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
    FocusControl = CBEmpresa_Anterior
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Empresa Anterior:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_PERSONAL'
    Field = 'CODI_PERSONAL'
  end
  object SCLDBLabel7: TSCLDBLabel [9]
    Left = 10
    Top = 191
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
    FocusControl = CBEmpresa_Nueva
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Empresa Nueva:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_PERSONAL'
    Field = 'CODI_PERSONAL'
  end
  object SCLDBLabel8: TSCLDBLabel [10]
    Left = 10
    Top = 214
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
    FocusControl = CBArea_Anterior
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Area Anterior:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_PERSONAL'
    Field = 'CODI_PERSONAL'
  end
  object SCLDBLabel9: TSCLDBLabel [11]
    Left = 10
    Top = 237
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
    FocusControl = CBArea_Nueva
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Area Nueva:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_PERSONAL'
    Field = 'CODI_PERSONAL'
  end
  object SCLDBLabel11: TSCLDBLabel [12]
    Left = 10
    Top = 260
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
    FocusControl = CBPLanta_Anterior
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Planta Anterior:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_PERSONAL'
    Field = 'CODI_PERSONAL'
  end
  object SCLDBLabel12: TSCLDBLabel [13]
    Left = 10
    Top = 283
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
    FocusControl = CBPlanta_Nueva
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Planta Nueva:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_PERSONAL'
    Field = 'CODI_PERSONAL'
  end
  object SCLDBLabel13: TSCLDBLabel [14]
    Left = 10
    Top = 305
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
    FocusControl = CBSeccion_Anterior
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Sección Anterior:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_PERSONAL'
    Field = 'CODI_PERSONAL'
  end
  object SCLDBLabel14: TSCLDBLabel [15]
    Left = 10
    Top = 328
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
    FocusControl = CBSeccion_Nueva
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Sección Nueva:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_PERSONAL'
    Field = 'CODI_PERSONAL'
  end
  object SCLDBLabel15: TSCLDBLabel [16]
    Left = 39
    Top = 351
    Width = 71
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
    FocusControl = DBSolicito
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Solicitó:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'SECU_MOVIMIENTO'
    Field = 'SECU_MOVIMIENTO'
  end
  object SCLDBLabel16: TSCLDBLabel [17]
    Left = 39
    Top = 374
    Width = 71
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
    FocusControl = DBAprobo
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Aprobó:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'SECU_MOVIMIENTO'
    Field = 'SECU_MOVIMIENTO'
  end
  object SCLDBLabel17: TSCLDBLabel [18]
    Left = 39
    Top = 397
    Width = 71
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
    FocusControl = DBEjecuto
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Ejecutó:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'SECU_MOVIMIENTO'
    Field = 'SECU_MOVIMIENTO'
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 636
  end
  inherited padr_pane_arriba: TPanel
    Width = 636
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 636
    inherited padr_beve_1: TBevel
      Width = 630
    end
    inherited padr_sepa_new: TShape
      Width = 630
    end
  end
  inherited padr_pane_info: TPanel
    Top = 471
    Width = 636
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 421
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 443
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 421
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 443
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 463
    Width = 636
    inherited padr_beve_abajo: TBevel
      Width = 630
    end
  end
  object DBConsecutivo: TdxDBEdit [24]
    Left = 112
    Top = 54
    Width = 137
    Color = clBtnFace
    TabOrder = 28
    TabStop = False
    DataField = 'SECU_MOVIMIENTO'
    DataSource = data_ventana
    ReadOnly = True
    StyleController = padr_estilo
    StoredValues = 64
  end
  object CBPersonal: TPCPLookUpComboEdit [25]
    Left = 112
    Top = 100
    Width = 275
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    DataField = 'CODI_PERSONAL'
    DataSource = data_ventana
    KeyField = 'CODI_PERSONAL'
    ListField = 'NOMB_COMPLETO'
    ListSource = DSPersonal
    ParentCtl3D = False
    TabOrder = 6
    DirectInput = False
  end
  object CBCodigo: TPCPLookUpComboEdit [26]
    Left = 112
    Top = 77
    Width = 137
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    DataField = 'CODI_PERSONAL'
    DataSource = data_ventana
    KeyField = 'CODI_PERSONAL'
    ListField = 'CODI_PERSONAL'
    ListSource = DSPersonal
    ParentCtl3D = False
    TabOrder = 7
    DirectInput = False
  end
  object BPersonal: TTBXButtonSCL [27]
    Left = 391
    Top = 100
    Width = 21
    Height = 20
    AllowAllUnchecked = True
    BorderSize = 2
    ButtonStyle = bsFlat
    Enabled = False
    ImageIndex = 0
    Images = Imagenes_Botones_Pequenos
    SmartFocus = False
    TabOrder = 8
    TabStop = False
  end
  object DBFecha_Inicial: TdxDBDateEdit [28]
    Left = 112
    Top = 123
    Width = 97
    TabOrder = 9
    DataField = 'FECH_INICIAL'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object DBFecha_Final: TdxDBDateEdit [29]
    Left = 291
    Top = 123
    Width = 97
    TabOrder = 10
    DataField = 'FECH_FINAL'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object CBMovimiento: TPCPLookUpComboEdit [30]
    Left = 112
    Top = 145
    Width = 275
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    DataField = 'CODI_PERSONAL'
    DataSource = data_ventana
    KeyField = 'CODI_PERSONAL'
    ListField = 'NOMB_COMPLETO'
    ListSource = DSPersonal
    ParentCtl3D = False
    TabOrder = 11
    DirectInput = False
  end
  object BTipo_Movimiento: TTBXButtonSCL [31]
    Left = 391
    Top = 144
    Width = 21
    Height = 20
    Hint = 'Buscar Personal'
    AllowAllUnchecked = True
    BorderSize = 2
    ButtonStyle = bsFlat
    Enabled = False
    ImageIndex = 0
    Images = Imagenes_Botones_Pequenos
    SmartFocus = False
    TabOrder = 12
    TabStop = False
  end
  object CBEmpresa_Anterior: TPCPLookUpComboEdit [32]
    Left = 112
    Top = 168
    Width = 275
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    DataField = 'CODI_PERSONAL'
    DataSource = data_ventana
    KeyField = 'CODI_PERSONAL'
    ListField = 'NOMB_COMPLETO'
    ListSource = DSPersonal
    ParentCtl3D = False
    TabOrder = 13
    DirectInput = False
  end
  object CBEmpresa_Nueva: TPCPLookUpComboEdit [33]
    Left = 112
    Top = 191
    Width = 275
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    DataField = 'CODI_PERSONAL'
    DataSource = data_ventana
    KeyField = 'CODI_PERSONAL'
    ListField = 'NOMB_COMPLETO'
    ListSource = DSPersonal
    ParentCtl3D = False
    TabOrder = 14
    DirectInput = False
  end
  object BEmpresa_Nueva: TTBXButtonSCL [34]
    Left = 391
    Top = 191
    Width = 21
    Height = 20
    Hint = 'Buscar Personal'
    AllowAllUnchecked = True
    BorderSize = 2
    ButtonStyle = bsFlat
    Enabled = False
    ImageIndex = 0
    Images = Imagenes_Botones_Pequenos
    SmartFocus = False
    TabOrder = 15
    TabStop = False
  end
  object CBArea_Anterior: TPCPLookUpComboEdit [35]
    Left = 112
    Top = 214
    Width = 275
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    DataField = 'CODI_PERSONAL'
    DataSource = data_ventana
    KeyField = 'CODI_PERSONAL'
    ListField = 'NOMB_COMPLETO'
    ListSource = DSPersonal
    ParentCtl3D = False
    TabOrder = 16
    DirectInput = False
  end
  object CBArea_Nueva: TPCPLookUpComboEdit [36]
    Left = 112
    Top = 237
    Width = 275
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    DataField = 'CODI_PERSONAL'
    DataSource = data_ventana
    KeyField = 'CODI_PERSONAL'
    ListField = 'NOMB_COMPLETO'
    ListSource = DSPersonal
    ParentCtl3D = False
    TabOrder = 17
    DirectInput = False
  end
  object BArea_Nueva: TTBXButtonSCL [37]
    Left = 391
    Top = 237
    Width = 21
    Height = 20
    Hint = 'Buscar Personal'
    AllowAllUnchecked = True
    BorderSize = 2
    ButtonStyle = bsFlat
    Enabled = False
    ImageIndex = 0
    Images = Imagenes_Botones_Pequenos
    SmartFocus = False
    TabOrder = 18
    TabStop = False
  end
  object CBPLanta_Anterior: TPCPLookUpComboEdit [38]
    Left = 112
    Top = 260
    Width = 275
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    DataField = 'CODI_PERSONAL'
    DataSource = data_ventana
    KeyField = 'CODI_PERSONAL'
    ListField = 'NOMB_COMPLETO'
    ListSource = DSPersonal
    ParentCtl3D = False
    TabOrder = 19
    DirectInput = False
  end
  object CBPlanta_Nueva: TPCPLookUpComboEdit [39]
    Left = 112
    Top = 283
    Width = 275
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    DataField = 'CODI_PERSONAL'
    DataSource = data_ventana
    KeyField = 'CODI_PERSONAL'
    ListField = 'NOMB_COMPLETO'
    ListSource = DSPersonal
    ParentCtl3D = False
    TabOrder = 20
    DirectInput = False
  end
  object BPlanta_Nueva: TTBXButtonSCL [40]
    Left = 391
    Top = 283
    Width = 21
    Height = 20
    Hint = 'Buscar Personal'
    AllowAllUnchecked = True
    BorderSize = 2
    ButtonStyle = bsFlat
    Enabled = False
    ImageIndex = 0
    Images = Imagenes_Botones_Pequenos
    SmartFocus = False
    TabOrder = 21
    TabStop = False
  end
  object CBSeccion_Anterior: TPCPLookUpComboEdit [41]
    Left = 112
    Top = 305
    Width = 275
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    DataField = 'CODI_PERSONAL'
    DataSource = data_ventana
    KeyField = 'CODI_PERSONAL'
    ListField = 'NOMB_COMPLETO'
    ListSource = DSPersonal
    ParentCtl3D = False
    TabOrder = 22
    DirectInput = False
  end
  object CBSeccion_Nueva: TPCPLookUpComboEdit [42]
    Left = 112
    Top = 328
    Width = 275
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    DataField = 'CODI_PERSONAL'
    DataSource = data_ventana
    KeyField = 'CODI_PERSONAL'
    ListField = 'NOMB_COMPLETO'
    ListSource = DSPersonal
    ParentCtl3D = False
    TabOrder = 23
    DirectInput = False
  end
  object BSeccion_Nueva: TTBXButtonSCL [43]
    Left = 391
    Top = 328
    Width = 21
    Height = 20
    Hint = 'Buscar Personal'
    AllowAllUnchecked = True
    BorderSize = 2
    ButtonStyle = bsFlat
    Enabled = False
    ImageIndex = 0
    Images = Imagenes_Botones_Pequenos
    SmartFocus = False
    TabOrder = 24
    TabStop = False
  end
  object DBSolicito: TdxDBEdit [44]
    Left = 112
    Top = 351
    Width = 275
    TabOrder = 25
    DataField = 'SECU_MOVIMIENTO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object DBAprobo: TdxDBEdit [45]
    Left = 112
    Top = 374
    Width = 275
    TabOrder = 26
    DataField = 'SECU_MOVIMIENTO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object DBEjecuto: TdxDBEdit [46]
    Left = 112
    Top = 397
    Width = 275
    TabOrder = 27
    DataField = 'SECU_MOVIMIENTO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  inherited padr_pane_principal: TPanel
    Width = 636
  end
  inherited Tabla_Ventana: TTable
    TableName = 'PCP_PERS_MOVIMIENTO'
    object Tabla_VentanaSECU_MOVIMIENTO: TIntegerField
      DisplayLabel = 'Consecutivo'
      FieldName = 'SECU_MOVIMIENTO'
      Required = True
    end
    object Tabla_VentanaCODI_PERSONAL: TStringField
      DisplayLabel = 'Personal'
      FieldName = 'CODI_PERSONAL'
      Required = True
      Size = 12
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaFECH_INICIAL: TDateTimeField
      DisplayLabel = 'Fecha Inicial'
      FieldName = 'FECH_INICIAL'
    end
    object Tabla_VentanaFECH_FINAL: TDateTimeField
      DisplayLabel = 'Fecha Final'
      FieldName = 'FECH_FINAL'
    end
    object Tabla_VentanaCODI_FAMI_MOVI_PERSONAL: TStringField
      DisplayLabel = 'Familia'
      FieldName = 'CODI_FAMI_MOVI_PERSONAL'
      Size = 12
    end
    object Tabla_VentanaCODI_TIPO_MOVI_PERSONAL: TStringField
      DisplayLabel = 'Tipo Movimiento'
      FieldName = 'CODI_TIPO_MOVI_PERSONAL'
      Required = True
      Size = 12
    end
    object Tabla_VentanaOBSERVACIONES: TMemoField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 2000
    end
    object Tabla_VentanaCODI_EMPR_ANTERIOR: TStringField
      DisplayLabel = 'Empresa Anterior'
      FieldName = 'CODI_EMPR_ANTERIOR'
      Size = 12
    end
    object Tabla_VentanaCODI_EMPR_NUEVO: TStringField
      DisplayLabel = 'Empresa Nueva'
      FieldName = 'CODI_EMPR_NUEVO'
      Size = 12
    end
    object Tabla_VentanaCODI_AREA_ANTERIOR: TStringField
      DisplayLabel = 'Area Anterior'
      FieldName = 'CODI_AREA_ANTERIOR'
      Size = 12
    end
    object Tabla_VentanaCODI_AREA_NUEVO: TStringField
      DisplayLabel = 'Area Nueva'
      FieldName = 'CODI_AREA_NUEVO'
      Size = 12
    end
    object Tabla_VentanaCODI_PLAN_ANTERIOR: TStringField
      DisplayLabel = 'Planta Anterior'
      FieldName = 'CODI_PLAN_ANTERIOR'
      Size = 12
    end
    object Tabla_VentanaCODI_PLAN_NUEVO: TStringField
      DisplayLabel = 'Planta Nueva'
      FieldName = 'CODI_PLAN_NUEVO'
      Size = 12
    end
    object Tabla_VentanaCODI_SECC_ANTERIOR: TStringField
      DisplayLabel = 'Sección Anterior'
      FieldName = 'CODI_SECC_ANTERIOR'
      Size = 12
    end
    object Tabla_VentanaCODI_SECC_NUEVO: TStringField
      DisplayLabel = 'Sección Nueva'
      FieldName = 'CODI_SECC_NUEVO'
      Size = 12
    end
    object Tabla_VentanaSOLICITA: TStringField
      DisplayLabel = 'Solicita'
      FieldName = 'SOLICITA'
      Required = True
      Size = 60
    end
    object Tabla_VentanaAPRUEBA: TStringField
      DisplayLabel = 'Aprueba'
      FieldName = 'APRUEBA'
      Required = True
      Size = 60
    end
    object Tabla_VentanaEJECUTA: TStringField
      DisplayLabel = 'Ejecuta'
      FieldName = 'EJECUTA'
      Required = True
      Size = 60
    end
  end
  object TPersonal: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_PERSONAL'
    Left = 472
    Top = 96
  end
  object DSPersonal: TDataSource
    AutoEdit = False
    DataSet = TPersonal
    Left = 504
    Top = 96
  end
end

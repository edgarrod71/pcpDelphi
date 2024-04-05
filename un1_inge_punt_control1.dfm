inherited fn1_inge_punt_control1: Tfn1_inge_punt_control1
  Left = 228
  Top = 130
  Width = 583
  Height = 410
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 575
  end
  inherited padr_shap_xp_down: TShape
    Top = 382
    Width = 575
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 575
  end
  inherited padr_pane_arriba: TPanel
    Width = 575
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 575
    inherited padr_sepa_new: TShape
      Width = 569
    end
  end
  inherited padr_pane_info: TPanel
    Top = 381
    Width = 575
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
    Top = 373
    Width = 575
    inherited padr_beve_abajo: TBevel
      Width = 569
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 575
  end
  object Panel1: TPanel [8]
    Left = 0
    Top = 54
    Width = 575
    Height = 77
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
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
      DataField = 'CODI_PUNT_CONTROL'
      Field = 'CODI_PUNT_CONTROL'
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
      Caption = 'Punto de control:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_PUNT_CONTROL'
      Field = 'NOMB_PUNT_CONTROL'
    end
    object dxDBEdit1: TdxDBEdit
      Left = 110
      Top = 8
      Width = 121
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_PUNT_CONTROL'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 110
      Top = 28
      Width = 203
      TabOrder = 1
      DataField = 'NOMB_PUNT_CONTROL'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBCheckEdit1: TdxDBCheckEdit
      Left = 110
      Top = 48
      Width = 121
      TabOrder = 2
      Caption = 'Activo'
      DataField = 'ACTIVO'
      DataSource = data_ventana
      StyleController = padr_estilo
      ValueChecked = '1'
      ValueUnchecked = '-1'
      NullStyle = nsUnchecked
    end
  end
  inherited Variables: TSCLPropiedadesForm
    Left = 336
  end
  inherited Tabla_Ventana: TTable
    TableName = 'PCP_PUNT_CONTROL'
    object Tabla_VentanaCONS_PUNT_CONTROL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_PUNT_CONTROL'
      Required = True
    end
    object Tabla_VentanaCODI_PUNT_CONTROL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODI_PUNT_CONTROL'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_PUNT_CONTROL: TStringField
      DisplayLabel = 'Punto de control'
      FieldName = 'NOMB_PUNT_CONTROL'
      Required = True
      Size = 60
    end
    object Tabla_VentanaACTIVO: TIntegerField
      FieldName = 'ACTIVO'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
  inherited padr_estilo: TdxEditStyleController
    Left = 434
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController
    Left = 466
  end
  inherited padr_esti_panel: TAdvPanelStyler
    Left = 370
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler
    Left = 402
  end
  inherited padr_pict_container: TPictureContainer
    Left = 498
  end
end

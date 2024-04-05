inherited fn1_refe_lavados1: Tfn1_refe_lavados1
  Left = 67
  Top = 78
  Width = 812
  Height = 466
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 429
    Width = 804
  end
  inherited padr_pane_info: TPanel [2]
    Top = 438
    Width = 804
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 215
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 237
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 215
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 237
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited pane_beve_abajo: TPanel [3]
    Top = 430
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 52
    Width = 804
    Height = 306
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
      Top = 11
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
      DataField = 'CODI_REFE_LAVADO'
      Field = 'CODI_REFE_LAVADO'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 10
      Top = 31
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
      FocusControl = NOMB_REFE_LAVADO
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Lavado:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_REFE_LAVADO'
      Field = 'NOMB_REFE_LAVADO'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 51
      Width = 100
      Height = 94
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = OBSERVACIONES
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
      Top = 11
      Width = 121
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_REFE_LAVADO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object NOMB_REFE_LAVADO: TdxDBEdit
      Left = 112
      Top = 31
      Width = 241
      TabOrder = 1
      DataField = 'NOMB_REFE_LAVADO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object OBSERVACIONES: TdxDBMemo
      Left = 112
      Top = 51
      Width = 353
      TabOrder = 2
      DataField = 'OBSERVACIONES'
      DataSource = data_ventana
      StyleController = padr_estilo
      Height = 94
    end
    inline ffra_fotografiaDB1: Tffra_fotografiaDB
      Left = 472
      Width = 331
      Height = 301
      TabOrder = 3
      inherited fram_pane_atras: TPanel
        Width = 331
        Height = 275
        inherited fram_fotografia: TEDBImage
          Width = 321
          Height = 242
          DataField = 'IMAGEN'
          DataSource = data_ventana
        end
        inherited fram_pane_stretch: TPanel
          Top = 247
          Width = 321
          inherited fram_chec_ajustar: TdxDBCheckEdit
            DataField = 'AJUS_IMAGEN'
            DataSource = data_ventana
          end
        end
      end
      inherited TBXDock1: TTBXDock
        Width = 331
      end
    end
  end
  inherited padr_dock_arriba: TTBXDock [5]
    Width = 804
    inherited padr_barra: TTBXToolbar
      DockPos = -72
      DockRow = 1
    end
  end
  inherited padr_pane_sepa_1: TPanel [6]
    Width = 804
    inherited padr_beve_1: TBevel
      Width = 702
    end
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_arriba: TPanel [7]
    Width = 804
  end
  inherited padr_pane_principal: TPanel
    Top = 358
    Width = 804
  end
  inherited padr_pict_container: TPictureContainer [12]
  end
  inherited imag_pequenas: TImageList [13]
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_REFE_LAVADOS'
    object Tabla_VentanaCONS_REFE_LAVADO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_REFE_LAVADO'
      Required = True
    end
    object Tabla_VentanaCODI_REFE_LAVADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODI_REFE_LAVADO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_REFE_LAVADO: TStringField
      FieldName = 'NOMB_REFE_LAVADO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object Tabla_VentanaIMAGEN: TBlobField
      FieldName = 'IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object Tabla_VentanaAJUS_IMAGEN: TIntegerField
      FieldName = 'AJUS_IMAGEN'
    end
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [15]
  end
  inherited Imagenes_Botones_Pequenos: TImageList [16]
  end
  inherited padr_quer_consecutivo: TQuery [17]
  end
  inherited padr_esti_panel: TAdvPanelStyler [18]
  end
  inherited padr_estilo: TdxEditStyleController [19]
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [20]
  end
  inherited Variables: TSCLPropiedadesForm [21]
  end
end

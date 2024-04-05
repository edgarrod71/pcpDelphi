inherited fn1_refe_estampados1: Tfn1_refe_estampados1
  Left = 66
  Top = 63
  Width = 812
  Height = 517
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 480
    Width = 804
  end
  inherited padr_pane_info: TPanel [2]
    Top = 489
    Width = 804
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 207
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 229
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 207
      StyleController = padr_estilo
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 229
      StyleController = padr_estilo
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited padr_pane_sepa_1: TPanel [3]
    Width = 804
    inherited padr_beve_1: TBevel
      Width = 700
    end
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 54
    Width = 804
    Height = 426
    Align = alClient
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
      DataField = 'CODI_REFE_ESTAMPADO'
      Field = 'CODI_REFE_ESTAMPADO'
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
      FocusControl = dxDBEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Estampado:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_REFE_ESTAMPADO'
      Field = 'NOMB_REFE_ESTAMPADO'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 51
      Width = 100
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
      Top = 11
      Width = 121
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_REFE_ESTAMPADO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 112
      Top = 31
      Width = 249
      TabOrder = 1
      DataField = 'NOMB_REFE_ESTAMPADO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBMemo1: TdxDBMemo
      Left = 112
      Top = 51
      Width = 353
      TabOrder = 2
      DataField = 'OBSERVACIONES'
      DataSource = data_ventana
      StyleController = padr_estilo
      Height = 102
    end
    inline ffra_fotografiaDB1: Tffra_fotografiaDB
      Left = 472
      Top = 5
      Width = 300
      Height = 300
      TabOrder = 3
      inherited fram_pane_atras: TPanel
        Width = 300
        Height = 274
        inherited fram_fotografia: TEDBImage
          Width = 290
          Height = 241
          DataField = 'IMAGEN'
          DataSource = data_ventana
        end
        inherited fram_pane_stretch: TPanel
          Top = 246
          Width = 290
          inherited fram_chec_ajustar: TdxDBCheckEdit
            DataField = 'AJUS_IMAGEN'
            DataSource = data_ventana
            StyleController = padr_estilo_chec
          end
        end
      end
      inherited TBXDock1: TTBXDock
        Width = 300
      end
    end
  end
  inherited padr_dock_arriba: TTBXDock [5]
    Width = 804
  end
  inherited padr_pane_arriba: TPanel [6]
    Width = 804
  end
  inherited pane_beve_abajo: TPanel
    Top = 481
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 804
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [9]
  end
  inherited Variables: TSCLPropiedadesForm [10]
  end
  inherited padr_pict_container: TPictureContainer [11]
  end
  inherited imag_pequenas: TImageList [12]
  end
  inherited padr_imag_tem1_colo: TImageList [13]
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_REFE_ESTAMPADOS'
    object Tabla_VentanaCONS_REFE_ESTAMPADO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_REFE_ESTAMPADO'
      Required = True
    end
    object Tabla_VentanaCODI_REFE_ESTAMPADO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_REFE_ESTAMPADO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_REFE_ESTAMPADO: TStringField
      DisplayLabel = 'Estampado'
      FieldName = 'NOMB_REFE_ESTAMPADO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaIMAGEN: TBlobField
      DisplayLabel = 'Imagen'
      FieldName = 'IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object Tabla_VentanaAJUS_IMAGEN: TIntegerField
      DisplayLabel = 'Ajustar Imagen'
      FieldName = 'AJUS_IMAGEN'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [15]
  end
  inherited padr_estilo: TdxEditStyleController [16]
  end
  inherited data_ventana: TDataSource [17]
  end
  inherited padr_quer_consecutivo: TQuery [18]
  end
  inherited Imagenes_Botones_Pequenos: TImageList [19]
  end
  inherited padr_esti_panel: TAdvPanelStyler [20]
  end
  inherited padr_acciones: TActionList [21]
  end
end

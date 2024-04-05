inherited fn1_refe_bordados1: Tfn1_refe_bordados1
  Left = 72
  Top = 31
  Width = 812
  Height = 588
  ActiveControl = dxDBEdit1
  UseDockManager = True
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 551
    Width = 804
  end
  inherited padr_pane_arriba: TPanel [2]
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel [3]
    Width = 804
    inherited padr_beve_1: TBevel
      Width = 665
    end
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 54
    Width = 804
    Height = 497
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 2
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
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'codi_refe_bordado'
      Field = 'codi_refe_bordado'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 2
      Top = 28
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
      Caption = 'Bordado:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'nomb_refe_bordado'
      Field = 'nomb_refe_bordado'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 2
      Top = 48
      Width = 100
      Height = 89
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
      DataField = 'observaciones'
      Field = 'observaciones'
    end
    object dxDBEdit1: TdxDBEdit
      Left = 104
      Top = 8
      Width = 121
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_REFE_BORDADO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 104
      Top = 28
      Width = 185
      TabOrder = 1
      DataField = 'NOMB_REFE_BORDADO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBMemo1: TdxDBMemo
      Left = 104
      Top = 48
      Width = 337
      TabOrder = 2
      DataField = 'OBSERVACIONES'
      DataSource = data_ventana
      StyleController = padr_estilo
      Height = 89
    end
    inline ffra_fotografiaDB1: Tffra_fotografiaDB
      Left = 448
      Top = 1
      Width = 345
      Height = 337
      TabOrder = 3
      inherited fram_pane_atras: TPanel
        Width = 345
        Height = 311
        inherited fram_fotografia: TEDBImage
          Width = 335
          Height = 278
          DataField = 'IMAGEN'
          DataSource = data_ventana
        end
        inherited fram_pane_stretch: TPanel
          Top = 283
          Width = 335
          inherited fram_chec_ajustar: TdxDBCheckEdit
            DataField = 'AJUS_IMAGEN'
            DataSource = data_ventana
            StyleController = padr_estilo_chec
          end
        end
      end
      inherited TBXDock1: TTBXDock
        Width = 345
      end
      inherited fram_pop_up: TTBXPopupMenu
        inherited TBXItem2: TTBXItem
          Images = imag_pequenas
        end
        inherited TBXItem1: TTBXItem
          Images = imag_pequenas
        end
        inherited TBXItem3: TTBXItem
          Images = imag_pequenas
        end
        inherited TBXItem4: TTBXItem
          Images = imag_pequenas
        end
        inherited TBXItem5: TTBXItem
          Images = imag_pequenas
        end
        inherited TBXItem6: TTBXItem
          Images = imag_pequenas
        end
      end
    end
  end
  inherited padr_dock_arriba: TTBXDock [5]
    Width = 804
  end
  inherited padr_pane_info: TPanel
    Top = 560
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
  inherited pane_beve_abajo: TPanel
    Top = 552
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 804
  end
  inherited padr_pict_container: TPictureContainer [11]
  end
  inherited padr_estilo: TdxEditStyleController [12]
  end
  inherited imag_pequenas: TImageList [13]
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [14]
  end
  inherited padr_acciones: TActionList [15]
  end
  inherited padr_quer_consecutivo: TQuery [16]
  end
  inherited Variables: TSCLPropiedadesForm [17]
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [18]
  end
  inherited padr_esti_panel: TAdvPanelStyler [19]
  end
  inherited Tabla_Ventana: TTable [20]
    FieldDefs = <
      item
        Name = 'CONS_REFE_BORDADO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CODI_REFE_BORDADO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'NOMB_REFE_BORDADO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'FECH_SISTEMA'
        DataType = ftDateTime
      end
      item
        Name = 'USUA_SISTEMA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OBSERVACIONES'
        DataType = ftString
        Size = 240
      end
      item
        Name = 'IMAGEN'
        DataType = ftGraphic
      end
      item
        Name = 'AJUS_IMAGEN'
        DataType = ftInteger
      end>
    StoreDefs = True
    TableName = 'GLO_REFE_BORDADOS'
    object Tabla_VentanaCONS_REFE_BORDADO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_REFE_BORDADO'
      Required = True
    end
    object Tabla_VentanaCODI_REFE_BORDADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODI_REFE_BORDADO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_REFE_BORDADO: TStringField
      FieldName = 'NOMB_REFE_BORDADO'
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
  inherited Imagenes_Botones_Pequenos: TImageList [21]
  end
end

inherited fn1_maqu_tipo_puntada1: Tfn1_maqu_tipo_puntada1
  Left = 215
  Top = 172
  Width = 812
  Height = 413
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object SCLDBLabel1: TSCLDBLabel [0]
    Left = 10
    Top = 59
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
    Caption = 'Tipo de puntada:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_RECU_TIPO_PUNTADA'
    Field = 'CODI_RECU_TIPO_PUNTADA'
  end
  object SCLDBLabel2: TSCLDBLabel [1]
    Left = 10
    Top = 87
    Width = 100
    Height = 102
    Alive = True
    ColorActive = 16578290
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
    DataField = 'CARACTERISTICAS'
    Field = 'CARACTERISTICAS'
  end
  inherited padr_shap_xp_up: TShape
    Width = 809
  end
  inherited padr_shap_xp_down: TShape
    Top = 360
    Width = 809
  end
  object SCLDBLabel3: TSCLDBLabel [4]
    Left = 10
    Top = 200
    Width = 100
    Height = 21
    Alive = False
    ColorActive = 16578290
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
    Caption = 'Fórmula:'
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FORMULA'
    Field = 'FORMULA'
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 809
  end
  inherited padr_pane_arriba: TPanel
    Width = 809
    TabOrder = 9
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 809
    TabOrder = 7
    inherited padr_beve_1: TBevel
      Width = 733
    end
    inherited padr_sepa_new: TShape
      Width = 803
    end
  end
  inherited padr_pane_info: TPanel
    Top = 369
    Width = 809
    TabOrder = 4
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 255
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 277
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 255
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 277
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object dxDBEdit1: TdxDBEdit [9]
    Left = 112
    Top = 59
    Width = 137
    TabOrder = 0
    DataField = 'CODI_RECU_TIPO_PUNTADA'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object dxDBMemo1: TdxDBMemo [10]
    Left = 112
    Top = 87
    Width = 305
    TabOrder = 1
    DataField = 'CARACTERISTICAS'
    DataSource = data_ventana
    StyleController = padr_estilo
    Height = 102
  end
  inline ffra_fotografiaDB1: Tffra_fotografiaDB [11]
    Left = 424
    Top = 56
    Width = 385
    Height = 236
    TabOrder = 8
    inherited fram_pane_atras: TPanel
      Width = 385
      Height = 210
      inherited fram_fotografia: TEDBImage
        Width = 375
        Height = 177
        DataField = 'IMAGEN'
        DataSource = data_ventana
      end
      inherited fram_pane_stretch: TPanel
        Top = 182
        Width = 375
        inherited fram_chec_ajustar: TdxDBCheckEdit
          DataField = 'AJUS_IMAGEN'
          DataSource = data_ventana
        end
      end
    end
    inherited TBXDock1: TTBXDock
      Width = 385
    end
  end
  inherited pane_beve_abajo: TPanel [12]
    Top = 361
    Width = 809
    TabOrder = 5
    inherited padr_beve_abajo: TBevel
      Width = 803
    end
  end
  inherited padr_pane_principal: TPanel [13]
    Width = 809
    TabOrder = 6
  end
  object dxDBEdit2: TdxDBEdit [14]
    Left = 112
    Top = 200
    Width = 305
    TabOrder = 2
    DataField = 'FORMULA'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  inherited Variables: TSCLPropiedadesForm [15]
  end
  inherited Tabla_Ventana: TTable [16]
    TableName = 'GLO_RECU_TIPO_PUNTADA'
    object Tabla_VentanaCONS_RECU_TIPO_PUNTADA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No. Tipo Puntada'
      FieldName = 'CONS_RECU_TIPO_PUNTADA'
      Required = True
    end
    object Tabla_VentanaCODI_RECU_TIPO_PUNTADA: TStringField
      DisplayLabel = 'Tipo de puntada'
      FieldName = 'CODI_RECU_TIPO_PUNTADA'
      Required = True
      Size = 12
    end
    object Tabla_VentanaCARACTERISTICAS: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'CARACTERISTICAS'
      Size = 240
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
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaFORMULA: TStringField
      FieldName = 'FORMULA'
      Size = 240
    end
  end
  inherited padr_imag_tem1_colo: TImageList [17]
  end
  inherited padr_esti_panel: TAdvPanelStyler [18]
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [19]
  end
  inherited padr_pict_container: TPictureContainer [20]
  end
  inherited padr_estilo: TdxEditStyleController [21]
  end
  inherited data_ventana: TDataSource [22]
  end
  inherited padr_acciones: TActionList [23]
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [25]
  end
  inherited Imagenes_Botones_Pequenos: TImageList [26]
  end
end

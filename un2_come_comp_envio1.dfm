inherited fn2_come_comp_envio1: Tfn2_come_comp_envio1
  Left = 24
  Width = 812
  Height = 493
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 456
    Width = 804
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 804
    inherited padr_beve_1: TBevel
      Width = 865
    end
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 465
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
  object Panel1: TPanel [6]
    Left = 0
    Top = 54
    Width = 804
    Height = 35
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
      FocusControl = dxDBEdit8
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
      DataField = 'CODI_COMP_ENVIO'
      Field = 'CODI_COMP_ENVIO'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 296
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
      FocusControl = dxDBEdit9
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Nombre:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_COMP_ENVIO'
      Field = 'NOMB_COMP_ENVIO'
    end
    object dxDBEdit8: TdxDBEdit
      Left = 110
      Top = 8
      Width = 140
      TabOrder = 0
      DataField = 'CODI_COMP_ENVIO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit9: TdxDBEdit
      Left = 398
      Top = 8
      Width = 300
      TabOrder = 1
      DataField = 'NOMB_COMP_ENVIO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
  end
  object page: TSCLPageControl [7]
    Left = 0
    Top = 89
    Width = 804
    Height = 367
    ActivePage = page_dato_generales
    Align = alClient
    BoldCurrentTab = True
    Color = 16578290
    FlatColor = 10435335
    Margin = 5
    ParentColor = False
    TabColors.Shadow = 15582631
    TabColors.Unselected = 16578290
    TabIndex = 0
    TabOrder = 7
    Transparent = True
    FixedDimension = 19
    object page_dato_generales: TSCLTabSheet
      Color = 16578290
      Caption = 'Datos generales'
      object SCLDBLabel6: TSCLDBLabel
        Left = 10
        Top = 80
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
        FocusControl = dxDBEdit1
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Dirección:'
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'DIRECCION'
        Field = 'DIRECCION'
      end
      object SCLDBLabel7: TSCLDBLabel
        Left = 10
        Top = 100
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
        Caption = 'Teléfono:'
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'TELEFONO1'
        Field = 'TELEFONO1'
      end
      object SCLDBLabel8: TSCLDBLabel
        Left = 270
        Top = 100
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
        FocusControl = dxDBEdit3
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Teléfono 2:'
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'TELEFONO2'
        Field = 'TELEFONO2'
      end
      object SCLDBLabel9: TSCLDBLabel
        Left = 10
        Top = 120
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
        FocusControl = dxDBEdit4
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Fax:'
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'FAX'
        Field = 'FAX'
      end
      object SCLDBLabel10: TSCLDBLabel
        Left = 270
        Top = 120
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
        FocusControl = dxDBEdit5
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Celular:'
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CELULAR'
        Field = 'CELULAR'
      end
      object SCLDBLabel11: TSCLDBLabel
        Left = 10
        Top = 148
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
        FocusControl = dxDBEdit6
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Correo electrónico:'
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CORR_ELECTRONICO'
        Field = 'CORR_ELECTRONICO'
      end
      object SCLDBLabel12: TSCLDBLabel
        Left = 10
        Top = 168
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
        FocusControl = dxDBEdit7
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Página WEB:'
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'PAGI_WEB'
        Field = 'PAGI_WEB'
      end
      inline ffra_ubic_regional: Tffra_ubic_regional
        Left = 10
        Top = 10
        Width = 369
        Height = 73
        inherited SCLDBLabel3: TSCLDBLabel
          ColorActive = 16578290
          FontActive.Name = 'Tahoma'
          DataSource = data_ventana
        end
        inherited SCLDBLabel4: TSCLDBLabel
          ColorActive = 16578290
          FontActive.Name = 'Tahoma'
          DataSource = data_ventana
        end
        inherited SCLDBLabel5: TSCLDBLabel
          ColorActive = 16578290
          FontActive.Name = 'Tahoma'
          DataSource = data_ventana
        end
        inherited comb_paises: TPCPLookUpComboEdit
          Width = 160
          DataSource = data_ventana
        end
        inherited comb_departamentos: TPCPLookUpComboEdit
          Width = 160
          DataSource = data_ventana
        end
        inherited comb_ciudades: TPCPLookUpComboEdit
          Width = 160
          DataSource = data_ventana
        end
        inherited SCLButton1: TTBXButtonSCL
          Left = 265
          Visible = False
        end
        inherited SCLButton2: TTBXButtonSCL
          Left = 265
          Top = 23
          Visible = False
        end
        inherited SCLButton3: TTBXButtonSCL
          Left = 265
          Top = 46
          Visible = False
        end
        inherited quer_paises: TQuery
          Left = 144
        end
        inherited data_paises: TDataSource
          Left = 172
        end
        inherited quer_departamentos: TQuery
          Left = 144
        end
        inherited data_departamentos: TDataSource
          Left = 172
        end
        inherited quer_ciudades: TQuery
          Left = 144
        end
        inherited data_ciudades: TDataSource
          Left = 172
        end
      end
      object dxDBEdit1: TdxDBEdit
        Left = 112
        Top = 80
        Width = 400
        TabOrder = 1
        DataField = 'DIRECCION'
        DataSource = data_ventana
        StyleController = padr_estilo
      end
      object dxDBEdit2: TdxDBEdit
        Left = 112
        Top = 100
        Width = 140
        TabOrder = 2
        DataField = 'TELEFONO1'
        DataSource = data_ventana
        StyleController = padr_estilo
      end
      object dxDBEdit3: TdxDBEdit
        Left = 372
        Top = 100
        Width = 140
        TabOrder = 3
        DataField = 'TELEFONO2'
        DataSource = data_ventana
        StyleController = padr_estilo
      end
      object dxDBEdit4: TdxDBEdit
        Left = 112
        Top = 120
        Width = 140
        TabOrder = 4
        DataField = 'FAX'
        DataSource = data_ventana
        StyleController = padr_estilo
      end
      object dxDBEdit5: TdxDBEdit
        Left = 372
        Top = 120
        Width = 140
        TabOrder = 5
        DataField = 'CELULAR'
        DataSource = data_ventana
        StyleController = padr_estilo
      end
      object dxDBEdit6: TdxDBEdit
        Left = 112
        Top = 148
        Width = 400
        TabOrder = 6
        DataField = 'CORR_ELECTRONICO'
        DataSource = data_ventana
        StyleController = padr_estilo
      end
      object dxDBEdit7: TdxDBEdit
        Left = 112
        Top = 168
        Width = 400
        TabOrder = 7
        DataField = 'PAGI_WEB'
        DataSource = data_ventana
        StyleController = padr_estilo
      end
    end
    object page_contactos: TSCLTabSheet
      Color = 16578290
      Caption = 'Contactos'
      inline fram_contactos: TFFra_Contactos
        Width = 800
        Height = 344
        Align = alClient
        PopupMenu = fram_contactos.popu_contactos
        inherited grid_contactos: TdxDBGrid
          Width = 800
          Height = 344
          Filter.Criteria = {00000000}
          inherited dxDBGrid1CONS_TERCERO: TdxDBGridMaskColumn
            FieldName = 'CONS_CONTACTO'
          end
        end
        inherited Tabla_contactos: TTable
          IndexFieldNames = 'CONS_COMP_ENVIO'
          MasterFields = 'CONS_COMP_ENVIO'
          MasterSource = data_ventana
          TableName = 'GLO_COME_COMP_ENVI_CONTACTOS'
        end
      end
    end
    object page_historial: TSCLTabSheet
      Color = 16578290
      Caption = 'Historial'
      inline fram_historial: Tffra_historialDB
        Width = 800
        Height = 344
        Align = alClient
        inherited fram_pane: TPanel
          Width = 800
          Height = 344
          inherited fram_grid_historial: TdxDBGrid
            Width = 867
            Height = 311
            Filter.Criteria = {00000000}
          end
          inherited TBXDock1: TTBXDock
            Width = 867
            inherited TBXToolbar1: TTBXToolbar
              Images = imag_pequenas
            end
          end
        end
        inherited data_historial: TDataSource
          DataSet = tabl_historial
        end
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 457
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 804
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_COME_COMP_ENVIO'
    object Tabla_VentanaCONS_COMP_ENVIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_COMP_ENVIO'
      Required = True
    end
    object Tabla_VentanaCODI_COMP_ENVIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODI_COMP_ENVIO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_COMP_ENVIO: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMB_COMP_ENVIO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaCONS_PAIS: TIntegerField
      DisplayLabel = 'País'
      FieldName = 'CONS_PAIS'
    end
    object Tabla_VentanaCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'Departamento'
      FieldName = 'CONS_DEPARTAMENTO'
    end
    object Tabla_VentanaCONS_CIUDAD: TIntegerField
      DisplayLabel = 'Ciudad'
      FieldName = 'CONS_CIUDAD'
    end
    object Tabla_VentanaDIRECCION: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRECCION'
      Size = 240
    end
    object Tabla_VentanaTELEFONO1: TStringField
      DisplayLabel = 'Teléfono'
      FieldName = 'TELEFONO1'
    end
    object Tabla_VentanaTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object Tabla_VentanaFAX: TStringField
      FieldName = 'FAX'
    end
    object Tabla_VentanaCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object Tabla_VentanaCORR_ELECTRONICO: TStringField
      FieldName = 'CORR_ELECTRONICO'
      Size = 240
    end
    object Tabla_VentanaPAGI_WEB: TStringField
      FieldName = 'PAGI_WEB'
      Size = 240
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
  inherited padr_estilo: TdxEditStyleController
    Top = 10
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController
    Top = 10
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler
    Top = 10
  end
  object tabl_historial: TTable
    BeforePost = tabl_historialBeforePost
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_COMP_ENVIO'
    MasterFields = 'CONS_COMP_ENVIO'
    MasterSource = data_ventana
    TableName = 'GLO_COME_COMP_ENVI_HISTORIAL'
    Left = 10
    Top = 274
  end
end

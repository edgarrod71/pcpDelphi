inherited fn1_prod_orde_dist_paquetes: Tfn1_prod_orde_dist_paquetes
  Left = 59
  Top = 67
  Height = 612
  Caption = 'Tiquetes de control producción'
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 584
  end
  inherited padr_pane_info: TPanel
    Top = 583
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
    Top = 575
  end
  object pane_datos: TPCPFrame [8]
    Tag = 406
    Left = 0
    Top = 146
    Width = 804
    Height = 429
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Constraints.MinHeight = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Visible = False
    Titulo_Color = 16244694
    TipoFrame = tfNinguno
    object dfsSplitter1: TdfsSplitter
      Left = 463
      Top = 11
      Height = 416
      Cursor = crHSplit
      Align = alRight
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object dock_ventana: TTBXDock
      Left = 2
      Top = 2
      Width = 800
      Height = 9
    end
    object PCPFrame2: TPCPFrame
      Tag = 416
      Left = 473
      Top = 11
      Width = 329
      Height = 416
      Align = alRight
      BorderWidth = 2
      Constraints.MinHeight = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Caption = 'Distribución de paquetes'
      Titulo_Color = 16244694
      Boton_Visible = False
      BorderWidthIn = 4
      FlatBorder = True
      inline fram_distribucion: Tffra_prod_orde_dist_paquetes
        Left = 7
        Top = 26
        Width = 315
        Height = 383
        Align = alClient
        TabOrder = 1
        inherited TBXDock1: TTBXDock
          Width = 315
        end
        inherited Panel4: TPanel
          Width = 315
          Height = 332
          inherited grid: TSCLColumnGrid
            Width = 311
            Height = 302
            GridLineColor = 14467501
            ScrollWidth = 16
          end
          inherited pane_totales: TPanel
            Top = 304
            Width = 311
            inherited SCLDBLabel2: TSCLDBLabel
              Top = 4
              FontActive.Name = 'Tahoma'
            end
            inherited SCLDBLabel3: TSCLDBLabel
              Top = 4
              FontActive.Name = 'Tahoma'
            end
            inherited boto_ayuda: TTBXButtonSCL
              Left = 284
            end
            inherited boto_warning: TTBXButtonSCL
              Left = 259
            end
            inherited edit_tota_paquetes: TdxCurrencyEdit
              Top = 4
              StoredValues = 1
            end
            inherited edit_tota_unidades: TdxCurrencyEdit
              Top = 4
              StoredValues = 1
            end
          end
        end
        inherited pane_seleccion: TPanel
          Width = 315
          inherited SCLDBLabel1: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
          inherited comb_paqu_tipo: TPCPLookUpComboEdit
            Width = 175
          end
        end
        inherited tabl_guardar: TRxMemoryData [5]
        end
        inherited data_guardar: TDataSource [6]
          OnStateChange = fram_distribuciondata_guardarStateChange
        end
        inherited myTabla_ventana: TRxMemoryData [7]
        end
        inherited myData_ventana: TDataSource [8]
        end
        inherited quer_dele_paquetes: TQuery [9]
        end
        inherited quer_inse_paquetes: TQuery [10]
        end
        inherited quer_colores: TQuery [11]
        end
        inherited quer_tallas: TQuery [12]
        end
        inherited pop_grid: TTBXPopupMenu [13]
        end
        inherited quer_sele_paquetes: TQuery [14]
        end
        inherited acti_frame: TActionList [15]
        end
      end
    end
    object PCPFrame1: TPCPFrame
      Tag = 416
      Left = 2
      Top = 11
      Width = 461
      Height = 416
      Align = alClient
      BorderWidth = 2
      Constraints.MinHeight = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Caption = 'Unidades cortadas'
      Titulo_Color = 16244694
      Boton_Visible = False
      BorderWidthIn = 4
      FlatBorder = True
      inline fram_tota_orden: Tffra_prod_orde_tota
        Left = 7
        Top = 26
        Width = 447
        Height = 383
        Align = alClient
        TabOrder = 1
        inherited grid: TSCLColumnGrid
          Width = 447
          Height = 383
          GridLineColor = 14467501
          ScrollWidth = 16
        end
      end
    end
  end
  inherited padr_fram_informacion: TPCPFrame
    TabOrder = 7
    inherited padr_comb_nume_lote: TPCPLookUpComboEdit
      OnChange = padr_comb_nume_loteChange
    end
  end
end

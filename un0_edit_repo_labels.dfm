inherited fn0_edit_repo_labels: Tfn0_edit_repo_labels
  Left = 127
  Top = 200
  Width = 380
  Height = 426
  BorderIcons = [biSystemMenu, biHelp]
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 372
  end
  inherited padr_shap_xp_down: TShape
    Top = 390
    Width = 372
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 372
    inherited padr_barra: TTBXToolbar
      inherited padr_boto_aceptar: TTBXItem
        InheritOptions = False
      end
      inherited padr_boto_cancelar: TTBXItem
        InheritOptions = False
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 372
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 47
    Width = 372
    inherited padr_sepa_new: TShape
      Width = 366
    end
  end
  inherited padr_pane_info: TPanel
    Top = 389
    Width = 372
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
    Top = 391
    Width = 372
    inherited padr_beve_abajo: TBevel
      Width = 366
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 45
    Width = 372
  end
  object page: TSCLPageControl [8]
    Left = 0
    Top = 54
    Width = 372
    Height = 335
    ActivePage = page_general
    ActivePageDefault = page_general
    Align = alClient
    BoldCurrentTab = True
    Color = 16578290
    FlatColor = 10435335
    Margin = 5
    ParentColor = False
    TabColors.Shadow = 15582631
    TabColors.Unselected = 16578290
    TabIndex = 0
    TabOrder = 6
    Transparent = True
    FixedDimension = 19
    object page_general: TSCLTabSheet
      Color = 16578290
      Caption = 'General'
      object PCPFrame1: TPCPFrame
        Tag = 73
        Left = 0
        Top = 75
        Width = 368
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 2
        Constraints.MinHeight = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Titulo_Color = 16244694
        TipoFrame = tfNinguno
        object SCLDBLabel3: TSCLDBLabel
          Left = 8
          Top = 4
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
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Nombre del objeto:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object edit_nomb_objeto: TdxEdit
          Left = 112
          Top = 4
          Width = 249
          TabOrder = 1
          StyleController = padr_estilo
        end
        object chec_visible: TdxCheckEdit
          Left = 112
          Top = 24
          Width = 121
          Style.BorderStyle = xbsThick
          TabOrder = 2
          Caption = 'Visible'
          StyleController = padr_estilo
        end
        object chec_transparente: TdxCheckEdit
          Left = 112
          Top = 44
          Width = 121
          Style.BorderStyle = xbsThick
          TabOrder = 3
          Caption = 'Transparente'
          StyleController = padr_estilo
        end
      end
      inline fram_distribucion: Tffra_edit_repo_distribucion
        Top = 148
        Width = 368
        Height = 75
        Align = alTop
        TabOrder = 1
        inherited labe_alin_control: TSCLDBLabel
          ColorActive = 16578290
          FontActive.Name = 'Tahoma'
        end
        inherited labe_dist_texto: TSCLDBLabel
          ColorActive = 16578290
          FontActive.Name = 'Tahoma'
        end
        inherited chec_autoSize: TdxCheckEdit
          StyleController = padr_estilo
        end
        inherited edit_layout: TdxImageEdit
          StyleController = padr_estilo
        end
        inherited edit_cont_align: TdxImageEdit
          StyleController = padr_estilo
        end
      end
      object pane_db: TPanel
        Left = 0
        Top = 25
        Width = 368
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object SCLDBLabel4: TSCLDBLabel
          Left = 10
          Top = 4
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
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Campo:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object edit_campo: TdxButtonEdit
          Left = 112
          Top = 4
          Width = 249
          TabOrder = 0
          StyleController = padr_estilo
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = edit_campoButtonClick
          ExistButtons = True
        end
      end
      object pane_texto: TPanel
        Left = 0
        Top = 50
        Width = 368
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        object SCLDBLabel1: TSCLDBLabel
          Left = 8
          Top = 4
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
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Texto:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object edit_texto: TdxEdit
          Left = 112
          Top = 4
          Width = 249
          TabOrder = 0
          StyleController = padr_estilo
        end
      end
      object pane_sys: TPanel
        Left = 0
        Top = 0
        Width = 368
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 4
        inline fram_sys: Tffra_edit_repo_system
          Top = 2
          inherited SCLDBLabel1: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
        end
      end
      object pane_alin_texto: TPanel
        Left = 0
        Top = 223
        Width = 368
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 5
        inline fram_alin_texto: Tffra_edit_repo_alin_texto
          inherited labe_alin_texto: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
          inherited edit_alin_texto: TdxImageEdit
            StyleController = padr_estilo
          end
        end
      end
      object pane_mascara: TPanel
        Left = 0
        Top = 248
        Width = 368
        Height = 23
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 6
        Visible = False
        object SCLDBLabel5: TSCLDBLabel
          Left = 8
          Top = 1
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
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Máscara'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object edit_mascara: TdxEdit
          Left = 112
          Top = 1
          Width = 121
          TabOrder = 0
          StyleController = padr_estilo
        end
      end
    end
    object page_apariencia: TSCLTabSheet
      Color = 16578290
      Caption = 'Apariencia'
      object pane_fuente: TPCPFrame
        Tag = 82
        Left = 0
        Top = 0
        Width = 368
        Height = 82
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
        TabOrder = 0
        Caption = 'Fuente'
        Titulo_Color = 16244694
        TipoFrame = tfGrupo
        inline fram_fuente: Tffra_edit_repo_fuente
          Left = 8
          Top = 16
          Width = 327
          Height = 67
          TabOrder = 1
          inherited boto_Camb_fuente: TTBXButtonSCL
            Left = 188
            Top = 12
          end
        end
      end
      object PCPFrame2: TPCPFrame
        Tag = 49
        Left = 0
        Top = 82
        Width = 368
        Height = 49
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
        TabOrder = 1
        Caption = 'Colores'
        Titulo_Color = 16244694
        TipoFrame = tfGrupo
        object SCLDBLabel2: TSCLDBLabel
          Left = 30
          Top = 22
          Width = 100
          Height = 25
          Alive = False
          ColorActive = clBtnFace
          FontActive.Charset = DEFAULT_CHARSET
          FontActive.Color = clWindowText
          FontActive.Height = -11
          FontActive.Name = 'Tahoma'
          FontActive.Style = []
          FocusOffset = 2
          Position = wlpLeft
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvNone
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Color de fondo:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object edit_color: TJvOfficeColorButton
          Left = 132
          Top = 22
          Width = 73
          Height = 25
          ColorDialogOptions = [cdPreventFullOpen, cdAnyColor]
          TabOrder = 1
          TabStop = True
          SelectedColor = clWhite
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
          Properties.DefaultColorCaption = 'Automático'
          Properties.CustomColorCaption = 'Other Colors...'
          Properties.NoneColorFont.Charset = DEFAULT_CHARSET
          Properties.NoneColorFont.Color = clWindowText
          Properties.NoneColorFont.Height = -11
          Properties.NoneColorFont.Name = 'MS Sans Serif'
          Properties.NoneColorFont.Style = []
          Properties.DefaultColorFont.Charset = DEFAULT_CHARSET
          Properties.DefaultColorFont.Color = clWindowText
          Properties.DefaultColorFont.Height = -11
          Properties.DefaultColorFont.Name = 'MS Sans Serif'
          Properties.DefaultColorFont.Style = []
          Properties.CustomColorFont.Charset = DEFAULT_CHARSET
          Properties.CustomColorFont.Color = clWindowText
          Properties.CustomColorFont.Height = -11
          Properties.CustomColorFont.Name = 'MS Sans Serif'
          Properties.CustomColorFont.Style = []
          Properties.DragBarHint = 'Drag to floating'
        end
      end
      object PCPFrame3: TPCPFrame
        Tag = 173
        Left = 0
        Top = 131
        Width = 368
        Height = 173
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
        TabOrder = 2
        Caption = 'Bordes'
        Titulo_Color = 16244694
        TipoFrame = tfGrupo
        inline fram_edit_Bordes: Tffra_edit_Repo_band_bordes
          Left = 48
          Top = 23
          Width = 215
          TabOrder = 1
          inherited Label1: TLabel
            Width = 56
          end
        end
      end
    end
    object page_codigo: TSCLTabSheet
      Color = 16578290
      Caption = 'Código de barras'
      inline fram_codi_barras: Tffra_edit_repo_codi_Barras
        Width = 368
        Align = alTop
        inherited SCLDBLabel1: TSCLDBLabel
          ColorActive = 16578290
          FontActive.Name = 'Tahoma'
        end
        inherited SCLDBLabel2: TSCLDBLabel
          ColorActive = 16578290
          FontActive.Name = 'Tahoma'
        end
        inherited SCLDBLabel3: TSCLDBLabel
          ColorActive = 16578290
          FontActive.Name = 'Tahoma'
        end
        inherited SCLDBLabel4: TSCLDBLabel
          ColorActive = 16578290
          FontActive.Name = 'Tahoma'
        end
        inherited SCLDBLabel5: TSCLDBLabel
          ColorActive = 16578290
          FontActive.Name = 'Tahoma'
        end
        inherited chec_digito: TdxCheckEdit
          StyleController = padr_estilo
        end
        inherited edit_module: TdxSpinEdit
          StyleController = padr_estilo
          StoredValues = 49
        end
        inherited edit_codigo: TdxCheckEdit
          StyleController = padr_estilo
        end
      end
    end
    object page_dbResult: TSCLTabSheet
      Color = 16578290
      Caption = 'Fórmula'
      inline fram_dbResult: Tffra_edit_repo_dbResult
        Width = 368
        Align = alTop
        inherited SCLDBLabel1: TSCLDBLabel
          ColorActive = 16578290
          FontActive.Name = 'Tahoma'
        end
        inherited SCLDBLabel2: TSCLDBLabel
          ColorActive = 16578290
          FontActive.Name = 'Tahoma'
        end
        inherited edit_formula: TdxButtonEdit
          StyleController = padr_estilo
          ExistButtons = True
        end
        inherited chec_reset: TdxCheckEdit
          StyleController = padr_estilo
        end
        inherited chec_nulls: TdxCheckEdit
          StyleController = padr_estilo
        end
      end
    end
  end
  inherited data_ventana: TDataSource
    DataSet = nil
    Left = 288
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_buscar: TAction
      Enabled = False
    end
    inherited padr_acti_imprimir: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_ayuda: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_salir: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_aceptar: TAction
      Visible = True
    end
    inherited acti_padr_cancelar_2: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_nuevo: TDataSetInsert
      Enabled = False
      Visible = False
    end
    inherited padr_acti_duplicar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_elim_todos: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_guar_cerrar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_actualizar: TDataSetRefresh
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_xls: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_HTML: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_arch_sepa_comas: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_Data_primero: TDataSetFirst
      Enabled = False
      Visible = False
    end
    inherited padr_acti_Data_anterior: TDataSetPrior
      Enabled = False
      Visible = False
    end
    inherited padr_acti_Data_siguiente: TDataSetNext
      Enabled = False
      Visible = False
    end
    inherited padr_acti_Data_ultimo: TDataSetLast
      Enabled = False
      Visible = False
    end
    inherited padr_acti_busc_lista: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited Tabla_Ventana: TTable
    Left = 265
  end
end

inherited cn1_cont_nove_pago_bruto: Tcn1_cont_nove_pago_bruto
  Left = 30
  Top = 98
  Width = 812
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Width = 804
  end
  inherited padr_pane_1: TPanel
    Width = 767
    inherited padr_pagina: TdxPageControl
      Width = 757
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Left = 105
          Top = 222
          Width = 457
          Height = 210
          KeyField = 'CONS_PERSONAL'
          Visible = False
          Filter.Criteria = {00000000}
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
          object padr_gridCONS_PERSONAL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERSONAL'
          end
          object padr_gridCODI_PERSONAL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERSONAL'
          end
          object padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COMPLETO'
          end
          object padr_gridCONS_EMPRESA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_EMPRESA'
          end
          object padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_EMPRESA'
          end
          object padr_gridCONS_PLANTA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PLANTA'
          end
          object padr_gridNOMB_PLANTA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PLANTA'
          end
          object padr_gridCONS_PLAN_LINEA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PLAN_LINEA'
          end
          object padr_gridNOMB_PLAN_LINEA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PLAN_LINEA'
          end
          object padr_gridCONS_LINE_SECCION: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_LINE_SECCION'
          end
          object padr_gridNOMB_LINE_SECCION: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_LINE_SECCION'
          end
          object padr_gridTIEM_TRAB_ESTANDAR: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIEM_TRAB_ESTANDAR'
          end
          object padr_gridTIEM_TRAB_NO_ESTANDAR: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIEM_TRAB_NO_ESTANDAR'
          end
          object padr_gridTIEM_TRAB_TOTAL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIEM_TRAB_TOTAL'
          end
          object padr_gridTIEM_PROD_ESTANDAR: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIEM_PROD_ESTANDAR'
          end
          object padr_gridTIEM_PROD_NO_ESTANDAR: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIEM_PROD_NO_ESTANDAR'
          end
          object padr_gridTIEM_PROD_TOTAL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIEM_PROD_TOTAL'
          end
          object padr_gridEFIC_ESTANDAR: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EFIC_ESTANDAR'
          end
          object padr_gridEFIC_NO_ESTANDAR: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EFIC_NO_ESTANDAR'
          end
          object padr_gridEFIC_TOTAL: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EFIC_TOTAL'
          end
          object padr_gridVALO_GANA_PROD_ESTANDAR: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_GANA_PROD_ESTANDAR'
          end
          object padr_gridVALO_GANA_PROD_NO_ESTANDA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_GANA_PROD_NO_ESTANDA'
          end
          object padr_gridVALO_GANA_PROD_TOTAL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_GANA_PROD_TOTAL'
          end
          object padr_gridVALO_AJUS_MINI_ESTANDAR: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_AJUS_MINI_ESTANDAR'
          end
          object padr_gridVALO_AJUS_MINI_NO_ESTANDA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_AJUS_MINI_NO_ESTANDA'
          end
          object padr_gridVALO_AJUS_MINI_TOTAL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_AJUS_MINI_TOTAL'
          end
          object padr_gridVALO_BONO_PROD_ESTANDAR: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_BONO_PROD_ESTANDAR'
          end
          object padr_gridVALO_BONO_PROD_NO_ESTANDA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_BONO_PROD_NO_ESTANDA'
          end
          object padr_gridVALO_BONO_PROD_TOTAL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_BONO_PROD_TOTAL'
          end
          object padr_gridTIEM_EXTR_ESTANDAR: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIEM_EXTR_ESTANDAR'
          end
          object padr_gridTIEM_EXTR_NO_ESTANDAR: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIEM_EXTR_NO_ESTANDAR'
          end
          object padr_gridTIEM_EXTR_TOTAL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIEM_EXTR_TOTAL'
          end
          object padr_gridVALO_BONO_EXTR_ESTANDAR: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_BONO_EXTR_ESTANDAR'
          end
          object padr_gridVALO_BONO_EXTR_NO_ESTANDA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_BONO_EXTR_NO_ESTANDA'
          end
          object padr_gridVALO_BONO_EXTR_TOTAL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_BONO_EXTR_TOTAL'
          end
          object padr_gridVALO_DEVE_ESTANDAR: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_DEVE_ESTANDAR'
          end
          object padr_gridVALO_DEVE_NO_ESTANDAR: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_DEVE_NO_ESTANDAR'
          end
          object padr_gridVALO_DEVE_TOTAL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_DEVE_TOTAL'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          Width = 757
          inherited padr_barra: TTBXToolbar
            object TBXItem1: TTBXItem [12]
              Action = padr_acti_imprimir
              ImageIndex = 10
              Images = _fMDI.imag_grandes
            end
            inherited BImprimir: TTBXSubmenuItem
              AlwaysSelectFirst = True
              DropdownCombo = False
              Visible = False
              inherited padr_boto_crea_nuev_reporte: TTBXItem
                Visible = False
              end
              inherited boto_repo_nuevo: TTBXItem
                Visible = False
              end
              inherited padr_boto_opci_impresion: TTBXVisibilityToggleItem
                Visible = False
              end
              inherited padr_sepa_12: TTBXSeparatorItem
                Visible = False
              end
            end
          end
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 757
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 757
          inherited padr_sepa_new: TShape
            Width = 751
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 222
          Width = 105
          Height = 210
          inherited padr_pane_conf_vista: TTBXDockablePanel
            DockedWidth = 101
            inherited shap_xp: TShape
              Width = 101
            end
            inherited padr_conf_vista: TdxTreeList
              Width = 101
              Height = 188
            end
            inherited padr_gradi_camp_visibles: TPCPTituloGradiente
              Width = 101
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 562
          Top = 222
          Height = 210
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 188
              inherited padr_prio_impresion: TdxTreeList
                Height = 23
              end
            end
          end
        end
        object pane_filtros: TPCPFrame
          Tag = 170
          Left = 0
          Top = 52
          Width = 757
          Height = 170
          Align = alTop
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Titulo_Color = 16244694
          FlatBorder = True
          object SCLShape1: TSCLShape
            Left = 119
            Top = 49
            Width = 192
            Height = 22
            Brush.Style = bsClear
            Pen.Color = 14467501
          end
          object SCLDBLabel1: TSCLDBLabel
            Left = 16
            Top = 29
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
            Caption = 'Fecha inicial:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel2: TSCLDBLabel
            Left = 280
            Top = 29
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
            Caption = 'Fecha final:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel3: TSCLDBLabel
            Left = 16
            Top = 53
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
            Caption = 'Tiempo en:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object chec_horas: TRadioButton
            Left = 124
            Top = 53
            Width = 73
            Height = 17
            Caption = 'Horas'
            Checked = True
            TabOrder = 1
            TabStop = True
            OnClick = doActualizarConsulta
          end
          object edit_fech_inicial: TdxDateEdit
            Left = 119
            Top = 29
            Width = 121
            TabOrder = 2
            StyleController = padr_estilo
            OnChange = doActualizarConsulta
            Date = -700000
          end
          object edit_fech_final: TdxDateEdit
            Left = 383
            Top = 29
            Width = 121
            TabOrder = 3
            StyleController = padr_estilo
            OnChange = doActualizarConsulta
            Date = -700000
          end
          object chec_minutos: TRadioButton
            Left = 223
            Top = 52
            Width = 81
            Height = 17
            Caption = 'Minutos'
            TabOrder = 4
            OnClick = doActualizarConsulta
          end
          inline fram_ubicacion: Tffra_maqu_ubicacion
            Left = 26
            Top = 76
            Height = 87
            TabOrder = 5
            inherited pane_tipo_ubicacion: TPanel
              inherited SCLDBLabel33: TSCLDBLabel
                FontActive.Name = 'Tahoma'
              end
              inherited comb_tipo_ubicacion: TPCPLookUpComboEdit
                OnChange = fram_ubicacioncomb_tipo_ubicacionChange
              end
            end
            inherited pane_ubic_propia: TPanel
              inherited SCLDBLabel34: TSCLDBLabel
                FontActive.Name = 'Tahoma'
              end
              inherited SCLDBLabel35: TSCLDBLabel
                FontActive.Name = 'Tahoma'
                Enabled = False
              end
              inherited comb_ubic_empresa: TPCPLookUpComboEdit
                OnChange = fram_ubicacioncomb_ubic_empresaChange
              end
              inherited comb_ubic_area: TPCPLookUpComboEdit
                Enabled = False
                OnChange = fram_ubicacioncomb_ubic_areaChange
              end
            end
            inherited pane_ubic_externa: TPanel
              inherited SCLDBLabel36: TSCLDBLabel
                FontActive.Name = 'Tahoma'
              end
              inherited SCLDBLabel37: TSCLDBLabel
                FontActive.Name = 'Tahoma'
              end
              inherited SCLDBLabel1: TSCLDBLabel
                FontActive.Name = 'Tahoma'
              end
              inherited comb_ubic_planta: TPCPLookUpComboEdit
                OnChange = fram_ubicacioncomb_ubic_plantaChange
              end
              inherited comb_ubic_seccion: TPCPLookUpComboEdit
                OnChange = fram_ubicacioncomb_ubic_seccionChange
              end
              inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
                OnChange = fram_ubicacionComb_Ubic_LineaChange
              end
            end
            inherited pane_ubic_bodega: TPanel
              inherited SCLDBLabel39: TSCLDBLabel
                FontActive.Name = 'Tahoma'
              end
            end
            inherited pane_ubic_otra: TPanel
              inherited SCLDBLabel38: TSCLDBLabel
                FontActive.Name = 'Tahoma'
              end
            end
          end
        end
        object pane_reporte: TPCPFrame
          Left = 105
          Top = 222
          Width = 457
          Height = 210
          Align = alClient
          BorderWidth = 2
          Constraints.MinHeight = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnResize = doResize
          Titulo_Color = 16244694
          TipoFrame = tfNinguno
          FlatBorder = True
          object grid_reporte: TDBCtrlGrid
            Left = 3
            Top = 36
            Width = 451
            Height = 171
            Align = alClient
            AllowDelete = False
            AllowInsert = False
            ColCount = 1
            Color = clWhite
            DataSource = data_ventana
            PanelBorder = gbNone
            PanelHeight = 85
            PanelWidth = 435
            ParentColor = False
            TabOrder = 0
            RowCount = 2
            ShowFocus = False
            object pane_registro: TPanel
              Tag = -1
              Left = 0
              Top = 0
              Width = 435
              Height = 57
              Align = alTop
              BevelOuter = bvNone
              Color = clWhite
              TabOrder = 0
              object DBText1: TDBText
                Left = 4
                Top = 4
                Width = 65
                Height = 17
                DataField = 'CODI_PERSONAL'
                DataSource = data_ventana
              end
              object DBText2: TDBText
                Left = 84
                Top = 4
                Width = 149
                Height = 45
                DataField = 'NOMB_COMPLETO'
                DataSource = data_ventana
                WordWrap = True
              end
              object Label5: TLabel
                Left = 240
                Top = 6
                Width = 43
                Height = 13
                Caption = 'Estándar'
              end
              object Label6: TLabel
                Left = 240
                Top = 21
                Width = 59
                Height = 13
                Caption = 'No estándar'
              end
              object Label7: TLabel
                Left = 240
                Top = 36
                Width = 24
                Height = 13
                Caption = 'Total'
              end
              object shap_total: TSCLShape
                Left = 232
                Top = 36
                Width = 605
                Height = -1
                Brush.Style = bsClear
                Pen.Color = 14467501
              end
              object DBText3: TDBText
                Left = 315
                Top = 4
                Width = 50
                Height = 17
                Alignment = taRightJustify
                DataField = 'TIEM_TRAB_ESTANDAR'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText4: TDBText
                Left = 315
                Top = 19
                Width = 50
                Height = 17
                Alignment = taRightJustify
                DataField = 'TIEM_TRAB_NO_ESTANDAR'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText5: TDBText
                Left = 315
                Top = 37
                Width = 50
                Height = 17
                Alignment = taRightJustify
                DataField = 'TIEM_TRAB_TOTAL'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText6: TDBText
                Left = 373
                Top = 4
                Width = 50
                Height = 17
                Alignment = taRightJustify
                DataField = 'TIEM_PROD_ESTANDAR'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText7: TDBText
                Left = 373
                Top = 19
                Width = 50
                Height = 17
                Alignment = taRightJustify
                DataField = 'TIEM_PROD_NO_ESTANDAR'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText8: TDBText
                Left = 373
                Top = 37
                Width = 50
                Height = 17
                Alignment = taRightJustify
                DataField = 'TIEM_PROD_TOTAL'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText9: TDBText
                Left = 434
                Top = 4
                Width = 50
                Height = 17
                Alignment = taRightJustify
                DataField = 'EFIC_ESTANDAR'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText10: TDBText
                Left = 434
                Top = 19
                Width = 50
                Height = 17
                Alignment = taRightJustify
                DataField = 'EFIC_NO_ESTANDAR'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText11: TDBText
                Left = 434
                Top = 37
                Width = 50
                Height = 17
                Alignment = taRightJustify
                DataField = 'EFIC_TOTAL'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText12: TDBText
                Left = 493
                Top = 4
                Width = 50
                Height = 17
                Alignment = taRightJustify
                DataField = 'VALO_GANA_PROD_ESTANDAR'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText13: TDBText
                Left = 493
                Top = 19
                Width = 50
                Height = 17
                Alignment = taRightJustify
                DataField = 'VALO_GANA_PROD_NO_ESTANDA'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText14: TDBText
                Left = 493
                Top = 37
                Width = 50
                Height = 17
                Alignment = taRightJustify
                DataField = 'VALO_GANA_PROD_TOTAL'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText15: TDBText
                Left = 552
                Top = 4
                Width = 50
                Height = 17
                Alignment = taRightJustify
                DataField = 'VALO_AJUS_MINI_ESTANDAR'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText16: TDBText
                Left = 552
                Top = 19
                Width = 50
                Height = 17
                Alignment = taRightJustify
                DataField = 'VALO_AJUS_MINI_NO_ESTANDA'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText17: TDBText
                Left = 552
                Top = 37
                Width = 50
                Height = 17
                Alignment = taRightJustify
                DataField = 'VALO_AJUS_MINI_TOTAL'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText18: TDBText
                Left = 611
                Top = 4
                Width = 51
                Height = 17
                Alignment = taRightJustify
                DataField = 'TIEM_EXTR_ESTANDAR'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText19: TDBText
                Left = 611
                Top = 19
                Width = 51
                Height = 17
                Alignment = taRightJustify
                DataField = 'TIEM_EXTR_NO_ESTANDAR'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText20: TDBText
                Left = 611
                Top = 37
                Width = 51
                Height = 17
                Alignment = taRightJustify
                DataField = 'TIEM_EXTR_TOTAL'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText21: TDBText
                Left = 667
                Top = 4
                Width = 51
                Height = 17
                Alignment = taRightJustify
                DataField = 'VALO_BONO_EXTR_ESTANDAR'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText22: TDBText
                Left = 667
                Top = 19
                Width = 51
                Height = 17
                Alignment = taRightJustify
                DataField = 'VALO_BONO_EXTR_NO_ESTANDA'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText23: TDBText
                Left = 667
                Top = 37
                Width = 51
                Height = 17
                Alignment = taRightJustify
                DataField = 'VALO_BONO_EXTR_TOTAL'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText24: TDBText
                Left = 723
                Top = 4
                Width = 51
                Height = 17
                Alignment = taRightJustify
                DataField = 'VALO_BONO_PROD_ESTANDAR'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText25: TDBText
                Left = 723
                Top = 19
                Width = 51
                Height = 17
                Alignment = taRightJustify
                DataField = 'VALO_BONO_PROD_NO_ESTANDA'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText26: TDBText
                Left = 723
                Top = 37
                Width = 51
                Height = 17
                Alignment = taRightJustify
                DataField = 'VALO_BONO_PROD_TOTAL'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText27: TDBText
                Left = 782
                Top = 4
                Width = 51
                Height = 17
                Alignment = taRightJustify
                DataField = 'VALO_DEVE_ESTANDAR'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText28: TDBText
                Left = 782
                Top = 19
                Width = 51
                Height = 17
                Alignment = taRightJustify
                DataField = 'VALO_DEVE_NO_ESTANDAR'
                DataSource = data_ventana
                Transparent = True
              end
              object DBText29: TDBText
                Left = 782
                Top = 37
                Width = 51
                Height = 17
                Alignment = taRightJustify
                DataField = 'VALO_DEVE_TOTAL'
                DataSource = data_ventana
                Transparent = True
              end
            end
          end
          object pane_titulos: TPanel
            Left = 3
            Top = 3
            Width = 451
            Height = 33
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Label1: TLabel
              Left = 4
              Top = 4
              Width = 65
              Height = 33
              AutoSize = False
              Caption = 'Código empleado'
              WordWrap = True
            end
            object Label2: TLabel
              Left = 84
              Top = 4
              Width = 65
              Height = 33
              AutoSize = False
              Caption = 'Nombre empleado'
              WordWrap = True
            end
            object Label3: TLabel
              Left = 236
              Top = 4
              Width = 87
              Height = 33
              AutoSize = False
              Caption = 'Tipo de horas'
              WordWrap = True
            end
            object Label4: TLabel
              Left = 316
              Top = 4
              Width = 55
              Height = 33
              AutoSize = False
              Caption = 'Horas trabajadas'
              WordWrap = True
            end
            object Label8: TLabel
              Left = 369
              Top = 4
              Width = 55
              Height = 33
              AutoSize = False
              Caption = 'Horas producidas'
              WordWrap = True
            end
            object Label9: TLabel
              Left = 434
              Top = 4
              Width = 55
              Height = 33
              AutoSize = False
              Caption = 'Eficiencia obtenida'
              WordWrap = True
            end
            object Label10: TLabel
              Left = 494
              Top = 4
              Width = 55
              Height = 33
              AutoSize = False
              Caption = 'Ganado producción'
              WordWrap = True
            end
            object Label11: TLabel
              Left = 553
              Top = 4
              Width = 55
              Height = 33
              AutoSize = False
              Caption = 'Ajuste al mínimo'
              WordWrap = True
            end
            object Label12: TLabel
              Left = 612
              Top = 4
              Width = 55
              Height = 33
              AutoSize = False
              Caption = 'Horas extras'
              WordWrap = True
            end
            object Label13: TLabel
              Left = 671
              Top = 4
              Width = 50
              Height = 33
              AutoSize = False
              Caption = 'Bono extra'
              WordWrap = True
            end
            object Label14: TLabel
              Left = 719
              Top = 4
              Width = 57
              Height = 33
              AutoSize = False
              Caption = 'Bono producción'
              WordWrap = True
            end
            object Label15: TLabel
              Left = 783
              Top = 4
              Width = 57
              Height = 33
              AutoSize = False
              Caption = 'Total devengado'
              WordWrap = True
            end
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    Width = 804
    inherited padr_pane_2: TPanel
      Left = 733
    end
    inherited padr_pane_cerrar: TPanel
      Left = 751
    end
    inherited padr_pane_titulo: TPCPTituloGradiente
      Width = 733
      LabelCaption = 'Consulta pago bruto'
      Caption = 'Consulta pago bruto'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 785
    Width = 19
    inherited padr_page_ocul_reporte: TdxTabSheet
      inherited padr_repo_fortes: Tffra_edit_reportes
        inherited TBXDock3: TTBXDock
          inherited pane_insp_objetos: TTBXDockablePanel
            inherited page: TSCLPageControl
              FixedDimension = 19
              inherited page_propiedades: TSCLTabSheet
                inherited page_prop: TSCLPageControl
                  FixedDimension = 19
                end
              end
              inherited page_campos: TSCLTabSheet
                inherited grid_camp_disponibles: TSCLDBGrid
                  Filter.Criteria = {00000000}
                end
              end
            end
          end
        end
      end
    end
  end
  inherited padr_dock_top: TTBXDock
    Width = 804
  end
  inherited padr_dock_bottom: TTBXDock
    Width = 804
  end
  inherited padr_dock_right: TTBXDock
    Left = 776
  end
  inherited data_ventana: TDataSource
    DataSet = nil
  end
  inherited consulta: TQuery
    BeforeOpen = consultaBeforeOpen
    OnCalcFields = consultaCalcFields
    DatabaseName = 'PCPLOCAL'
    SQL.Strings = (
      'SELECT CONS_PERSONAL, CODI_PERSONAL,'
      'NOMB_COMPLETO, CONS_EMPRESA, NOMB_EMPRESA,'
      'CONS_PLANTA, NOMB_PLANTA, CONS_PLAN_LINEA,'
      'NOMB_PLAN_LINEA, CONS_LINE_SECCION, NOMB_LINE_SECCION,'
      'SUM(TIEM_TRAB_ESTANDAR) AS TIEM_TRAB_ESTANDAR,'
      'SUM(TIEM_TRAB_NO_ESTANDAR) AS TIEM_TRAB_NO_ESTANDAR,'
      'SUM(TIEM_TRAB_TOTAL) AS TIEM_TRAB_TOTAL,'
      'SUM(TIEM_PROD_ESTANDAR) AS TIEM_PROD_ESTANDAR,'
      'SUM(TIEM_PROD_NO_ESTANDAR) AS TIEM_PROD_NO_ESTANDAR,'
      'SUM(TIEM_PROD_TOTAL) AS TIEM_PROD_TOTAL,'
      'SUM(VALO_GANA_PROD_ESTANDAR) AS VALO_GANA_PROD_ESTANDAR,'
      'SUM(VALO_GANA_PROD_NO_ESTANDA) AS VALO_GANA_PROD_NO_ESTANDA,'
      'SUM(VALO_GANA_PROD_TOTAL) AS VALO_GANA_PROD_TOTAL,'
      'SUM(VALO_AJUS_MINI_ESTANDAR) AS VALO_AJUS_MINI_ESTANDAR,'
      'SUM(VALO_AJUS_MINI_NO_ESTANDA) AS VALO_AJUS_MINI_NO_ESTANDA,'
      'SUM(VALO_AJUS_MINI_TOTAL) AS VALO_AJUS_MINI_TOTAL,'
      'SUM(VALO_BONO_PROD_ESTANDAR) AS VALO_BONO_PROD_ESTANDAR,'
      'SUM(VALO_BONO_PROD_NO_ESTANDA) AS VALO_BONO_PROD_NO_ESTANDA,'
      'SUM(VALO_BONO_PROD_TOTAL ) AS VALO_BONO_PROD_TOTAL,'
      'SUM(TIEM_EXTR_ESTANDAR) AS TIEM_EXTR_ESTANDAR,'
      'SUM(TIEM_EXTR_NO_ESTANDAR) AS TIEM_EXTR_NO_ESTANDAR,'
      'SUM(TIEM_EXTR_TOTAL) AS TIEM_EXTR_TOTAL,'
      'SUM(VALO_BONO_EXTR_ESTANDAR) AS VALO_BONO_EXTR_ESTANDAR,'
      'SUM(VALO_BONO_EXTR_NO_ESTANDA) AS VALO_BONO_EXTR_NO_ESTANDA,'
      'SUM(VALO_BONO_EXTR_TOTAL) AS VALO_BONO_EXTR_TOTAL,'
      'SUM(VALO_DEVE_ESTANDAR) AS VALO_DEVE_ESTANDAR,'
      'SUM(VALO_DEVE_NO_ESTANDAR) AS VALO_DEVE_NO_ESTANDAR,'
      'SUM(VALO_DEVE_TOTAL) AS VALO_DEVE_TOTAL'
      'FROM "tmpRpt_cont_pago_bruto.DB" '
      'GROUP BY CONS_PERSONAL, CODI_PERSONAL,'
      'NOMB_COMPLETO, CONS_EMPRESA, NOMB_EMPRESA,'
      'CONS_PLANTA, NOMB_PLANTA, CONS_PLAN_LINEA,'
      'NOMB_PLAN_LINEA, CONS_LINE_SECCION, NOMB_LINE_SECCION'
      ''
      ' ')
    object consultaCONS_PERSONAL: TIntegerField
      DisplayLabel = 'Cons. personal'
      FieldName = 'CONS_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".CONS_PERSONAL'
    end
    object consultaCODI_PERSONAL: TStringField
      DisplayLabel = 'Cod. personal'
      FieldName = 'CODI_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".CODI_PERSONAL'
      Size = 12
    end
    object consultaNOMB_COMPLETO: TStringField
      DisplayLabel = 'Nombres'
      FieldName = 'NOMB_COMPLETO'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".NOMB_COMPLETO'
      Size = 102
    end
    object consultaCONS_EMPRESA: TIntegerField
      DisplayLabel = 'Cons. empresa'
      FieldName = 'CONS_EMPRESA'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".CONS_EMPRESA'
    end
    object consultaNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".NOMB_EMPRESA'
      Size = 60
    end
    object consultaCONS_PLANTA: TIntegerField
      DisplayLabel = 'Cons. planta'
      FieldName = 'CONS_PLANTA'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".CONS_PLANTA'
    end
    object consultaNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta'
      FieldName = 'NOMB_PLANTA'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".NOMB_PLANTA'
      Size = 60
    end
    object consultaCONS_PLAN_LINEA: TIntegerField
      DisplayLabel = 'Cons. línea'
      FieldName = 'CONS_PLAN_LINEA'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".CONS_PLAN_LINEA'
    end
    object consultaNOMB_PLAN_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldName = 'NOMB_PLAN_LINEA'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".NOMB_PLAN_LINEA'
      Size = 60
    end
    object consultaCONS_LINE_SECCION: TIntegerField
      DisplayLabel = 'Cons. sección'
      FieldName = 'CONS_LINE_SECCION'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".CONS_LINE_SECCION'
    end
    object consultaNOMB_LINE_SECCION: TStringField
      DisplayLabel = 'Sección'
      FieldName = 'NOMB_LINE_SECCION'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".NOMB_LINE_SECCION'
      Size = 60
    end
    object consultaTIEM_TRAB_ESTANDAR: TFloatField
      DisplayLabel = 'H/Trabajadas estándar'
      FieldName = 'TIEM_TRAB_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".TIEM_TRAB_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consultaTIEM_TRAB_NO_ESTANDAR: TFloatField
      DisplayLabel = 'H/Trabajadas NO estándar'
      FieldName = 'TIEM_TRAB_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".TIEM_TRAB_NO_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consultaTIEM_TRAB_TOTAL: TFloatField
      DisplayLabel = 'H/Trabajadas Total'
      FieldName = 'TIEM_TRAB_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".TIEM_TRAB_TOTAL'
      DisplayFormat = ',0.00'
    end
    object consultaTIEM_PROD_ESTANDAR: TFloatField
      DisplayLabel = 'H/Producidas Estándar'
      FieldName = 'TIEM_PROD_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".TIEM_PROD_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consultaTIEM_PROD_NO_ESTANDAR: TFloatField
      DisplayLabel = 'H/Producidas NO estándar'
      FieldName = 'TIEM_PROD_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".TIEM_PROD_NO_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consultaTIEM_PROD_TOTAL: TFloatField
      DisplayLabel = 'H/Producidas Total'
      FieldName = 'TIEM_PROD_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".TIEM_PROD_TOTAL'
      DisplayFormat = ',0.00'
    end
    object consultaEFIC_ESTANDAR: TFloatField
      DisplayLabel = 'Eficiencia Estándar'
      FieldKind = fkCalculated
      FieldName = 'EFIC_ESTANDAR'
      DisplayFormat = ',0.00 %'
      Calculated = True
    end
    object consultaEFIC_NO_ESTANDAR: TFloatField
      DisplayLabel = 'Eficiencia NO Estándar'
      FieldKind = fkCalculated
      FieldName = 'EFIC_NO_ESTANDAR'
      DisplayFormat = ',0.00 %'
      Calculated = True
    end
    object consultaEFIC_TOTAL: TFloatField
      DisplayLabel = 'Eficiencia Total'
      FieldKind = fkCalculated
      FieldName = 'EFIC_TOTAL'
      DisplayFormat = ',0.00 %'
      Calculated = True
    end
    object consultaVALO_GANA_PROD_ESTANDAR: TFloatField
      DisplayLabel = 'Ganado producción Estándar'
      FieldName = 'VALO_GANA_PROD_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_GANA_PROD_ESTANDAR'
      DisplayFormat = ',0.000'
    end
    object consultaVALO_GANA_PROD_NO_ESTANDA: TFloatField
      DisplayLabel = 'Ganado producción NO Estándar'
      FieldName = 'VALO_GANA_PROD_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_GANA_PROD_NO_ESTANDA'
      DisplayFormat = ',0.000'
    end
    object consultaVALO_GANA_PROD_TOTAL: TFloatField
      DisplayLabel = 'Ganado producción Total'
      FieldName = 'VALO_GANA_PROD_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_GANA_PROD_TOTAL'
      DisplayFormat = ',0.000'
    end
    object consultaVALO_AJUS_MINI_ESTANDAR: TFloatField
      DisplayLabel = 'Ajuste al mínimo Estándar'
      FieldName = 'VALO_AJUS_MINI_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_AJUS_MINI_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consultaVALO_AJUS_MINI_NO_ESTANDA: TFloatField
      DisplayLabel = 'Ajuste al mínimo NO Estándar'
      FieldName = 'VALO_AJUS_MINI_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_AJUS_MINI_NO_ESTANDA'
      DisplayFormat = ',0.00'
    end
    object consultaVALO_AJUS_MINI_TOTAL: TFloatField
      DisplayLabel = 'Ajuste al mínimo Total'
      FieldName = 'VALO_AJUS_MINI_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_AJUS_MINI_TOTAL'
      DisplayFormat = ',0.00'
    end
    object consultaVALO_BONO_PROD_ESTANDAR: TFloatField
      DisplayLabel = 'Bono producción Estándar'
      FieldName = 'VALO_BONO_PROD_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_BONO_PROD_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consultaVALO_BONO_PROD_NO_ESTANDA: TFloatField
      DisplayLabel = 'Bono producción NO Estándar'
      FieldName = 'VALO_BONO_PROD_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_BONO_PROD_NO_ESTANDA'
      DisplayFormat = ',0.00'
    end
    object consultaVALO_BONO_PROD_TOTAL: TFloatField
      DisplayLabel = 'Bono producción Total'
      FieldName = 'VALO_BONO_PROD_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_BONO_PROD_TOTAL'
      DisplayFormat = ',0.00'
    end
    object consultaTIEM_EXTR_ESTANDAR: TFloatField
      DisplayLabel = 'Hora Extras Estándar'
      FieldName = 'TIEM_EXTR_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".TIEM_EXTR_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consultaTIEM_EXTR_NO_ESTANDAR: TFloatField
      DisplayLabel = 'Hora Extras NO Estándar'
      FieldName = 'TIEM_EXTR_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".TIEM_EXTR_NO_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consultaTIEM_EXTR_TOTAL: TFloatField
      DisplayLabel = 'Hora Extras Total'
      FieldName = 'TIEM_EXTR_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".TIEM_EXTR_TOTAL'
      DisplayFormat = ',0.00'
    end
    object consultaVALO_BONO_EXTR_ESTANDAR: TFloatField
      DisplayLabel = 'Bono extra Estándar'
      FieldName = 'VALO_BONO_EXTR_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_BONO_EXTR_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consultaVALO_BONO_EXTR_NO_ESTANDA: TFloatField
      DisplayLabel = 'Bono extra NO Estándar'
      FieldName = 'VALO_BONO_EXTR_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_BONO_EXTR_NO_ESTANDA'
      DisplayFormat = ',0.00'
    end
    object consultaVALO_BONO_EXTR_TOTAL: TFloatField
      DisplayLabel = 'Bono extra Total'
      FieldName = 'VALO_BONO_EXTR_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_BONO_EXTR_TOTAL'
      DisplayFormat = ',0.00'
    end
    object consultaVALO_DEVE_ESTANDAR: TFloatField
      DisplayLabel = 'Total devengado Estándar'
      FieldName = 'VALO_DEVE_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_DEVE_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consultaVALO_DEVE_NO_ESTANDAR: TFloatField
      DisplayLabel = 'Total devengado NO Estándar'
      FieldName = 'VALO_DEVE_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_DEVE_NO_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consultaVALO_DEVE_TOTAL: TFloatField
      DisplayLabel = 'Total devengado'
      FieldName = 'VALO_DEVE_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_DEVE_TOTAL'
      DisplayFormat = ',0.00'
    end
  end
  inherited padr_popu_vist_actual: TTBXPopupMenu
    Left = 154
    Top = 209
  end
  inherited Variables: TSCLPropiedadesForm
    Left = 122
    Top = 210
  end
  object consulta_db: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM CON_PCP_CONT_REPO_PAGO_BRUTO'
      '(:fech_inicial, :fech_final, :tiem_en_horas)'
      ''
      ' ')
    Left = 32
    Top = 62
    ParamData = <
      item
        DataType = ftDate
        Name = 'fech_inicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'fech_final'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'tiem_en_horas'
        ParamType = ptInput
      end>
  end
  object tabl_local: TTable
    DatabaseName = 'PCPLOCAL'
    TableName = 'tmpRpt_cont_pago_bruto'
    Left = 64
    Top = 63
  end
end

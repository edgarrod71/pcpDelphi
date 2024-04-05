inherited cn1_cont_nove_efic_diario: Tcn1_cont_nove_efic_diario
  Left = 50
  Top = 101
  Width = 775
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 767
  end
  inherited padr_shap_xp_down: TShape
    Width = 767
  end
  inherited padr_pane_1: TPanel
    Width = 741
    inherited padr_pagina: TdxPageControl
      Width = 731
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Top = 225
          Width = 341
          Height = 207
          KeyField = 'fecha'
          SummaryGroups = <
            item
              DefaultGroup = False
              SummaryItems = <>
              Name = 'padr_summary_grid'
            end
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  ColumnName = 'padr_gridFECHA'
                  SummaryType = cstCount
                end
                item
                  ColumnName = 'padr_gridEFIC_ESTANDAR'
                  SummaryField = 'EFIC_ESTANDAR'
                  SummaryFormat = ',0.00 %'
                  SummaryType = cstAvg
                end
                item
                  ColumnName = 'padr_gridVALO_AJUS_MINI_ESTANDAR'
                  SummaryField = 'VALO_AJUS_MINI_ESTANDAR'
                  SummaryFormat = ',0.00'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'padr_gridEFIC_NO_ESTANDAR'
                  SummaryField = 'EFIC_NO_ESTANDAR'
                  SummaryFormat = ',0.00 %'
                  SummaryType = cstAvg
                end
                item
                  ColumnName = 'padr_gridVALO_AJUS_MINI_NO_ESTANDA'
                  SummaryField = 'VALO_AJUS_MINI_NO_ESTANDA'
                  SummaryFormat = ',0.00'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'padr_gridTIEM_EXTR_TOTAL'
                  SummaryField = 'TIEM_EXTR_ESTANDAR'
                  SummaryFormat = ',0.00'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'padr_gridVALO_BONO_EXTR_TOTAL'
                  SummaryField = 'VALO_BONO_EXTR_TOTAL'
                  SummaryFormat = ',0.00'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'padr_gridEFIC_TOTAL'
                  SummaryField = 'EFIC_TOTAL'
                  SummaryFormat = ',0.00 %'
                  SummaryType = cstAvg
                end
                item
                  ColumnName = 'padr_gridVALO_AJUS_MINI_TOTAL'
                  SummaryField = 'VALO_AJUS_MINI_TOTAL'
                  SummaryFormat = ',0.00'
                  SummaryType = cstSum
                end>
              Name = 'padr_gridSummaryGroup2'
            end>
          TabOrder = 1
          Visible = False
          Filter.Criteria = {00000000}
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
          object padr_gridFECHA: TdxDBGridDateColumn
            Caption = 'Fecha'
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECHA'
          end
          object padr_gridCODI_PERSONAL: TdxDBGridMaskColumn
            Caption = 'Cód. personal'
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERSONAL'
            SummaryFooterType = cstCount
            SummaryFooterFormat = ',0'
          end
          object padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn
            Sorted = csUp
            Visible = False
            Width = 134
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COMPLETO'
            GroupIndex = 0
          end
          object padr_gridEFIC_ESTANDAR: TdxDBGridMaskColumn
            Caption = 'En estándar'
            Width = 72
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EFIC_ESTANDAR'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'EFIC_ESTANDAR'
            SummaryFooterFormat = ',0.00 %'
          end
          object padr_gridVALO_AJUS_MINI_ESTANDAR: TdxDBGridMaskColumn
            Alignment = taRightJustify
            Caption = 'Ajsute al mínimo'
            Width = 83
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_AJUS_MINI_ESTANDAR'
            SummaryFooterType = cstSum
            SummaryFooterField = 'VALO_AJUS_MINI_ESTANDAR'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridEFIC_NO_ESTANDAR: TdxDBGridMaskColumn
            Caption = 'No estándar'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EFIC_NO_ESTANDAR'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'EFIC_NO_ESTANDAR'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridVALO_AJUS_MINI_NO_ESTANDA: TdxDBGridMaskColumn
            Caption = 'Ajsute al mínimo'
            Width = 83
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_AJUS_MINI_NO_ESTANDA'
            SummaryFooterType = cstSum
            SummaryFooterField = 'VALO_AJUS_MINI_NO_ESTANDA'
            SummaryFooterFormat = ',0.00 %'
          end
          object padr_gridTIEM_EXTR_TOTAL: TdxDBGridMaskColumn
            Caption = 'Horas extras'
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIEM_EXTR_TOTAL'
            SummaryFooterType = cstSum
            SummaryFooterField = 'TIEM_EXTR_TOTAL'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridVALO_BONO_EXTR_TOTAL: TdxDBGridMaskColumn
            Caption = 'Bono H/Extras'
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_BONO_EXTR_TOTAL'
            SummaryFooterType = cstSum
            SummaryFooterField = 'VALO_BONO_EXTR_TOTAL'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridEFIC_TOTAL: TdxDBGridMaskColumn
            Caption = 'Promedio eficiencia'
            Width = 98
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EFIC_TOTAL'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'EFIC_TOTAL'
            SummaryFooterFormat = ',0.00 %'
          end
          object padr_gridVALO_AJUS_MINI_TOTAL: TdxDBGridMaskColumn
            Caption = 'Ajsute al mínimo'
            Width = 83
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_AJUS_MINI_TOTAL'
            SummaryFooterType = cstSum
            SummaryFooterField = 'VALO_AJUS_MINI_TOTAL'
            SummaryFooterFormat = ',0.00'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          Width = 731
          inherited padr_barra: TTBXToolbar
            object TBXItem1: TTBXItem [12]
              Action = padr_acti_imprimir
              Images = padr_imagenes
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
          Width = 731
          TabOrder = 3
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 731
          TabOrder = 4
          inherited padr_sepa_new: TShape
            Width = 725
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 225
          Height = 207
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 185
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 536
          Top = 225
          Height = 207
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 185
              inherited padr_prio_impresion: TdxTreeList
                Height = 26
              end
            end
          end
        end
        object pane_filtros: TPCPFrame
          Tag = 173
          Left = 0
          Top = 52
          Width = 731
          Height = 173
          Align = alTop
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
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
          object edit_fech_inicial: TdxDateEdit
            Left = 119
            Top = 29
            Width = 121
            TabOrder = 0
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
                Visible = False
              end
              inherited comb_ubic_empresa: TPCPLookUpComboEdit
                OnChange = fram_ubicacioncomb_ubic_empresaChange
              end
              inherited comb_ubic_area: TPCPLookUpComboEdit
                Enabled = False
                Visible = False
              end
              inherited SCLButton7: TTBXButton
                Visible = False
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
          object Panel2: TPanel
            Left = 888
            Top = 168
            Width = 185
            Height = 41
            Caption = 'Panel2'
            TabOrder = 6
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
          object chec_minutos: TRadioButton
            Left = 223
            Top = 52
            Width = 81
            Height = 17
            Caption = 'Minutos'
            TabOrder = 2
            OnClick = doActualizarConsulta
          end
        end
        object pane_reporte: TPCPFrame
          Tag = 200
          Left = 195
          Top = 225
          Width = 341
          Height = 207
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
          Titulo_Color = 16244694
          TipoFrame = tfNinguno
          FlatBorder = True
          object grid: TdxMasterView
            Left = 3
            Top = 3
            Width = 335
            Height = 201
            Align = alClient
            TabOrder = 1
            OptionsView = [movAnimation, movAutoColumnWidth, movHideFocusRect, movKeepColumnWidths, movTransparentDragAndDrop, movUseBitmapToDrawPreview]
            object Estilo_Maestro: TdxMasterViewStyle
              Color = clRed
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              AssignedValues = [svColor, svFont]
            end
            object Estilo_detalle: TdxMasterViewStyle
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              AssignedValues = [svFont]
            end
            object gridLevel1: TdxMasterViewLevel
              ContentStyle = Estilo_Maestro
              DataSource = data_ventana
              ID = 'CONS_PERSONAL'
              OptionsCustomize = [locColumnMoving, locColumnHorSizing, locColumnVerSizing, locColumnSorting, locColumnGrouping, locHideColumnOnGrouping, locShowColumnOnUngrouping]
              OptionsHeader = [lohForFirstVisibleNode]
              OptionsView = [lovFooter, lovGroupByBox, lovHeader, lovNoButtonsWhenNoChildren, lovOccupyRestSpace]
              object gridLevel1CONS_PERSONAL: TdxMasterViewColumn
                FieldName = 'CONS_PERSONAL'
                Options = [coHorSizing, coMoving, coSorting, coVerSizing, coShowCaption]
                RowIndex = 0
                ColIndex = 0
                Visible = False
              end
              object gridLevel1CODI_PERSONAL: TdxMasterViewColumn
                FieldName = 'CODI_PERSONAL'
                Options = [coHorSizing, coMoving, coSorting, coVerSizing, coShowCaption]
                RowIndex = 0
                ColIndex = 0
                SummaryFormat = ',0'
                SummaryType = stCount
              end
              object gridLevel1NOMB_COMPLETO: TdxMasterViewColumn
                FieldName = 'NOMB_COMPLETO'
                Options = [coHorSizing, coMoving, coSorting, coVerSizing, coShowCaption]
                RowIndex = 0
                ColIndex = 1
              end
              object gridLevel1CONS_EMPRESA: TdxMasterViewColumn
                FieldName = 'CONS_EMPRESA'
                RowIndex = 0
                ColIndex = 3
                Visible = False
              end
              object gridLevel1NOMB_EMPRESA: TdxMasterViewColumn
                FieldName = 'NOMB_EMPRESA'
                RowIndex = 0
                ColIndex = 3
                Visible = False
              end
              object gridLevel1CONS_PLANTA: TdxMasterViewColumn
                FieldName = 'CONS_PLANTA'
                RowIndex = 0
                ColIndex = 3
                Visible = False
              end
              object gridLevel1NOMB_PLANTA: TdxMasterViewColumn
                FieldName = 'NOMB_PLANTA'
                RowIndex = 0
                ColIndex = 2
              end
              object gridLevel1CONS_PLAN_LINEA: TdxMasterViewColumn
                FieldName = 'CONS_PLAN_LINEA'
                RowIndex = 0
                ColIndex = 4
                Visible = False
              end
              object gridLevel1NOMB_PLAN_LINEA: TdxMasterViewColumn
                FieldName = 'NOMB_PLAN_LINEA'
                RowIndex = 0
                ColIndex = 3
              end
              object gridLevel1CONS_LINE_SECCION: TdxMasterViewColumn
                FieldName = 'CONS_LINE_SECCION'
                RowIndex = 0
                ColIndex = 5
                Visible = False
              end
              object gridLevel1NOMB_LINE_SECCION: TdxMasterViewColumn
                FieldName = 'NOMB_LINE_SECCION'
                RowIndex = 0
                ColIndex = 4
              end
              object gridLevel2: TdxMasterViewLevel
                ContentStyle = Estilo_detalle
                DataSource = data_ventana2
                DetailKey = 'CONS_PERSONAL'
                ID = 'FECHA'
                LevelSeparatorWidth = 5
                MasterKey = 'CONS_PERSONAL'
                OptionsCustomize = [locColumnMoving, locColumnHorSizing, locColumnVerSizing, locColumnSorting, locColumnGrouping]
                OptionsHeader = [lohForFirstVisibleNode, lohAfterExpandedNode]
                OptionsView = [lovFooter, lovHeader, lovOccupyRestSpace]
                object gridLevel2CONS_PERSONAL: TdxMasterViewColumn
                  FieldName = 'CONS_PERSONAL'
                  FooterAlignment = taRightJustify
                  HeaderAlignment = taCenter
                  Options = [coHorSizing, coSorting, coVerSizing, coShowCaption]
                  RowIndex = 0
                  ColIndex = 0
                  Visible = False
                end
                object gridLevel2FECHA: TdxMasterViewColumn
                  Caption = 'Fecha'
                  ContentStyle = Estilo_detalle
                  FieldName = 'FECHA'
                  FooterAlignment = taRightJustify
                  HeaderAlignment = taCenter
                  Options = [coHorSizing, coSorting, coVerSizing, coShowCaption]
                  RowIndex = 0
                  ColIndex = 0
                end
                object gridLevel2REPORTA: TdxMasterViewCheckColumn
                  Caption = 'Reporta'
                  ContentStyle = Estilo_detalle
                  FieldName = 'REPORTA'
                  FooterAlignment = taRightJustify
                  HeaderAlignment = taCenter
                  Options = [coHorSizing, coSorting, coVerSizing, coShowCaption]
                  RowIndex = 0
                  ColIndex = 1
                  Visible = False
                  ValueChecked = '1'
                  ValueUnchecked = '-1'
                end
                object gridLevel2EFIC_ESTANDAR: TdxMasterViewColumn
                  Caption = 'En estándar'
                  ContentStyle = Estilo_detalle
                  FieldName = 'EFIC_ESTANDAR'
                  FooterAlignment = taRightJustify
                  HeaderAlignment = taCenter
                  Options = [coHorSizing, coSorting, coVerSizing, coShowCaption]
                  RowIndex = 0
                  ColIndex = 1
                  SummaryFormat = ',0.000 %'
                  SummaryType = stAverage
                  OnCalcSummary = gridLevel2EFIC_ESTANDARCalcSummary
                end
                object gridLevel2VALO_AJUS_MINI_ESTANDAR: TdxMasterViewColumn
                  Caption = 'Ajuste al mínimo'
                  ContentStyle = Estilo_detalle
                  FieldName = 'VALO_AJUS_MINI_ESTANDAR'
                  FooterAlignment = taRightJustify
                  HeaderAlignment = taCenter
                  Options = [coHorSizing, coSorting, coVerSizing, coShowCaption]
                  RowIndex = 0
                  ColIndex = 2
                  SummaryFormat = ',0.00'
                  SummaryType = stSum
                end
                object gridLevel2EFIC_NO_ESTANDAR: TdxMasterViewColumn
                  Caption = 'No estándar'
                  ContentStyle = Estilo_detalle
                  FieldName = 'EFIC_NO_ESTANDAR'
                  FooterAlignment = taRightJustify
                  HeaderAlignment = taCenter
                  Options = [coHorSizing, coSorting, coVerSizing, coShowCaption]
                  RowIndex = 0
                  ColIndex = 3
                  SummaryFormat = ',0.000 %'
                  SummaryType = stAverage
                  OnCalcSummary = gridLevel2EFIC_NO_ESTANDARCalcSummary
                end
                object gridLevel2VALO_AJUS_MINI_NO_ESTANDA: TdxMasterViewColumn
                  Caption = 'Ajuste al mínimo'
                  ContentStyle = Estilo_detalle
                  FieldName = 'VALO_AJUS_MINI_NO_ESTANDA'
                  FooterAlignment = taRightJustify
                  HeaderAlignment = taCenter
                  Options = [coHorSizing, coSorting, coVerSizing, coShowCaption]
                  RowIndex = 0
                  ColIndex = 4
                  SummaryFormat = ',0.00'
                  SummaryType = stSum
                end
                object gridLevel2TIEM_EXTR_TOTAL: TdxMasterViewColumn
                  Caption = 'Horas Extras'
                  ContentStyle = Estilo_detalle
                  FieldName = 'TIEM_EXTR_TOTAL'
                  FooterAlignment = taRightJustify
                  HeaderAlignment = taCenter
                  Options = [coHorSizing, coSorting, coVerSizing, coShowCaption]
                  RowIndex = 0
                  ColIndex = 5
                  SummaryFormat = ',0.00'
                  SummaryType = stSum
                end
                object gridLevel2VALO_BONO_EXTR_TOTAL: TdxMasterViewColumn
                  Caption = 'Bono H/Extras'
                  ContentStyle = Estilo_detalle
                  FieldName = 'VALO_BONO_EXTR_TOTAL'
                  FooterAlignment = taRightJustify
                  HeaderAlignment = taCenter
                  Options = [coHorSizing, coSorting, coVerSizing, coShowCaption]
                  RowIndex = 0
                  ColIndex = 6
                  SummaryFormat = ',0.00'
                  SummaryType = stSum
                end
                object gridLevel2EFIC_TOTAL: TdxMasterViewColumn
                  Caption = 'Promedio eficiencia'
                  ContentStyle = Estilo_detalle
                  FieldName = 'EFIC_TOTAL'
                  FooterAlignment = taRightJustify
                  HeaderAlignment = taCenter
                  Options = [coHorSizing, coSorting, coVerSizing, coShowCaption]
                  RowIndex = 0
                  ColIndex = 7
                  SummaryFormat = ',0.000 %'
                  SummaryType = stAverage
                  OnCalcSummary = gridLevel2EFIC_TOTALCalcSummary
                end
                object gridLevel2VALO_AJUS_MINI_TOTAL: TdxMasterViewColumn
                  Caption = 'Ajuste al mínimo'
                  ContentStyle = Estilo_detalle
                  FieldName = 'VALO_AJUS_MINI_TOTAL'
                  FooterAlignment = taRightJustify
                  HeaderAlignment = taCenter
                  Options = [coHorSizing, coSorting, coVerSizing, coShowCaption]
                  RowIndex = 0
                  ColIndex = 8
                  SummaryFormat = ',0.00'
                  SummaryType = stSum
                end
              end
            end
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    Width = 767
    inherited padr_pane_2: TPanel
      Left = 696
    end
    inherited padr_pane_cerrar: TPanel
      Left = 714
    end
    inherited padr_pane_titulo: TPCPTituloGradiente
      Width = 696
      LabelCaption = 'Eficiencia diaria operario'
      Caption = 'Eficiencia diaria operario'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 759
    Width = 8
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
    Width = 767
  end
  inherited padr_dock_bottom: TTBXDock
    Width = 767
  end
  inherited padr_dock_right: TTBXDock
    Left = 750
  end
  inherited data_ventana: TDataSource
    DataSet = nil
    Left = 700
    Top = 154
  end
  inherited padr_imagenes: TImageList
    Left = 137
    Top = 28
  end
  inherited consulta: TQuery
    BeforeOpen = consultaBeforeOpen
    DatabaseName = 'PCPLOCAL'
    Left = 672
    Top = 154
    object consultaCONS_PERSONAL: TIntegerField
      FieldName = 'CONS_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_PERSONAL'
    end
    object consultaCODI_PERSONAL: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CODI_PERSONAL'
      Size = 12
    end
    object consultaNOMB_COMPLETO: TStringField
      DisplayLabel = 'Nombres'
      FieldName = 'NOMB_COMPLETO'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_COMPLETO'
      Size = 102
    end
    object consultaCONS_EMPRESA: TIntegerField
      FieldKind = fkLookup
      FieldName = 'CONS_EMPRESA'
      LookupDataSet = quer_ubicacion
      LookupKeyFields = 'CONS_PERSONAL'
      LookupResultField = 'CONS_EMPRESA'
      KeyFields = 'CONS_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_EMPRESA'
      Lookup = True
    end
    object consultaNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldKind = fkLookup
      FieldName = 'NOMB_EMPRESA'
      LookupDataSet = quer_ubicacion
      LookupKeyFields = 'CONS_PERSONAL'
      LookupResultField = 'NOMB_EMPRESA'
      KeyFields = 'CONS_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_EMPRESA'
      Size = 60
      Lookup = True
    end
    object consultaCONS_PLANTA: TIntegerField
      FieldKind = fkLookup
      FieldName = 'CONS_PLANTA'
      LookupDataSet = quer_ubicacion
      LookupKeyFields = 'CONS_PERSONAL'
      LookupResultField = 'CONS_PLANTA'
      KeyFields = 'CONS_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_PLANTA'
      Lookup = True
    end
    object consultaNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta'
      FieldKind = fkLookup
      FieldName = 'NOMB_PLANTA'
      LookupDataSet = quer_ubicacion
      LookupKeyFields = 'CONS_PERSONAL'
      LookupResultField = 'NOMB_PLANTA'
      KeyFields = 'CONS_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_PLANTA'
      Size = 60
      Lookup = True
    end
    object consultaCONS_PLAN_LINEA: TIntegerField
      FieldKind = fkLookup
      FieldName = 'CONS_PLAN_LINEA'
      LookupDataSet = quer_ubicacion
      LookupKeyFields = 'CONS_PERSONAL'
      LookupResultField = 'CONS_PLAN_LINEA'
      KeyFields = 'CONS_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_PLAN_LINEA'
      Lookup = True
    end
    object consultaNOMB_PLAN_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldKind = fkLookup
      FieldName = 'NOMB_PLAN_LINEA'
      LookupDataSet = quer_ubicacion
      LookupKeyFields = 'CONS_PERSONAL'
      LookupResultField = 'NOMB_PLAN_LINEA'
      KeyFields = 'CONS_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_PLAN_LINEA'
      Size = 60
      Lookup = True
    end
    object consultaCONS_LINE_SECCION: TIntegerField
      FieldKind = fkLookup
      FieldName = 'CONS_LINE_SECCION'
      LookupDataSet = quer_ubicacion
      LookupKeyFields = 'CONS_PERSONAL'
      LookupResultField = 'CONS_LINE_SECCION'
      KeyFields = 'CONS_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_LINE_SECCION'
      Lookup = True
    end
    object consultaNOMB_LINE_SECCION: TStringField
      DisplayLabel = 'Sección'
      FieldKind = fkLookup
      FieldName = 'NOMB_LINE_SECCION'
      LookupDataSet = quer_ubicacion
      LookupKeyFields = 'CONS_PERSONAL'
      LookupResultField = 'NOMB_LINE_SECCION'
      KeyFields = 'CONS_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_LINE_SECCION'
      Size = 60
      Lookup = True
    end
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
    TableName = 'tmpRpt_cont_efic_diarias'
    Left = 64
    Top = 63
  end
  object consulta2: TQuery
    BeforeOpen = consulta2BeforeOpen
    DatabaseName = 'PCPLOCAL'
    Left = 672
    Top = 182
    object consulta2FECHA: TDateTimeField
      FieldName = 'FECHA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".FECHA'
    end
    object consulta2CONS_PERSONAL: TIntegerField
      FieldName = 'CONS_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_PERSONAL'
    end
    object consulta2CODI_PERSONAL: TStringField
      FieldName = 'CODI_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CODI_PERSONAL'
      Size = 12
    end
    object consulta2NOMB_COMPLETO: TStringField
      FieldName = 'NOMB_COMPLETO'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_COMPLETO'
      Size = 102
    end
    object consulta2CONS_EMPRESA: TIntegerField
      FieldName = 'CONS_EMPRESA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_EMPRESA'
    end
    object consulta2NOMB_EMPRESA: TStringField
      FieldName = 'NOMB_EMPRESA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_EMPRESA'
      Size = 60
    end
    object consulta2CONS_PLANTA: TIntegerField
      FieldName = 'CONS_PLANTA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_PLANTA'
    end
    object consulta2NOMB_PLANTA: TStringField
      FieldName = 'NOMB_PLANTA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_PLANTA'
      Size = 60
    end
    object consulta2CONS_PLAN_LINEA: TIntegerField
      FieldName = 'CONS_PLAN_LINEA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_PLAN_LINEA'
    end
    object consulta2NOMB_PLAN_LINEA: TStringField
      FieldName = 'NOMB_PLAN_LINEA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_PLAN_LINEA'
      Size = 60
    end
    object consulta2CONS_LINE_SECCION: TIntegerField
      FieldName = 'CONS_LINE_SECCION'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_LINE_SECCION'
    end
    object consulta2NOMB_LINE_SECCION: TStringField
      FieldName = 'NOMB_LINE_SECCION'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_LINE_SECCION'
      Size = 60
    end
    object consulta2REPORTA: TIntegerField
      FieldName = 'REPORTA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".REPORTA'
    end
    object consulta2TIEM_TRAB_ESTANDAR: TFloatField
      FieldName = 'TIEM_TRAB_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_TRAB_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consulta2TIEM_TRAB_NO_ESTANDAR: TFloatField
      FieldName = 'TIEM_TRAB_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_TRAB_NO_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consulta2TIEM_TRAB_TOTAL: TFloatField
      FieldName = 'TIEM_TRAB_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_TRAB_TOTAL'
      DisplayFormat = ',0.00'
    end
    object consulta2TIEM_PROD_ESTANDAR: TFloatField
      FieldName = 'TIEM_PROD_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_PROD_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consulta2TIEM_PROD_NO_ESTANDAR: TFloatField
      FieldName = 'TIEM_PROD_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_PROD_NO_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consulta2TIEM_PROD_TOTAL: TFloatField
      FieldName = 'TIEM_PROD_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_PROD_TOTAL'
      DisplayFormat = ',0.00'
    end
    object consulta2EFIC_NO_ESTANDAR: TFloatField
      FieldName = 'EFIC_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".EFIC_NO_ESTANDAR'
      DisplayFormat = ',0.00 %'
    end
    object consulta2EFIC_ESTANDAR: TFloatField
      FieldName = 'EFIC_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".EFIC_ESTANDAR'
      DisplayFormat = ',0.00 %'
    end
    object consulta2EFIC_TOTAL: TFloatField
      FieldName = 'EFIC_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".EFIC_TOTAL'
      DisplayFormat = ',0.00 %'
    end
    object consulta2VALO_GANA_PROD_ESTANDAR: TFloatField
      FieldName = 'VALO_GANA_PROD_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_GANA_PROD_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consulta2VALO_GANA_PROD_NO_ESTANDA: TFloatField
      FieldName = 'VALO_GANA_PROD_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_GANA_PROD_NO_ESTANDA'
      DisplayFormat = ',0.00'
    end
    object consulta2VALO_GANA_PROD_TOTAL: TFloatField
      FieldName = 'VALO_GANA_PROD_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_GANA_PROD_TOTAL'
      DisplayFormat = ',0.00'
    end
    object consulta2VALO_AJUS_MINI_ESTANDAR: TFloatField
      FieldName = 'VALO_AJUS_MINI_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_AJUS_MINI_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consulta2VALO_AJUS_MINI_NO_ESTANDA: TFloatField
      FieldName = 'VALO_AJUS_MINI_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_AJUS_MINI_NO_ESTANDA'
      DisplayFormat = ',0.00'
    end
    object consulta2VALO_AJUS_MINI_TOTAL: TFloatField
      FieldName = 'VALO_AJUS_MINI_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_AJUS_MINI_TOTAL'
      DisplayFormat = ',0.00'
    end
    object consulta2VALO_BONO_PROD_ESTANDAR: TFloatField
      FieldName = 'VALO_BONO_PROD_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_BONO_PROD_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consulta2VALO_BONO_PROD_NO_ESTANDA: TFloatField
      FieldName = 'VALO_BONO_PROD_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_BONO_PROD_NO_ESTANDA'
      DisplayFormat = ',0.00'
    end
    object consulta2VALO_BONO_PROD_TOTAL: TFloatField
      FieldName = 'VALO_BONO_PROD_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_BONO_PROD_TOTAL'
      DisplayFormat = ',0.00'
    end
    object consulta2TIEM_EXTR_ESTANDAR: TFloatField
      FieldName = 'TIEM_EXTR_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_EXTR_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consulta2TIEM_EXTR_NO_ESTANDAR: TFloatField
      FieldName = 'TIEM_EXTR_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_EXTR_NO_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consulta2TIEM_EXTR_TOTAL: TFloatField
      FieldName = 'TIEM_EXTR_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_EXTR_TOTAL'
      DisplayFormat = ',0.00'
    end
    object consulta2VALO_BONO_EXTR_ESTANDAR: TFloatField
      FieldName = 'VALO_BONO_EXTR_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_BONO_EXTR_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consulta2VALO_BONO_EXTR_NO_ESTANDA: TFloatField
      FieldName = 'VALO_BONO_EXTR_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_BONO_EXTR_NO_ESTANDA'
      DisplayFormat = ',0.00'
    end
    object consulta2VALO_BONO_EXTR_TOTAL: TFloatField
      FieldName = 'VALO_BONO_EXTR_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_BONO_EXTR_TOTAL'
      DisplayFormat = ',0.00'
    end
    object consulta2VALO_DEVE_ESTANDAR: TFloatField
      FieldName = 'VALO_DEVE_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_DEVE_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consulta2VALO_DEVE_NO_ESTANDAR: TFloatField
      FieldName = 'VALO_DEVE_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_DEVE_NO_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object consulta2VALO_DEVE_TOTAL: TFloatField
      FieldName = 'VALO_DEVE_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_DEVE_TOTAL'
      DisplayFormat = ',0.00'
    end
  end
  object data_ventana2: TDataSource
    DataSet = consulta2
    Left = 700
    Top = 182
  end
  object quer_promedios: TQuery
    OnCalcFields = quer_promediosCalcFields
    DatabaseName = 'PCPLOCAL'
    SQL.Strings = (
      'SELECT'
      'CONS_PERSONAL,'
      'SUM(TIEM_TRAB_ESTANDAR) AS TIEM_TRAB_ESTANDAR,'
      'SUM(TIEM_TRAB_NO_ESTANDAR) AS TIEM_TRAB_NO_ESTANDA,'
      'SUM(TIEM_TRAB_TOTAL) AS TIEM_TRAB_TOTAL,'
      'SUM(TIEM_PROD_ESTANDAR) AS TIEM_PROD_ESTANDAR,'
      'SUM(TIEM_PROD_NO_ESTANDAR) AS TIEM_PROD_NO_ESTANDAR,'
      'SUM(TIEM_PROD_TOTAL) AS TIEM_PROD_TOTAL,'
      'SUM(VALO_AJUS_MINI_ESTANDAR) AS VALO_AJUS_MINI_ESTANDAR,'
      'SUM(VALO_AJUS_MINI_NO_ESTANDA) AS VALO_AJUS_MINI_NO_ESTANDA,'
      'SUM(VALO_AJUS_MINI_TOTAL) AS VALO_AJUS_MINI_TOTAL,'
      'SUM(TIEM_EXTR_TOTAL) AS TIEM_EXTR_TOTAL,'
      'SUM(VALO_BONO_EXTR_TOTAL) AS VALO_BONO_EXTR_TOTAL'
      'FROM "TMPRPT_CONT_EFIC_DIARIAS"'
      'GROUP BY CONS_PERSONAL'
      '')
    Left = 671
    Top = 210
    object quer_promediosCONS_PERSONAL: TIntegerField
      FieldName = 'CONS_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_PERSONAL'
    end
    object quer_promediosTIEM_TRAB_ESTANDAR: TFloatField
      FieldName = 'TIEM_TRAB_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_TRAB_ESTANDAR'
    end
    object quer_promediosTIEM_TRAB_NO_ESTANDA: TFloatField
      FieldName = 'TIEM_TRAB_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_TRAB_NO_ESTANDAR'
    end
    object quer_promediosTIEM_TRAB_TOTAL: TFloatField
      FieldName = 'TIEM_TRAB_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_TRAB_TOTAL'
    end
    object quer_promediosTIEM_PROD_ESTANDAR: TFloatField
      FieldName = 'TIEM_PROD_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_PROD_ESTANDAR'
    end
    object quer_promediosTIEM_PROD_NO_ESTANDAR: TFloatField
      FieldName = 'TIEM_PROD_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_PROD_NO_ESTANDAR'
    end
    object quer_promediosTIEM_PROD_TOTAL: TFloatField
      FieldName = 'TIEM_PROD_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_PROD_TOTAL'
    end
    object quer_promediosVALO_AJUS_MINI_ESTANDAR: TFloatField
      FieldName = 'VALO_AJUS_MINI_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_AJUS_MINI_ESTANDAR'
    end
    object quer_promediosVALO_AJUS_MINI_NO_ESTANDA: TFloatField
      FieldName = 'VALO_AJUS_MINI_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_AJUS_MINI_NO_ESTANDA'
    end
    object quer_promediosVALO_AJUS_MINI_TOTAL: TFloatField
      FieldName = 'VALO_AJUS_MINI_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_AJUS_MINI_TOTAL'
    end
    object quer_promediosTIEM_EXTR_TOTAL: TFloatField
      FieldName = 'TIEM_EXTR_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_EXTR_TOTAL'
    end
    object quer_promediosVALO_BONO_EXTR_TOTAL: TFloatField
      FieldName = 'VALO_BONO_EXTR_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_BONO_EXTR_TOTAL'
    end
    object quer_promediosEFIC_ESTANDAR: TFloatField
      FieldKind = fkCalculated
      FieldName = 'EFIC_ESTANDAR'
      Calculated = True
    end
    object quer_promediosEFIC_NO_ESTANDAR: TFloatField
      FieldKind = fkCalculated
      FieldName = 'EFIC_NO_ESTANDAR'
      Calculated = True
    end
    object quer_promediosEFIC_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'EFIC_TOTAL'
      Calculated = True
    end
  end
  object quer_ubicacion: TQuery
    DatabaseName = 'PCPLOCAL'
    FilterOptions = [foCaseInsensitive]
    SQL.Strings = (
      'SELECT DISTINCT '
      'CONS_PERSONAL,'
      'CONS_EMPRESA, NOMB_EMPRESA,'
      'CONS_PLANTA, NOMB_PLANTA,'
      'CONS_PLAN_LINEA, NOMB_PLAN_LINEA,'
      'CONS_LINE_SECCION, NOMB_LINE_SECCION'
      ''
      'FROM tmpRpt_cont_efic_diarias'
      'ORDER BY CONS_PERSONAL')
    Left = 671
    Top = 238
    object quer_ubicacionCONS_PERSONAL: TIntegerField
      FieldName = 'CONS_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_PERSONAL'
    end
    object quer_ubicacionCONS_EMPRESA: TIntegerField
      FieldName = 'CONS_EMPRESA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_EMPRESA'
    end
    object quer_ubicacionNOMB_EMPRESA: TStringField
      FieldName = 'NOMB_EMPRESA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_EMPRESA'
      Size = 60
    end
    object quer_ubicacionCONS_PLANTA: TIntegerField
      FieldName = 'CONS_PLANTA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_PLANTA'
    end
    object quer_ubicacionNOMB_PLANTA: TStringField
      FieldName = 'NOMB_PLANTA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_PLANTA'
      Size = 60
    end
    object quer_ubicacionCONS_PLAN_LINEA: TIntegerField
      FieldName = 'CONS_PLAN_LINEA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_PLAN_LINEA'
    end
    object quer_ubicacionNOMB_PLAN_LINEA: TStringField
      FieldName = 'NOMB_PLAN_LINEA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_PLAN_LINEA'
      Size = 60
    end
    object quer_ubicacionCONS_LINE_SECCION: TIntegerField
      FieldName = 'CONS_LINE_SECCION'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_LINE_SECCION'
    end
    object quer_ubicacionNOMB_LINE_SECCION: TStringField
      FieldName = 'NOMB_LINE_SECCION'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_LINE_SECCION'
      Size = 60
    end
  end
end

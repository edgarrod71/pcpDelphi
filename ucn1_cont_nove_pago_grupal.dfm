inherited cn1_cont_nove_pago_grupal: Tcn1_cont_nove_pago_grupal
  Left = 67
  Top = 140
  Height = 535
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 498
  end
  inherited padr_pane_1: TPanel
    Height = 465
    inherited padr_pagina: TdxPageControl
      Height = 455
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Top = 203
          Height = 228
          Bands = <
            item
              Caption = 'Personal'
            end
            item
              Caption = 'Minutos'
            end
            item
              Caption = 'Pago'
            end>
          DefaultLayout = False
          KeyField = 'CONS_PERSONAL'
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
                  ColumnName = 'padr_gridCODI_PERSONAL'
                  SummaryField = 'CONS_PERSONAL'
                  SummaryFormat = ',0'
                  SummaryType = cstCount
                end
                item
                  ColumnName = 'padr_gridMINU_CONTRATADOS'
                  SummaryField = 'MINU_CONTRATADOS'
                  SummaryFormat = ',0'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'padr_gridMINU_AUSENTISMOS'
                  SummaryField = 'MINU_AUSENTISMOS'
                  SummaryFormat = ',0'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'padr_gridMINU_EXTRAS'
                  SummaryField = 'MINU_EXTRAS'
                  SummaryFormat = ',0'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'padr_gridMINU_PRESENCIALES'
                  SummaryField = 'MINU_PRESENCIALES'
                  SummaryFormat = ',0'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'padr_gridMINU_IMPRODUCTIVOS'
                  SummaryField = 'MINU_IMPRODUCTIVOS'
                  SummaryFormat = ',0'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'padr_gridMINU_TRABAJADOS'
                  SummaryField = 'MINU_TRABAJADOS'
                  SummaryFormat = ',0'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'padr_gridMINU_TIQU_CORTE'
                  SummaryField = 'MINU_TIQU_CORTE'
                  SummaryFormat = ',0.00'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'padr_gridMINU_TIQU_FABRICACION'
                  SummaryField = 'MINU_TIQU_FABRICACION'
                  SummaryFormat = ',0.00'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'padr_gridMINU_ABONADOS'
                  SummaryField = 'MINU_ABONADOS'
                  SummaryFormat = ',0.00'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'padr_gridMINU_OBTENIDOS'
                  SummaryField = 'MINU_OBTENIDOS'
                  SummaryFormat = ',0.00'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'padr_gridINDI_1'
                  SummaryField = 'INDI_1'
                  SummaryFormat = ',0.00'
                  SummaryType = cstAvg
                end
                item
                  ColumnName = 'padr_gridINDI_2'
                  SummaryField = 'INDI_2'
                  SummaryFormat = ',0.00'
                  SummaryType = cstAvg
                end
                item
                  ColumnName = 'padr_gridINDI_3'
                  SummaryField = 'INDI_3'
                  SummaryFormat = ',0.00'
                  SummaryType = cstAvg
                end
                item
                  ColumnName = 'padr_gridVALO_MINI_GARANTIZADO'
                  SummaryField = 'VALO_MINI_GARANTIZADO'
                  SummaryFormat = ',0.00'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'padr_gridVALO_GANA_PRODUCCION'
                  SummaryField = 'VALO_GANA_PRODUCCION'
                  SummaryFormat = ',0.00'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'padr_gridVALO_AJUS_AL_MINIMO'
                  SummaryField = 'VALO_AJUS_AL_MINIMO'
                  SummaryFormat = ',0.00'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'padr_gridVALO_BONO_PRODUCCION'
                  SummaryField = 'VALO_BONO_PRODUCCION'
                  SummaryFormat = ',0.00'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'padr_gridVALO_TOTA_DEVENGADO'
                  SummaryField = 'VALO_TOTA_DEVENGADO'
                  SummaryFormat = ',0.00'
                  SummaryType = cstSum
                end>
              Name = 'padr_gridSummaryGroup2'
            end>
          Visible = False
          Filter.Criteria = {00000000}
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoSmartRefresh, edgoSmartReload, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
          object padr_gridCONS_PERSONAL: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERSONAL'
          end
          object padr_gridCODI_PERSONAL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERSONAL'
            SummaryFooterType = cstCount
            SummaryFooterField = 'CONS_PERSONAL'
            SummaryFooterFormat = ',0'
          end
          object padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COMPLETO'
          end
          object padr_gridCONS_EMPRESA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_EMPRESA'
          end
          object padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_EMPRESA'
          end
          object padr_gridCONS_AREA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_AREA'
          end
          object padr_gridNOMB_AREA: TdxDBGridMaskColumn
            Sorted = csUp
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_AREA'
          end
          object padr_gridCONS_PLANTA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PLANTA'
          end
          object padr_gridNOMB_PLANTA: TdxDBGridMaskColumn
            Width = 53
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PLANTA'
          end
          object padr_gridCONS_PLAN_LINEA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PLAN_LINEA'
          end
          object padr_gridNOMB_PLAN_LINEA: TdxDBGridMaskColumn
            Width = 51
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PLAN_LINEA'
          end
          object padr_gridCONS_LINE_SECCION: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_LINE_SECCION'
          end
          object padr_gridNOMB_LINE_SECCION: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_LINE_SECCION'
          end
          object padr_gridCONS_TURNO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_TURNO'
          end
          object padr_gridCODI_TURNO: TdxDBGridMaskColumn
            Width = 51
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_TURNO'
          end
          object padr_gridTIPO_TURNO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIPO_TURNO'
          end
          object padr_gridMINU_CONTRATADOS: TdxDBGridMaskColumn
            BandIndex = 1
            RowIndex = 0
            FieldName = 'MINU_CONTRATADOS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_CONTRATADOS'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_AUSENTISMOS: TdxDBGridMaskColumn
            BandIndex = 1
            RowIndex = 0
            FieldName = 'MINU_AUSENTISMOS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_AUSENTISMOS'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_EXTRAS: TdxDBGridMaskColumn
            BandIndex = 1
            RowIndex = 0
            FieldName = 'MINU_EXTRAS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_EXTRAS'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_PRESENCIALES: TdxDBGridMaskColumn
            BandIndex = 1
            RowIndex = 0
            FieldName = 'MINU_PRESENCIALES'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_PRESENCIALES'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_IMPRODUCTIVOS: TdxDBGridMaskColumn
            BandIndex = 1
            RowIndex = 0
            FieldName = 'MINU_IMPRODUCTIVOS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_IMPRODUCTIVOS'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_TRABAJADOS: TdxDBGridMaskColumn
            BandIndex = 1
            RowIndex = 0
            FieldName = 'MINU_TRABAJADOS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_TRABAJADOS'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_TIQU_CORTE: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 1
            RowIndex = 0
            FieldName = 'MINU_TIQU_CORTE'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_TIQU_CORTE'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridMINU_TIQU_FABRICACION: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 1
            RowIndex = 0
            FieldName = 'MINU_TIQU_FABRICACION'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_TIQU_FABRICACION'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridMINU_ABONADOS: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 1
            RowIndex = 0
            FieldName = 'MINU_ABONADOS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_ABONADOS'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridMINU_OBTENIDOS: TdxDBGridMaskColumn
            BandIndex = 1
            RowIndex = 0
            FieldName = 'MINU_OBTENIDOS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_OBTENIDOS'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridINDI_1: TdxDBGridMaskColumn
            BandIndex = 1
            RowIndex = 0
            FieldName = 'INDI_1'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'INDI_1'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridINDI_2: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 1
            RowIndex = 0
            FieldName = 'INDI_2'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'INDI_2'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridINDI_3: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 1
            RowIndex = 0
            FieldName = 'INDI_3'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'INDI_3'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridVALO_MINI_GARANTIZADO: TdxDBGridMaskColumn
            BandIndex = 2
            RowIndex = 0
            FieldName = 'VALO_MINI_GARANTIZADO'
            SummaryFooterType = cstSum
            SummaryFooterField = 'VALO_MINI_GARANTIZADO'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridVALO_GANA_PRODUCCION: TdxDBGridMaskColumn
            BandIndex = 2
            RowIndex = 0
            FieldName = 'VALO_GANA_PRODUCCION'
            SummaryFooterType = cstSum
            SummaryFooterField = 'VALO_GANA_PRODUCCION'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridVALO_AJUS_AL_MINIMO: TdxDBGridMaskColumn
            BandIndex = 2
            RowIndex = 0
            FieldName = 'VALO_AJUS_AL_MINIMO'
            SummaryFooterType = cstSum
            SummaryFooterField = 'VALO_AJUS_AL_MINIMO'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridVALO_BONO_PRODUCCION: TdxDBGridMaskColumn
            BandIndex = 2
            RowIndex = 0
            FieldName = 'VALO_BONO_PRODUCCION'
            SummaryFooterType = cstSum
            SummaryFooterField = 'VALO_BONO_PRODUCCION'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridVALO_TOTA_DEVENGADO: TdxDBGridMaskColumn
            BandIndex = 2
            RowIndex = 0
            FieldName = 'VALO_TOTA_DEVENGADO'
            SummaryFooterType = cstSum
            SummaryFooterField = 'VALO_TOTA_DEVENGADO'
            SummaryFooterFormat = ',0.00'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          inherited padr_barra: TTBXToolbar
            inherited padr_boto_vinculos: TTBXSubmenuItem
              LinkSubitems = _fMDI.menu_control_produccion
              Visible = True
            end
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 203
          Height = 228
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 206
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Top = 203
          Height = 228
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 206
            end
          end
        end
        object PCPFrame1: TPCPFrame
          Tag = 151
          Left = 0
          Top = 52
          Width = 556
          Height = 151
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
          Caption = 'Filtro de la consulta'
          Titulo_Color = 16244694
          FlatBorder = True
          object Panel1: TPanel
            Left = 3
            Top = 22
            Width = 550
            Height = 126
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            inline fram_filtro: Tffra_maqu_ubicacion
              Top = 27
              Width = 550
              Height = 99
              Align = alClient
              inherited pane_tipo_ubicacion: TPanel
                Width = 550
                inherited SCLDBLabel33: TSCLDBLabel
                  FontActive.Name = 'Tahoma'
                end
                inherited comb_tipo_ubicacion: TPCPLookUpComboEdit
                  OnChange = fram_filtrocomb_tipo_ubicacionChange
                end
              end
              inherited pane_ubic_propia: TPanel
                Width = 550
                inherited SCLDBLabel34: TSCLDBLabel
                  FontActive.Name = 'Tahoma'
                end
                inherited SCLDBLabel35: TSCLDBLabel
                  Left = 330
                  FontActive.Name = 'Tahoma'
                end
                inherited comb_ubic_empresa: TPCPLookUpComboEdit
                  OnChange = doActualizarConsulta
                end
                inherited comb_ubic_area: TPCPLookUpComboEdit
                  Left = 412
                  OnChange = doActualizarConsulta
                end
                inherited SCLButton6: TTBXButton
                  Visible = False
                end
                inherited SCLButton7: TTBXButton
                  Left = 608
                  Top = 1
                  Visible = False
                end
              end
              inherited pane_ubic_externa: TPanel
                Width = 550
                Height = 44
                inherited SCLDBLabel36: TSCLDBLabel
                  FontActive.Name = 'Tahoma'
                end
                inherited SCLDBLabel37: TSCLDBLabel
                  FontActive.Name = 'Tahoma'
                end
                inherited SCLDBLabel1: TSCLDBLabel
                  Left = 330
                  FontActive.Name = 'Tahoma'
                end
                inherited comb_ubic_planta: TPCPLookUpComboEdit
                  OnChange = doActualizarConsulta
                end
                inherited comb_ubic_seccion: TPCPLookUpComboEdit
                  OnChange = doActualizarConsulta
                end
                inherited SCLButton8: TTBXButton
                  Visible = False
                end
                inherited SCLButton9: TTBXButton
                  Top = 19
                  Visible = False
                end
                inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
                  Left = 412
                  OnChange = doActualizarConsulta
                end
                inherited SCLButton1: TTBXButton
                  Left = 607
                  Top = 7
                  Visible = False
                end
              end
              inherited pane_ubic_bodega: TPanel
                Top = 88
                Width = 550
                inherited SCLDBLabel39: TSCLDBLabel
                  Top = 0
                  FontActive.Name = 'Tahoma'
                end
                inherited comb_ubic_bodega: TPCPLookUpComboEdit
                  Top = 0
                  OnChange = doActualizarConsulta
                end
                inherited SCLButton10: TTBXButton
                  Visible = False
                end
              end
              inherited pane_ubic_otra: TPanel
                Top = 108
                Width = 550
                inherited SCLDBLabel38: TSCLDBLabel
                  FontActive.Name = 'Tahoma'
                end
                inherited edit_ubic_otra_ubicacion: TdxDBEdit
                  Width = 192
                  StyleController = padr_estilo
                end
              end
              inherited quer_maqu_ubicaciones: TQuery
                Left = 890
                Top = 81
              end
              inherited data_maqu_ubicaciones: TDataSource
                Left = 922
                Top = 81
              end
              inherited quer_empresas: TQuery
                Left = 890
                Top = 97
              end
              inherited data_empresas: TDataSource
                Left = 922
                Top = 97
              end
              inherited quer_areas: TQuery
                Left = 890
                Top = 113
              end
              inherited data_areas: TDataSource
                Left = 922
                Top = 113
              end
              inherited quer_plantas: TQuery
                Left = 890
                Top = 129
              end
              inherited data_plantas: TDataSource
                Left = 922
                Top = 129
              end
              inherited quer_secciones: TQuery
                Left = 890
                Top = 146
              end
              inherited data_secciones: TDataSource
                Left = 922
                Top = 146
              end
              inherited quer_bodegas: TQuery
                Left = 890
                Top = 162
              end
              inherited data_bodegas: TDataSource
                Left = 922
                Top = 162
              end
              inherited quer_lineas: TQuery
                Left = 954
                Top = 155
              end
              inherited data_lineas: TDataSource
                Left = 986
                Top = 155
              end
            end
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 550
              Height = 27
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object SCLDBLabel1: TSCLDBLabel
                Left = 0
                Top = 4
                Width = 90
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
                FocusControl = edit_fecha
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
                Left = 320
                Top = 4
                Width = 90
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
                FocusControl = edit_fech_final
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
              object edit_fecha: TdxDateEdit
                Left = 92
                Top = 4
                Width = 121
                TabOrder = 0
                Alignment = taLeftJustify
                StyleController = padr_estilo
                OnChange = edit_fechaChange
                Date = -700000
                DateOnError = deToday
                DateValidation = True
                SaveTime = False
                UseEditMask = True
                StoredValues = 5
              end
              object boto_hoy: TTBXButtonSCL
                Left = 216
                Top = 4
                Width = 54
                Height = 20
                AllowAllUnchecked = True
                BorderSize = 2
                ButtonStyle = bsFlat
                Caption = 'Hoy'
                ImageIndex = 63
                Images = _fMDI.imagenesPCP
                SmartFocus = False
                TabOrder = 1
                TabStop = False
              end
              object edit_fech_final: TdxDateEdit
                Left = 412
                Top = 4
                Width = 121
                TabOrder = 2
                Alignment = taLeftJustify
                StyleController = padr_estilo
                OnChange = edit_fech_finalChange
                Date = -700000
                DateOnError = deToday
                DateValidation = True
                SaveTime = False
                UseEditMask = True
                StoredValues = 5
              end
              object boto_hoy_2: TTBXButtonSCL
                Left = 536
                Top = 5
                Width = 54
                Height = 20
                AllowAllUnchecked = True
                BorderSize = 2
                ButtonStyle = bsFlat
                Caption = 'Hoy'
                ImageIndex = 63
                Images = _fMDI.imagenesPCP
                SmartFocus = False
                TabOrder = 3
                TabStop = False
                OnClick = boto_hoy_2Click
              end
            end
          end
        end
      end
    end
  end
  inherited padr_dock_izquierda: TTBXDock
    Height = 465
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Consulta grupal de devengados'
      Caption = 'Consulta grupal de devengados'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Height = 465
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
  inherited padr_dock_right: TTBXDock
    Height = 465
  end
  inherited data_ventana: TDataSource
    DataSet = nil
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_nuevo: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_modificar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_eliminar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_aceptar: TAction
      Enabled = False
    end
    inherited padr_acti_cancelar: TAction
      Enabled = False
    end
    inherited padr_acti_duplicar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_elim_todos: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_consultar: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited consulta: TQuery
    BeforeOpen = consultaBeforeOpen
    SQL.Strings = (
      'SELECT * FROM'
      'CON_PCP_CONT_NOVE_PAGO_RANG_CO('
      ':PE_FECH_INICIAL, '
      ':PE_FECH_FINAL)'
      'ORDER BY CODI_PERSONAL')
    ParamData = <
      item
        DataType = ftDate
        Name = 'PE_FECH_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PE_FECH_FINAL'
        ParamType = ptInput
      end>
    object consultaCONS_PERSONAL: TIntegerField
      DisplayLabel = 'Cons. personal'
      FieldName = 'CONS_PERSONAL'
    end
    object consultaCODI_PERSONAL: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERSONAL'
      Size = 12
    end
    object consultaNOMB_COMPLETO: TStringField
      DisplayLabel = 'Nombres'
      FieldName = 'NOMB_COMPLETO'
      Size = 102
    end
    object consultaCONS_EMPRESA: TIntegerField
      DisplayLabel = 'Cons. empresa'
      FieldName = 'CONS_EMPRESA'
    end
    object consultaNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Size = 60
    end
    object consultaCONS_AREA: TIntegerField
      DisplayLabel = 'Cons. area'
      FieldName = 'CONS_AREA'
    end
    object consultaNOMB_AREA: TStringField
      DisplayLabel = 'Area'
      DisplayWidth = 60
      FieldName = 'NOMB_AREA'
      Size = 60
    end
    object consultaCONS_PLANTA: TIntegerField
      DisplayLabel = 'Cons. planta'
      FieldName = 'CONS_PLANTA'
    end
    object consultaNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta'
      FieldName = 'NOMB_PLANTA'
      Size = 60
    end
    object consultaCONS_PLAN_LINEA: TIntegerField
      DisplayLabel = 'Cons. línea'
      FieldName = 'CONS_PLAN_LINEA'
    end
    object consultaNOMB_PLAN_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldName = 'NOMB_PLAN_LINEA'
      Size = 60
    end
    object consultaCONS_LINE_SECCION: TIntegerField
      DisplayLabel = 'Cons. sección'
      FieldName = 'CONS_LINE_SECCION'
    end
    object consultaNOMB_LINE_SECCION: TStringField
      DisplayLabel = 'Sección'
      FieldName = 'NOMB_LINE_SECCION'
      Size = 60
    end
    object consultaCONS_TURNO: TIntegerField
      DisplayLabel = 'Cons. turno'
      FieldName = 'CONS_TURNO'
    end
    object consultaCODI_TURNO: TStringField
      DisplayLabel = 'Turno'
      FieldName = 'CODI_TURNO'
      Size = 60
    end
    object consultaTIPO_TURNO: TStringField
      DisplayLabel = 'Tipo turno'
      FieldName = 'TIPO_TURNO'
      Size = 60
    end
    object consultaMINU_CONTRATADOS: TIntegerField
      DisplayLabel = 'Contratados'
      FieldName = 'MINU_CONTRATADOS'
    end
    object consultaMINU_AUSENTISMOS: TIntegerField
      DisplayLabel = 'Ausentismos'
      FieldName = 'MINU_AUSENTISMOS'
    end
    object consultaMINU_EXTRAS: TIntegerField
      DisplayLabel = 'Extras'
      FieldName = 'MINU_EXTRAS'
    end
    object consultaMINU_PRESENCIALES: TIntegerField
      DisplayLabel = 'Presenciales'
      FieldName = 'MINU_PRESENCIALES'
    end
    object consultaMINU_IMPRODUCTIVOS: TIntegerField
      DisplayLabel = 'Improductivos'
      FieldName = 'MINU_IMPRODUCTIVOS'
    end
    object consultaMINU_TRABAJADOS: TIntegerField
      DisplayLabel = 'Trabajados'
      FieldName = 'MINU_TRABAJADOS'
    end
    object consultaMINU_TIQU_CORTE: TFloatField
      DisplayLabel = 'Tiq. corte'
      FieldName = 'MINU_TIQU_CORTE'
    end
    object consultaMINU_TIQU_FABRICACION: TFloatField
      DisplayLabel = 'Tiq. fabricación'
      FieldName = 'MINU_TIQU_FABRICACION'
    end
    object consultaMINU_ABONADOS: TFloatField
      DisplayLabel = 'Abonados'
      FieldName = 'MINU_ABONADOS'
    end
    object consultaMINU_OBTENIDOS: TFloatField
      DisplayLabel = 'Obtenidos'
      FieldName = 'MINU_OBTENIDOS'
    end
    object consultaINDI_1: TFloatField
      FieldName = 'INDI_1'
    end
    object consultaINDI_2: TFloatField
      FieldName = 'INDI_2'
    end
    object consultaINDI_3: TFloatField
      FieldName = 'INDI_3'
    end
    object consultaVALO_MINI_GARANTIZADO: TFloatField
      DisplayLabel = 'Mínimo garantizado'
      FieldName = 'VALO_MINI_GARANTIZADO'
    end
    object consultaVALO_GANA_PRODUCCION: TFloatField
      DisplayLabel = 'Ganado producción'
      FieldName = 'VALO_GANA_PRODUCCION'
    end
    object consultaVALO_AJUS_AL_MINIMO: TFloatField
      DisplayLabel = 'Ajuste al mínimo'
      FieldName = 'VALO_AJUS_AL_MINIMO'
    end
    object consultaVALO_BONO_PRODUCCION: TFloatField
      DisplayLabel = 'Bono producción'
      FieldName = 'VALO_BONO_PRODUCCION'
    end
    object consultaVALO_TOTA_DEVENGADO: TFloatField
      DisplayLabel = 'Total devengado'
      FieldName = 'VALO_TOTA_DEVENGADO'
    end
  end
  inherited padr_popu_vist_actual: TTBXPopupMenu
    Top = 201
  end
  inherited Variables: TSCLPropiedadesForm
    Top = 210
  end
end

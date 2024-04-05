inherited cn1_cont_nove_diarias: Tcn1_cont_nove_diarias
  Left = -21
  Top = 6
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Top = 203
          Height = 229
          KeyField = 'CONS_PERSONAL'
          Filter.Criteria = {00000000}
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
          object padr_gridTIPO_REGISTRO: TdxDBGridCheckColumn
            Width = 20
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIPO_REGISTRO'
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object padr_gridCONS_PERSONAL: TdxDBGridMaskColumn
            Visible = False
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERSONAL'
          end
          object padr_gridCODI_PERSONAL: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERSONAL'
            SummaryFooterType = cstCount
            SummaryFooterField = 'CONS_PERSONAL'
            SummaryFooterFormat = ',0'
          end
          object padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn
            Width = 183
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COMPLETO'
          end
          object padr_gridCONS_CONT_NOVE_DIARIA: TdxDBGridMaskColumn
            Visible = False
            Width = 71
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_CONT_NOVE_DIARIA'
          end
          object padr_gridNUME_LECTURA: TdxDBGridMaskColumn
            Visible = False
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_LECTURA'
          end
          object padr_gridCONS_EMPRESA: TdxDBGridMaskColumn
            Visible = False
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_EMPRESA'
          end
          object padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn
            Width = 364
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_EMPRESA'
          end
          object padr_gridCONS_AREA: TdxDBGridMaskColumn
            Visible = False
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_AREA'
          end
          object padr_gridNOMB_AREA: TdxDBGridMaskColumn
            Visible = False
            Width = 383
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_AREA'
          end
          object padr_gridCONS_PLANTA: TdxDBGridMaskColumn
            Visible = False
            Width = 69
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
            Width = 68
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
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_LINE_SECCION'
          end
          object padr_gridNOMB_LINE_SECCION: TdxDBGridMaskColumn
            Width = 62
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_LINE_SECCION'
          end
          object padr_gridCONS_TURNO: TdxDBGridMaskColumn
            Visible = False
            Width = 68
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
            Width = 383
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIPO_TURNO'
          end
          object padr_gridMINU_CONTRATADOS: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_CONTRATADOS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_CONTRATADOS'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_AUSENTISMOS: TdxDBGridMaskColumn
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_AUSENTISMOS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_AUSENTISMOS'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_EXTRAS: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_EXTRAS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_EXTRAS'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_PRESENCIALES: TdxDBGridMaskColumn
            Width = 66
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_PRESENCIALES'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_PRESENCIALES'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_IMPRODUCTIVOS: TdxDBGridMaskColumn
            Width = 72
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_IMPRODUCTIVOS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_IMPRODUCTIVOS'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_TRABAJADOS: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_TRABAJADOS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_TRABAJADOS'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_TIQU_CORTE: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_TIQU_CORTE'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_TIQU_CORTE'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridMINU_TIQU_FABRICACION: TdxDBGridMaskColumn
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_TIQU_FABRICACION'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_TIQU_FABRICACION'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridMINU_ABONADOS: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_ABONADOS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_ABONADOS'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridMINU_OBTENIDOS: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_OBTENIDOS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_OBTENIDOS'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridINDI_1: TdxDBGridMaskColumn
            Visible = False
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'INDI_1'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'INDI_1'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridINDI_2: TdxDBGridMaskColumn
            Visible = False
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'INDI_2'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'INDI_2'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridINDI_3: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'INDI_3'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'INDI_3'
            SummaryFooterFormat = ',0.00'
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 203
          Height = 229
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 207
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Top = 203
          Height = 229
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 207
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
                Caption = 'Fecha consulta:'
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
                StyleController = padr_estilo
                OnChange = edit_fechaChange
                Date = -700000
                DateOnError = deToday
                DateValidation = True
                SaveTime = False
                UseEditMask = True
                StoredValues = 4
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
                OnClick = boto_hoyClick
              end
            end
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Consulta de novedades diarias de producción'
      Caption = 'Consulta de novedades diarias de producción'
    end
  end
  inherited padr_page_oculto: TdxPageControl
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
  inherited consulta: TQuery
    BeforeOpen = consultaBeforeOpen
    SQL.Strings = (
      'SELECT *'
      'FROM CON_PCP_CONT_NOVE_DIARIAS (:PE_FECHA);')
    ParamData = <
      item
        DataType = ftDate
        Name = 'PE_FECHA'
        ParamType = ptInput
      end>
    object consultaCONS_PERSONAL: TIntegerField
      DisplayLabel = 'No. personal'
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
    object consultaTIPO_REGISTRO: TIntegerField
      DisplayLabel = 'R'
      FieldName = 'TIPO_REGISTRO'
    end
    object consultaCONS_CONT_NOVE_DIARIA: TIntegerField
      DisplayLabel = 'No. novedad'
      FieldName = 'CONS_CONT_NOVE_DIARIA'
    end
    object consultaNUME_LECTURA: TIntegerField
      DisplayLabel = 'No. lectura'
      FieldName = 'NUME_LECTURA'
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
      DisplayFormat = ',0'
    end
    object consultaMINU_AUSENTISMOS: TIntegerField
      DisplayLabel = 'Ausentismos'
      FieldName = 'MINU_AUSENTISMOS'
      DisplayFormat = ',0'
    end
    object consultaMINU_EXTRAS: TIntegerField
      DisplayLabel = 'Extras'
      FieldName = 'MINU_EXTRAS'
      DisplayFormat = ',0'
    end
    object consultaMINU_PRESENCIALES: TIntegerField
      DisplayLabel = 'Presenciales'
      FieldName = 'MINU_PRESENCIALES'
      DisplayFormat = ',0'
    end
    object consultaMINU_IMPRODUCTIVOS: TIntegerField
      DisplayLabel = 'Improductivos'
      FieldName = 'MINU_IMPRODUCTIVOS'
      DisplayFormat = ',0'
    end
    object consultaMINU_TRABAJADOS: TIntegerField
      DisplayLabel = 'Trabajados'
      FieldName = 'MINU_TRABAJADOS'
      DisplayFormat = ',0'
    end
    object consultaMINU_TIQU_CORTE: TFloatField
      DisplayLabel = 'Tiqu. corte'
      FieldName = 'MINU_TIQU_CORTE'
      DisplayFormat = ',0.00'
    end
    object consultaMINU_TIQU_FABRICACION: TFloatField
      DisplayLabel = 'Tiqu. fabricación'
      FieldName = 'MINU_TIQU_FABRICACION'
      DisplayFormat = ',0.00'
    end
    object consultaMINU_ABONADOS: TFloatField
      DisplayLabel = 'Abonados'
      FieldName = 'MINU_ABONADOS'
      DisplayFormat = ',0.00'
    end
    object consultaMINU_OBTENIDOS: TFloatField
      DisplayLabel = 'Obtenidos'
      FieldName = 'MINU_OBTENIDOS'
      DisplayFormat = ',0.00'
    end
    object consultaINDI_1: TFloatField
      DisplayLabel = 'Indicador 1'
      FieldName = 'INDI_1'
      DisplayFormat = ',0.00 %'
    end
    object consultaINDI_2: TFloatField
      DisplayLabel = 'Indicador 2'
      FieldName = 'INDI_2'
      DisplayFormat = ',0.00 %'
    end
    object consultaINDI_3: TFloatField
      DisplayLabel = 'Indicador 3'
      FieldName = 'INDI_3'
      DisplayFormat = ',0.00 %'
    end
  end
end

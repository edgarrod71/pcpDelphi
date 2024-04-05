inherited cn1_pers_ubicacion: Tcn1_pers_ubicacion
  Left = 105
  Top = 34
  Height = 577
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 549
  end
  inherited padr_pane_1: TPanel
    Height = 507
    inherited padr_pagina: TdxPageControl
      Height = 497
      inherited fram_pagi_lista: TdxTabSheet
        object dfsSplitter1: TdfsSplitter [0]
          Left = 0
          Top = 192
          Height = 281
          Cursor = crHSplit
          Align = alLeft
          Visible = False
          Maximized = False
          Minimized = False
          ButtonCursor = crDefault
        end
        inherited padr_grid: TSCLDBGrid
          Left = 205
          Top = 192
          Width = 156
          Height = 281
          KeyField = 'CONS_PERSONAL'
          SummaryGroups = <
            item
              DefaultGroup = False
              SummaryItems = <>
              Name = 'padr_summary_grid'
            end
            item
              DefaultGroup = False
              SummaryItems = <
                item
                  ColumnName = 'padr_gridNOMB_COMPLETO'
                  SummaryField = 'CONS_PERSONAL'
                  SummaryFormat = ',0'
                  SummaryType = cstCount
                end>
              Name = 'padr_gridSummaryGroup2'
            end
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  SummaryField = 'CONS_PERSONAL'
                  SummaryFormat = '-> (,0)'
                  SummaryType = cstCount
                end>
              Name = 'padr_gridSummaryGroup3'
            end>
          Filter.Criteria = {00000000}
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
          object padr_gridCONS_PERSONAL: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERSONAL'
          end
          object padr_gridCODI_PERSONAL: TdxDBGridMaskColumn
            Sorted = csUp
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERSONAL'
          end
          object padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn
            Width = 106
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COMPLETO'
            SummaryFooterType = cstCount
            SummaryFooterField = 'CONS_PERSONAL'
            SummaryFooterFormat = ',0'
          end
          object padr_gridCONS_UBIC_TIPO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_UBIC_TIPO'
          end
          object padr_gridNOMB_UBIC_TIPO: TdxDBGridMaskColumn
            Width = 93
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_UBIC_TIPO'
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
            Width = 45
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
            Width = 62
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_LINE_SECCION'
          end
          object padr_gridCONS_BODEGA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_BODEGA'
          end
          object padr_gridNOMB_BODEGA: TdxDBGridMaskColumn
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_BODEGA'
          end
          object padr_gridOTRA_UBICACION: TdxDBGridMaskColumn
            Width = 92
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OTRA_UBICACION'
          end
          object padr_gridCONS_TURNO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_TURNO'
          end
          object padr_gridCODI_TURNO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_TURNO'
          end
          object padr_gridNOMB_TIPO_TURNO: TdxDBGridMaskColumn
            Width = 71
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_TIPO_TURNO'
          end
          object padr_gridCONS_PERS_CARGO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_CARGO'
          end
          object padr_gridNOMB_PERS_CARGO: TdxDBGridMaskColumn
            Width = 51
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_CARGO'
          end
          object padr_gridCONS_PERS_CENT_COSTO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_CENT_COSTO'
          end
          object padr_gridNOMB_PERS_CENT_COSTO: TdxDBGridMaskColumn
            Width = 103
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_CENT_COSTO'
          end
          object padr_gridCONS_COST_GRUPO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COST_GRUPO'
          end
          object padr_gridNOMB_COST_GRUPO: TdxDBGridMaskColumn
            Width = 101
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COST_GRUPO'
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Left = 10
          Top = 192
          Height = 281
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 259
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Top = 192
          Height = 281
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 259
              inherited padr_prio_impresion: TdxTreeList
                Height = 33
              end
            end
          end
        end
        object PCPFrame1: TPCPFrame
          Tag = 140
          Left = 0
          Top = 52
          Width = 556
          Height = 140
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
            Height = 115
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            inline fram_filtro: Tffra_maqu_ubicacion
              Top = 27
              Width = 550
              Height = 83
              Align = alTop
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
                  Left = 338
                  Height = 20
                  FontActive.Name = 'Tahoma'
                end
                inherited comb_ubic_empresa: TPCPLookUpComboEdit
                  OnChange = doActualizarConsultaPersonal
                end
                inherited comb_ubic_area: TPCPLookUpComboEdit
                  Left = 420
                  Height = 20
                  OnChange = doActualizarConsultaPersonal
                end
                inherited SCLButton6: TTBXButton
                  Visible = False
                end
                inherited SCLButton7: TTBXButton
                  Left = 615
                  Top = 0
                  Visible = False
                end
              end
              inherited pane_ubic_externa: TPanel
                Width = 550
                Height = 41
                inherited SCLDBLabel36: TSCLDBLabel
                  FontActive.Name = 'Tahoma'
                end
                inherited SCLDBLabel37: TSCLDBLabel
                  FontActive.Name = 'Tahoma'
                end
                inherited SCLDBLabel1: TSCLDBLabel
                  Left = 338
                  Top = -1
                  FontActive.Name = 'Tahoma'
                end
                inherited comb_ubic_planta: TPCPLookUpComboEdit
                  OnChange = doActualizarConsultaPersonal
                end
                inherited comb_ubic_seccion: TPCPLookUpComboEdit
                  OnChange = doActualizarConsultaPersonal
                end
                inherited SCLButton8: TTBXButton
                  Visible = False
                end
                inherited SCLButton9: TTBXButton
                  Top = 19
                  Visible = False
                end
                inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
                  Left = 420
                  Top = -1
                  OnChange = doActualizarConsultaPersonal
                end
                inherited SCLButton1: TTBXButton
                  Left = 615
                  Top = 0
                  Visible = False
                end
              end
              inherited pane_ubic_bodega: TPanel
                Top = 85
                Width = 550
                inherited SCLDBLabel39: TSCLDBLabel
                  FontActive.Name = 'Tahoma'
                end
                inherited comb_ubic_bodega: TPCPLookUpComboEdit
                  OnChange = doActualizarConsultaPersonal
                end
                inherited SCLButton10: TTBXButton
                  Visible = False
                end
              end
              inherited pane_ubic_otra: TPanel
                Top = 105
                Width = 550
                inherited SCLDBLabel38: TSCLDBLabel
                  FontActive.Name = 'Tahoma'
                end
                inherited edit_ubic_otra_ubicacion: TdxDBEdit
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
                Top = 65
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
  inherited padr_dock_izquierda: TTBXDock
    Height = 507
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Consulta de personal por ubicación'
      Caption = 'Consulta de personal por ubicación'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Height = 507
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
  inherited padr_dock_bottom: TTBXDock
    Top = 540
  end
  inherited padr_dock_right: TTBXDock
    Height = 507
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
    inherited padr_acti_consultar: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited consulta: TQuery
    BeforeOpen = consultaBeforeOpen
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_PERS_UBIC_ACTIVO(:pe_fecha)')
    ParamData = <
      item
        DataType = ftDate
        Name = 'pe_fecha'
        ParamType = ptInput
      end>
    object consultaCONS_PERSONAL: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERSONAL'
    end
    object consultaCODI_PERSONAL: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERSONAL'
      Size = 12
    end
    object consultaNOMB_COMPLETO: TStringField
      DisplayLabel = 'Nombre completo'
      FieldName = 'NOMB_COMPLETO'
      Size = 102
    end
    object consultaCONS_UBIC_TIPO: TIntegerField
      DisplayLabel = 'Cons. tipo ubicación'
      FieldName = 'CONS_UBIC_TIPO'
    end
    object consultaNOMB_UBIC_TIPO: TStringField
      DisplayLabel = 'Tipo ubicación'
      FieldName = 'NOMB_UBIC_TIPO'
      Size = 60
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
      DisplayLabel = 'Cons. área'
      FieldName = 'CONS_AREA'
    end
    object consultaNOMB_AREA: TStringField
      DisplayLabel = 'Area'
      FieldName = 'NOMB_AREA'
      Size = 60
    end
    object consultaCONS_PLANTA: TIntegerField
      DisplayLabel = 'Cons. Planta'
      FieldName = 'CONS_PLANTA'
    end
    object consultaNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta'
      FieldName = 'NOMB_PLANTA'
      Size = 60
    end
    object consultaCONS_PLAN_LINEA: TIntegerField
      DisplayLabel = 'Cons. Linea'
      FieldName = 'CONS_PLAN_LINEA'
    end
    object consultaNOMB_PLAN_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldName = 'NOMB_PLAN_LINEA'
      Size = 60
    end
    object consultaCONS_LINE_SECCION: TIntegerField
      DisplayLabel = 'Cons. Sección'
      FieldName = 'CONS_LINE_SECCION'
    end
    object consultaNOMB_LINE_SECCION: TStringField
      DisplayLabel = 'Sección'
      FieldName = 'NOMB_LINE_SECCION'
      Size = 60
    end
    object consultaCONS_BODEGA: TIntegerField
      DisplayLabel = 'Cons. bodega'
      FieldName = 'CONS_BODEGA'
    end
    object consultaNOMB_BODEGA: TStringField
      DisplayLabel = 'Bodega'
      FieldName = 'NOMB_BODEGA'
      Size = 60
    end
    object consultaOTRA_UBICACION: TStringField
      DisplayLabel = 'Otra ubicación'
      FieldName = 'OTRA_UBICACION'
      Size = 60
    end
    object consultaCONS_TURNO: TIntegerField
      DisplayLabel = 'Cons. turno'
      FieldName = 'CONS_TURNO'
    end
    object consultaCODI_TURNO: TStringField
      DisplayLabel = 'Turno'
      FieldName = 'CODI_TURNO'
      Size = 12
    end
    object consultaNOMB_TIPO_TURNO: TStringField
      DisplayLabel = 'Tipo turno'
      FieldName = 'NOMB_TIPO_TURNO'
      Size = 60
    end
    object consultaCONS_PERS_CARGO: TIntegerField
      DisplayLabel = 'Cons. cargo'
      FieldName = 'CONS_PERS_CARGO'
    end
    object consultaNOMB_PERS_CARGO: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'NOMB_PERS_CARGO'
      Size = 60
    end
    object consultaCONS_PERS_CENT_COSTO: TIntegerField
      DisplayLabel = 'Cons. centro costos'
      FieldName = 'CONS_PERS_CENT_COSTO'
    end
    object consultaNOMB_PERS_CENT_COSTO: TStringField
      DisplayLabel = 'Centro de costos'
      FieldName = 'NOMB_PERS_CENT_COSTO'
      Size = 60
    end
    object consultaCONS_COST_GRUPO: TIntegerField
      DisplayLabel = 'Cons. grupo costos'
      FieldName = 'CONS_COST_GRUPO'
    end
    object consultaNOMB_COST_GRUPO: TStringField
      DisplayLabel = 'Grupo de costos'
      FieldName = 'NOMB_COST_GRUPO'
      Size = 60
    end
  end
  inherited padr_popu_vist_actual: TTBXPopupMenu
    Left = 442
    Top = 9
  end
  inherited Variables: TSCLPropiedadesForm
    Left = 410
    Top = 10
  end
  inherited padr_pop_grid: TTBXPopupMenu
    Left = 910
    Top = 204
  end
  inherited QFirmas: TQuery
    Left = 800
    Top = 275
  end
  inherited QPrioridades: TQuery
    Left = 800
    Top = 307
  end
  inherited QEliminar_Opciones_Impresion: TQuery
    Left = 800
    Top = 243
  end
  inherited TUsuarios_Modulos: TTable
    Left = 840
    Top = 275
  end
  inherited TUsuario_Opciones: TTable
    Left = 840
    Top = 307
  end
  inherited QInformes: TQuery
    Left = 802
    Top = 348
  end
end

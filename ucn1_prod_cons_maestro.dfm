inherited cn1_prod_cons_maestro: Tcn1_prod_cons_maestro
  Left = 156
  Top = 110
  Width = 773
  Height = 558
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 765
  end
  inherited padr_shap_xp_down: TShape
    Top = 530
    Width = 765
  end
  inherited padr_pane_1: TPanel
    Width = 539
    Height = 488
    inherited padr_pagina: TdxPageControl
      Width = 529
      Height = 478
      inherited fram_pagi_lista: TdxTabSheet
        object dfsSplitter1: TdfsSplitter [0]
          Left = 0
          Top = 421
          Width = 529
          Height = 10
          Cursor = crVSplit
          Align = alBottom
          Maximized = False
          Minimized = False
          ButtonCursor = crDefault
        end
        inherited padr_grid: TSCLDBGrid
          Top = 169
          Width = 139
          Height = 252
          KeyField = 'CONS_PROD_ORDEN'
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
                  SummaryField = 'CONS_PROD_ORDEN'
                  SummaryFormat = '-> (,0)'
                  SummaryType = cstCount
                end
                item
                  SummaryField = 'UNID_PEDIDAS'
                  SummaryFormat = ',0'
                  SummaryType = cstSum
                end
                item
                  SummaryField = 'UNID_LOTEADAS'
                  SummaryFormat = ',0'
                  SummaryType = cstSum
                end
                item
                  SummaryField = 'UNID_CORTADAS'
                  SummaryFormat = ',0'
                  SummaryType = cstSum
                end>
              Name = 'padr_gridSummaryGroup2'
            end>
          Filter.Criteria = {00000000}
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
          object padr_gridCONS_PROD_ORDEN: TdxDBGridMaskColumn
            Visible = False
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PROD_ORDEN'
          end
          object padr_gridNUME_PROD_ORDEN: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_PROD_ORDEN'
            SummaryFooterType = cstCount
            SummaryFooterField = 'CONS_PROD_ORDEN'
            SummaryFooterFormat = ',0'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            Width = 135
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            Visible = False
            Width = 132
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
          object padr_gridANULADA: TdxDBGridImageColumn
            Alignment = taLeftJustify
            MinWidth = 16
            Width = 61
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ANULADA'
            Descriptions.Strings = (
              'Activa'
              'Anulada')
            Images = _fMDI.imag_anulado
            ImageIndexes.Strings = (
              '0'
              '1')
            Values.Strings = (
              ''
              '1')
          end
          object padr_gridFINALIZADO: TdxDBGridImageColumn
            Alignment = taLeftJustify
            MinWidth = 16
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FINALIZADO'
            Descriptions.Strings = (
              'En proceso'
              'Finalizada')
            Images = _fMDI.imag_finalizado
            ImageIndexes.Strings = (
              '0'
              '1')
            Values.Strings = (
              '-1'
              '1')
          end
          object padr_gridCONS_REFERENCIA: TdxDBGridMaskColumn
            Visible = False
            Width = 84
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFERENCIA'
          end
          object padr_gridCODI_REFERENCIA: TdxDBGridMaskColumn
            Width = 119
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFERENCIA'
          end
          object padr_gridCODI_INTE_REFERENCIA: TdxDBGridMaskColumn
            Visible = False
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_INTE_REFERENCIA'
          end
          object padr_gridMOLDE: TdxDBGridMaskColumn
            Visible = False
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MOLDE'
          end
          object padr_gridNOMB_REFERENCIA: TdxDBGridMaskColumn
            Width = 241
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFERENCIA'
          end
          object padr_gridNOMB_REFE_TEMPORADA: TdxDBGridMaskColumn
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_TEMPORADA'
          end
          object padr_gridNOMB_REFE_MARCA: TdxDBGridMaskColumn
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_MARCA'
          end
          object padr_gridNOMB_REFE_LINEA: TdxDBGridMaskColumn
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_LINEA'
          end
          object padr_gridNOMB_REFE_EDAD: TdxDBGridMaskColumn
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_EDAD'
          end
          object padr_gridNOMB_REFE_ESTILO: TdxDBGridMaskColumn
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_ESTILO'
          end
          object padr_gridNOMB_REFE_GRUPO: TdxDBGridMaskColumn
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_GRUPO'
          end
          object padr_gridNOMB_SEXO: TdxDBGridMaskColumn
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_SEXO'
          end
          object padr_gridNOMB_REFE_LAVADO: TdxDBGridMaskColumn
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_LAVADO'
          end
          object padr_gridNOMB_REFE_BORDADO: TdxDBGridMaskColumn
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_BORDADO'
          end
          object padr_gridNOMB_REFE_ESTAMPADO: TdxDBGridMaskColumn
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_ESTAMPADO'
          end
          object padr_gridNOMB_GRUP_TALLAS: TdxDBGridMaskColumn
            Visible = False
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_GRUP_TALLAS'
          end
          object padr_gridNOMB_REFE_ESTADO: TdxDBGridMaskColumn
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_ESTADO'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          Width = 529
          inherited padr_barra: TTBXToolbar
            inherited padr_boto_vinculos: TTBXSubmenuItem
              LinkSubitems = _fMDI.menu_produccion
              Visible = True
            end
            inherited padr_boto_nuevo: TTBXItem
              Action = _fMDI.acti_n1_plan_ordenes
              Images = _fMDI.imag_grandes
            end
            object TBXItem3: TTBXItem [7]
              Action = acti_camb_anulada
              ImageIndex = 6
              Images = _fMDI.imag_general32
            end
            object boto_Finalizar: TTBXItem [8]
              Action = acti_camb_finalizada
              ImageIndex = 5
              Images = _fMDI.imag_general32
            end
            inherited BImprimir: TTBXSubmenuItem
              inherited boto_repo_nuevo: TTBXItem
                Images = nil
              end
              inherited padr_boto_opci_impresion: TTBXVisibilityToggleItem
                Images = nil
              end
            end
          end
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 529
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 529
          inherited padr_sepa_new: TShape
            Width = 523
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 169
          Height = 252
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 230
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 334
          Top = 169
          Height = 252
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 230
              inherited padr_prio_impresion: TdxTreeList
                Height = 4
              end
            end
          end
        end
        object pane_historial: TPCPFrame
          Tag = 190
          Left = 0
          Top = 431
          Width = 529
          Height = 23
          Align = alBottom
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Caption = 'Historial'
          Titulo_Color = 16244694
          Titulo_Comprimido = True
          BorderWidthIn = 4
          FlatBorder = True
          inline fram_historial: Tffra_historialDB
            Left = 7
            Top = 26
            Width = 515
            Height = 157
            Align = alClient
            TabOrder = 1
            inherited fram_pane: TPanel
              Width = 515
              Height = 157
              inherited fram_grid_historial: TdxDBGrid
                Width = 515
                Height = 131
                Filter.Criteria = {00000000}
              end
              inherited TBXDock1: TTBXDock
                Width = 515
              end
            end
            inherited data_historial: TDataSource
              DataSet = tabl_historial
            end
          end
        end
        object PCPFrame1: TPCPFrame
          Tag = 117
          Left = 0
          Top = 52
          Width = 529
          Height = 117
          Align = alTop
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Visible = False
          Caption = 'Filtros'
          Titulo_Color = 16244694
          FlatBorder = True
          object SCLDBLabel1: TSCLDBLabel
            Left = 513
            Top = 28
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
            FocusControl = comb_finalizada
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Finalizada:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel2: TSCLDBLabel
            Left = 9
            Top = 48
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
            FocusControl = comb_anulada
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Anulada:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel3: TSCLDBLabel
            Left = 265
            Top = 48
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
            FocusControl = comb_codi_referencia
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Cód. referencia:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel4: TSCLDBLabel
            Left = 513
            Top = 48
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
            FocusControl = comb_cir_referencia
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'C.I.R. Referencia:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel5: TSCLDBLabel
            Left = 9
            Top = 68
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
            FocusControl = comb_temporada
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Temporada:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel6: TSCLDBLabel
            Left = 265
            Top = 68
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
            FocusControl = comb_marca
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Marca:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel7: TSCLDBLabel
            Left = 513
            Top = 68
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
            FocusControl = comb_linea
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Línea:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel8: TSCLDBLabel
            Left = 9
            Top = 88
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
            FocusControl = comb_edad
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Edad:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel9: TSCLDBLabel
            Left = 265
            Top = 88
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
            FocusControl = comb_estilo
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Estilo:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel10: TSCLDBLabel
            Left = 513
            Top = 88
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
            FocusControl = comb_grupo
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Grupo:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object chec_fech_inicial: TdxCheckEdit
            Left = 8
            Top = 28
            Width = 217
            TabOrder = 2
            Caption = 'Fecha (desde):'
            StyleController = padr_estilo
            OnChange = chec_fech_inicialChange
          end
          object edit_fech_inicial: TdxDateEdit
            Left = 111
            Top = 28
            Width = 121
            Enabled = False
            TabOrder = 1
            StyleController = padr_estilo
            Date = -700000
          end
          object chec_fech_final: TdxCheckEdit
            Left = 264
            Top = 28
            Width = 209
            TabOrder = 3
            Alignment = taLeftJustify
            Caption = 'Fecha (hasta):'
            StyleController = padr_estilo
            OnChange = chec_fech_finalChange
            StoredValues = 1
          end
          object edit_fech_final: TdxDateEdit
            Left = 367
            Top = 28
            Width = 122
            Enabled = False
            TabOrder = 4
            StyleController = padr_estilo
            Date = -700000
          end
          object comb_finalizada: TPCPLookUpComboEdit
            Left = 615
            Top = 28
            Width = 65
            Height = 21
            DropDownCount = 8
            TabOrder = 5
            DirectInput = False
          end
          object comb_anulada: TPCPLookUpComboEdit
            Left = 111
            Top = 48
            Width = 65
            Height = 21
            DropDownCount = 8
            TabOrder = 6
            DirectInput = False
          end
          object comb_codi_referencia: TPCPLookUpComboEdit
            Left = 367
            Top = 48
            Width = 122
            Height = 21
            DropDownCount = 8
            TabOrder = 7
            DirectInput = False
          end
          object comb_cir_referencia: TPCPLookUpComboEdit
            Left = 615
            Top = 48
            Width = 122
            Height = 21
            DropDownCount = 8
            TabOrder = 8
            DirectInput = False
          end
          object comb_temporada: TPCPLookUpComboEdit
            Left = 111
            Top = 68
            Width = 122
            Height = 21
            DropDownCount = 8
            TabOrder = 9
            DirectInput = False
          end
          object comb_marca: TPCPLookUpComboEdit
            Left = 367
            Top = 68
            Width = 122
            Height = 21
            DropDownCount = 8
            TabOrder = 10
            DirectInput = False
          end
          object comb_linea: TPCPLookUpComboEdit
            Left = 615
            Top = 68
            Width = 122
            Height = 21
            DropDownCount = 8
            TabOrder = 11
            DirectInput = False
          end
          object comb_edad: TPCPLookUpComboEdit
            Left = 111
            Top = 88
            Width = 122
            Height = 21
            DropDownCount = 8
            TabOrder = 12
            DirectInput = False
          end
          object comb_estilo: TPCPLookUpComboEdit
            Left = 367
            Top = 88
            Width = 122
            Height = 21
            DropDownCount = 8
            TabOrder = 13
            DirectInput = False
          end
          object comb_grupo: TPCPLookUpComboEdit
            Left = 615
            Top = 88
            Width = 122
            Height = 21
            DropDownCount = 8
            TabOrder = 14
            DirectInput = False
          end
        end
      end
    end
  end
  inherited padr_dock_izquierda: TTBXDock
    Height = 488
  end
  inherited padr_titu_ventana: TPanel
    Width = 765
    inherited padr_pane_2: TPanel
      Left = 694
    end
    inherited padr_pane_cerrar: TPanel
      Left = 712
    end
    inherited padr_pane_titulo: TPCPTituloGradiente
      Width = 694
      LabelCaption = 'Maestro de ordenes de producción'
      Caption = 'Maestro de ordenes de producción'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 557
    Height = 488
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
    Width = 765
  end
  inherited padr_dock_bottom: TTBXDock
    Top = 521
    Width = 765
  end
  inherited padr_dock_right: TTBXDock
    Left = 548
    Height = 488
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
    inherited padr_acti_consultar: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM VIS_PCP_PROD_ORDE_COMPLETA'
      'ORDER BY NUME_PROD_ORDEN')
    object consultaCONS_PROD_ORDEN: TIntegerField
      DisplayLabel = 'Cons. orden'
      FieldName = 'CONS_PROD_ORDEN'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.CONS_PROD_ORDEN'
    end
    object consultaNUME_PROD_ORDEN: TStringField
      DisplayLabel = 'No. orden'
      FieldName = 'NUME_PROD_ORDEN'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.NUME_PROD_ORDEN'
      Size = 12
    end
    object consultaANULADA: TIntegerField
      DisplayLabel = 'Anulada'
      FieldName = 'ANULADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.ANULADA'
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.USUA_SISTEMA'
    end
    object consultaFINALIZADO: TIntegerField
      DisplayLabel = 'Finalizada'
      FieldName = 'FINALIZADO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.FINALIZADO'
    end
    object consultaCONS_REFERENCIA: TIntegerField
      DisplayLabel = 'Cons. referencia'
      FieldName = 'CONS_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.CONS_REFERENCIA'
    end
    object consultaCODI_REFERENCIA: TStringField
      DisplayLabel = 'Cód. referencia'
      FieldName = 'CODI_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.CODI_REFERENCIA'
      Size = 12
    end
    object consultaNOMB_REFE_TEMPORADA: TStringField
      DisplayLabel = 'Temporada'
      FieldName = 'NOMB_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.NOMB_REFE_TEMPORADA'
      Size = 60
    end
    object consultaMOLDE: TStringField
      DisplayLabel = 'Molde'
      FieldName = 'MOLDE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.MOLDE'
      Size = 12
    end
    object consultaCODI_INTE_REFERENCIA: TStringField
      DisplayLabel = 'C.I.R.'
      FieldName = 'CODI_INTE_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.CODI_INTE_REFERENCIA'
      Size = 12
    end
    object consultaNOMB_REFERENCIA: TStringField
      DisplayLabel = 'Nombre referencia'
      FieldName = 'NOMB_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.NOMB_REFERENCIA'
      Size = 60
    end
    object consultaNOMB_REFE_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOMB_REFE_MARCA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.NOMB_REFE_MARCA'
      Size = 60
    end
    object consultaNOMB_REFE_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldName = 'NOMB_REFE_LINEA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.NOMB_REFE_LINEA'
      Size = 60
    end
    object consultaNOMB_REFE_EDAD: TStringField
      DisplayLabel = 'Edad'
      FieldName = 'NOMB_REFE_EDAD'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.NOMB_REFE_EDAD'
      Size = 60
    end
    object consultaNOMB_REFE_ESTILO: TStringField
      DisplayLabel = 'Estilo'
      FieldName = 'NOMB_REFE_ESTILO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.NOMB_REFE_ESTILO'
      Size = 60
    end
    object consultaNOMB_REFE_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_REFE_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.NOMB_REFE_GRUPO'
      Size = 60
    end
    object consultaNOMB_SEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'NOMB_SEXO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.NOMB_SEXO'
      Size = 60
    end
    object consultaNOMB_REFE_LAVADO: TStringField
      DisplayLabel = 'Lavado'
      FieldName = 'NOMB_REFE_LAVADO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.NOMB_REFE_LAVADO'
      Size = 60
    end
    object consultaNOMB_REFE_BORDADO: TStringField
      DisplayLabel = 'Bordado'
      FieldName = 'NOMB_REFE_BORDADO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.NOMB_REFE_BORDADO'
      Size = 60
    end
    object consultaNOMB_REFE_ESTAMPADO: TStringField
      DisplayLabel = 'Estampado'
      FieldName = 'NOMB_REFE_ESTAMPADO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.NOMB_REFE_ESTAMPADO'
      Size = 60
    end
    object consultaNOMB_GRUP_TALLAS: TStringField
      DisplayLabel = 'Grupo tallas'
      FieldName = 'NOMB_GRUP_TALLAS'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.NOMB_GRUP_TALLAS'
      Size = 60
    end
    object consultaNOMB_REFE_ESTADO: TStringField
      DisplayLabel = 'Estado referencia'
      FieldName = 'NOMB_REFE_ESTADO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_COMPLETA.NOMB_REFE_ESTADO'
      Size = 60
    end
  end
  inherited padr_popu_vist_actual: TTBXPopupMenu
    Left = 154
    Top = 329
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NUME_PROD_ORDEN'
    NombreAMostrar = 'orden de producción'
    CamposDeBusqueda = 'CONS_PROD_ORDEN'
    TipoGenero = geLa
    TablaMaestra = 'PCP_PROD_ORDENES'
    Left = 122
    Top = 330
  end
  inherited padr_pop_grid: TTBXPopupMenu
    Left = 536
    object TBXSubmenuItem2: TTBXSubmenuItem [0]
      Caption = 'Consultar'
      ImageIndex = 64
      Images = _fMDI.imagenesPCP
      LinkSubitems = _fMDI.menu_produccion
    end
    inherited padr_boto_aceptar2: TTBXItem
      Images = nil
    end
    inherited padr_boto_cancelar2: TTBXItem
      Images = nil
    end
    inherited padr_boto_nuevo2: TTBXItem
      Action = _fMDI.acti_n1_plan_ordenes
      Images = _fMDI.imagenesPCP
    end
    inherited padr_boto_modificar2: TTBXItem
      Images = nil
    end
    inherited padr_boto_eliminar_2: TTBXItem
      Images = nil
    end
    object TBXItem2: TTBXItem [6]
      Action = acti_camb_finalizada
      ImageIndex = 69
      Images = _fMDI.imagenesPCP
    end
    object TBXItem1: TTBXItem [7]
      Action = acti_camb_anulada
      ImageIndex = 70
      Images = _fMDI.imagenesPCP
    end
    inherited padr_boto_actualizar2: TTBXItem
      Images = nil
    end
    inherited padr_boto_apli_filtro2: TTBXSubmenuItem
      Images = nil
    end
    inherited padr_boto_imprimir2: TTBXItem
      Images = nil
    end
    inherited padr_boto_configurar2: TTBXVisibilityToggleItem
      Images = nil
    end
    inherited padr_boto_exportar2: TTBXSubmenuItem
      Images = nil
      inherited padr_boto_expo_excel2: TTBXItem
        Images = nil
      end
      inherited padr_boto_expo_html2: TTBXItem
        Images = nil
      end
      inherited padr_boto_expo_plano2: TTBXItem
        Images = nil
      end
    end
    inherited padr_boto_ayuda2: TTBXItem
      Images = nil
    end
  end
  object acti_ventana: TActionList
    OnUpdate = acti_ventanaUpdate
    Left = 710
    Top = 173
    object acti_camb_finalizada: TAction
      Caption = 'Cambiar estado FINALIZADA'
      OnExecute = acti_camb_finalizadaExecute
    end
    object acti_camb_anulada: TAction
      Caption = 'Cambiar estado ANULADA'
      OnExecute = acti_camb_anuladaExecute
    end
  end
  object quer_anular: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Update PCP_PROD_ORDENES'
      'Set ANULADA = :PE_ANULADA'
      'WHERE CONS_PROD_ORDEN = :PE_CONS_PROD_ORDEN')
    Left = 542
    Top = 229
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PE_ANULADA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PROD_ORDEN'
        ParamType = ptInput
      end>
  end
  object quer_finalizar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Update PCP_PROD_ORDENES'
      'Set FINALIZADO = :PE_FINALIZADA'
      'WHERE CONS_PROD_ORDEN = :PE_CONS_PROD_ORDEN')
    Left = 574
    Top = 229
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PE_FINALIZADA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PROD_ORDEN'
        ParamType = ptInput
      end>
  end
  object tabl_historial: TTable
    BeforePost = tabl_historialBeforePost
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_PROD_ORDEN'
    MasterFields = 'CONS_PROD_ORDEN'
    MasterSource = data_ventana
    TableName = 'PCP_PROD_ORDE_HISTORIAL'
    Left = 158
    Top = 428
    object tabl_historialCONS_ANOTACION: TIntegerField
      FieldName = 'CONS_ANOTACION'
      Required = True
    end
    object tabl_historialCONS_PROD_ORDEN: TIntegerField
      FieldName = 'CONS_PROD_ORDEN'
      Required = True
    end
    object tabl_historialTEXT_ANOTACION: TStringField
      FieldName = 'TEXT_ANOTACION'
      Required = True
      Size = 240
    end
    object tabl_historialFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object tabl_historialUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
end

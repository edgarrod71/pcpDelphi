inherited fcn1_cont_nove_defe_orde_produccion: Tfcn1_cont_nove_defe_orde_produccion
  Left = 46
  Top = 68
  Height = 537
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 509
  end
  inherited padr_pane_1: TPanel
    Height = 467
    inherited padr_pagina: TdxPageControl
      Height = 457
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Top = 109
          Height = 324
          KeyField = 'CONS_CONT_NOVE_DEFE_FABRICACION'
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
                  ColumnName = 'padr_gridCODI_CALI_DEFECTO'
                  SummaryFormat = ',0'
                  SummaryType = cstCount
                end
                item
                  ColumnName = 'padr_gridCANT_UNID_DEFECTUOSAS'
                  SummaryFormat = ',0'
                  SummaryType = cstSum
                end>
              Name = 'padr_gridSummaryGroup2'
            end>
          TabOrder = 1
          Filter.Criteria = {00000000}
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
          object padr_gridCONS_CONT_NOVE_DEFE_FABRICACION: TdxDBGridMaskColumn
            Visible = False
            Width = 61
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_CONT_NOVE_DEFE_FABRICACION'
          end
          object padr_gridCONS_CALI_DEFECTO: TdxDBGridMaskColumn
            Visible = False
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_CALI_DEFECTO'
          end
          object padr_gridCODI_CALI_DEFECTO: TdxDBGridMaskColumn
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_CALI_DEFECTO'
            SummaryFooterType = cstCount
            SummaryFooterFormat = ',0'
          end
          object padr_gridNOMB_CALI_DEFECTO: TdxDBGridMaskColumn
            Width = 221
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_CALI_DEFECTO'
          end
          object padr_gridCONS_PROD_ORDEN: TdxDBGridMaskColumn
            Visible = False
            Width = 118
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PROD_ORDEN'
          end
          object padr_gridNUME_PROD_ORDEN: TdxDBGridMaskColumn
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_PROD_ORDEN'
          end
          object padr_gridCONS_PROD_LOTE: TdxDBGridMaskColumn
            Visible = False
            Width = 61
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PROD_LOTE'
          end
          object padr_gridNUME_LOTE: TdxDBGridMaskColumn
            Width = 69
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_LOTE'
          end
          object padr_gridNUME_PAQUETE: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_PAQUETE'
          end
          object padr_gridSECU_OPERACION: TdxDBGridMaskColumn
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SECU_OPERACION'
          end
          object padr_gridCODI_OPER_COSTURA: TdxDBGridMaskColumn
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_OPER_COSTURA'
          end
          object padr_gridNOMB_OPER_COSTURA: TdxDBGridMaskColumn
            Width = 184
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_OPER_COSTURA'
          end
          object padr_gridFECH_DEFECTO: TdxDBGridDateColumn
            Width = 187
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_DEFECTO'
          end
          object padr_gridCONS_CONT_NOVE_DIARIA: TdxDBGridMaskColumn
            Visible = False
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_CONT_NOVE_DIARIA'
          end
          object padr_gridCONS_PERS_ASIGNADO: TdxDBGridMaskColumn
            Visible = False
            Width = 130
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_ASIGNADO'
          end
          object padr_gridCANT_UNID_DEFECTUOSAS: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CANT_UNID_DEFECTUOSAS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'CANT_UNID_DEFECTUOSAS'
            SummaryFooterFormat = ',0'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            Visible = False
            Width = 109
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            Visible = False
            Width = 122
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
        end
        inherited padr_pane_sepa_2: TPanel
          TabOrder = 3
        end
        inherited padr_pane_sepa_1: TPanel
          TabOrder = 4
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 109
          Height = 324
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 302
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Top = 109
          Height = 324
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 302
              inherited padr_prio_impresion: TdxTreeList
                Height = 76
              end
            end
          end
        end
        object PCPFrame1: TPCPFrame
          Tag = 57
          Left = 0
          Top = 52
          Width = 556
          Height = 57
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
          Caption = 'Filtros de la consulta'
          Titulo_Color = 16244694
          FlatBorder = True
          object SCLDBLabel1: TSCLDBLabel
            Left = 12
            Top = 28
            Width = 117
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
            Caption = 'Orden de producción:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel2: TSCLDBLabel
            Left = 300
            Top = 28
            Width = 117
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
            Caption = 'Lote:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object comb_prod_orden: TPCPLookUpComboEdit
            Left = 131
            Top = 27
            Width = 145
            Height = 21
            DropDownCount = 8
            KeyField = 'cons_prod_orden'
            ListField = 'nume_prod_orden'
            ListSource = data_prod_ordenes
            TabOrder = 1
            OnChange = doActualizarConsulta
            DirectInput = False
          end
          object comb_prod_lote: TPCPLookUpComboEdit
            Left = 419
            Top = 27
            Width = 78
            Height = 21
            DropDownCount = 8
            KeyField = 'cons_prod_lote'
            ListField = 'nume_lote'
            ListSource = data_prod_lotes
            TabOrder = 2
            OnChange = doActualizarConsulta
            DirectInput = False
          end
        end
      end
    end
  end
  inherited padr_dock_izquierda: TTBXDock
    Height = 467
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Consulta de reprocesos por orden de producción'
      Caption = 'Consulta de reprocesos por orden de producción'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Height = 467
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
    Top = 500
  end
  inherited padr_dock_right: TTBXDock
    Height = 467
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
    inherited padr_acti_cerr_carp_activa: TAction
      Enabled = False
      Visible = False
    end
    inherited acti_padr_cerr_todas_carpetas: TAction
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
      'FROM VIS_PCP_CONT_NOVE_DEFE_FABR_BA'
      'WHERE CONS_PROD_ORDEN = :CONS_PROD_ORDEN'
      'ORDER BY FECH_DEFECTO')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_ORDEN'
        ParamType = ptInput
      end>
    object consultaCONS_CONT_NOVE_DEFE_FABRICACION: TIntegerField
      DisplayLabel = 'Consecutivo'
      FieldName = 'CONS_CONT_NOVE_DEFE_FABRICACION'
      Origin = 
        'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.CONS_CONT_NOVE_DEFE' +
        '_FABRICACION'
    end
    object consultaCONS_CALI_DEFECTO: TIntegerField
      DisplayLabel = 'Cons. reproceso'
      DisplayWidth = 10
      FieldName = 'CONS_CALI_DEFECTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.CONS_CALI_DEFECTO'
    end
    object consultaCODI_CALI_DEFECTO: TStringField
      DisplayLabel = 'Cód. reproceso'
      FieldName = 'CODI_CALI_DEFECTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.CODI_CALI_DEFECTO'
      Size = 12
    end
    object consultaNOMB_CALI_DEFECTO: TStringField
      DisplayLabel = 'Reproceso'
      FieldName = 'NOMB_CALI_DEFECTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.NOMB_CALI_DEFECTO'
      Size = 60
    end
    object consultaCONS_PROD_ORDEN: TIntegerField
      DisplayLabel = 'Cons. orden producción'
      FieldName = 'CONS_PROD_ORDEN'
      Origin = 'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.CONS_PROD_ORDEN'
    end
    object consultaNUME_PROD_ORDEN: TStringField
      DisplayLabel = 'Orden producción'
      FieldName = 'NUME_PROD_ORDEN'
      Origin = 'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.NUME_PROD_ORDEN'
      Size = 12
    end
    object consultaCONS_PROD_LOTE: TIntegerField
      DisplayLabel = 'Cons. lote'
      FieldName = 'CONS_PROD_LOTE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.CONS_PROD_LOTE'
    end
    object consultaNUME_LOTE: TIntegerField
      DisplayLabel = 'Lote'
      FieldName = 'NUME_LOTE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.NUME_LOTE'
    end
    object consultaNUME_PAQUETE: TIntegerField
      DisplayLabel = 'Paquete'
      FieldName = 'NUME_PAQUETE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.NUME_PAQUETE'
    end
    object consultaSECU_OPERACION: TIntegerField
      DisplayLabel = 'No. operación'
      FieldName = 'SECU_OPERACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.SECU_OPERACION'
    end
    object consultaCODI_OPER_COSTURA: TStringField
      DisplayLabel = 'Cód. operación'
      FieldName = 'CODI_OPER_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.CODI_OPER_COSTURA'
      Size = 12
    end
    object consultaNOMB_OPER_COSTURA: TStringField
      DisplayLabel = 'Nombre operación'
      FieldName = 'NOMB_OPER_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.NOMB_OPER_COSTURA'
      Size = 30
    end
    object consultaFECH_DEFECTO: TDateTimeField
      DisplayLabel = 'Fecha defecto'
      FieldName = 'FECH_DEFECTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.FECH_DEFECTO'
    end
    object consultaCONS_CONT_NOVE_DIARIA: TIntegerField
      DisplayLabel = 'Cons. novedad'
      FieldName = 'CONS_CONT_NOVE_DIARIA'
      Origin = 
        'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.CONS_CONT_NOVE_DIAR' +
        'IA'
    end
    object consultaCANT_UNID_DEFECTUOSAS: TIntegerField
      DisplayLabel = 'Unidades'
      FieldName = 'CANT_UNID_DEFECTUOSAS'
      Origin = 
        'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.CANT_UNID_DEFECTUOS' +
        'AS'
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_CONT_NOVE_DEFE_FABR_BA.USUA_SISTEMA'
    end
  end
  inherited padr_popu_vist_actual: TTBXPopupMenu
    Left = 666
    Top = 25
  end
  inherited Variables: TSCLPropiedadesForm
    Left = 634
    Top = 26
  end
  inherited padr_pop_grid: TTBXPopupMenu
    Left = 718
    Top = 28
  end
  object quer_prod_ordenes: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PROD_ORDEN, NUME_PROD_ORDEN,'
      '    CONS_REFERENCIA, CODI_REFERENCIA, CODI_INTE_REFERENCIA,'
      '    NOMB_REFERENCIA, ANULADA, FINALIZADO'
      'FROM VIS_PCP_PROD_ORDENES'
      'ORDER BY NUME_PROD_ORDEN')
    Left = 190
    Top = 129
    object quer_prod_ordenesCONS_PROD_ORDEN: TIntegerField
      FieldName = 'CONS_PROD_ORDEN'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDENES.CONS_PROD_ORDEN'
    end
    object quer_prod_ordenesNUME_PROD_ORDEN: TStringField
      FieldName = 'NUME_PROD_ORDEN'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDENES.NUME_PROD_ORDEN'
      Size = 12
    end
    object quer_prod_ordenesCONS_REFERENCIA: TIntegerField
      FieldName = 'CONS_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDENES.CONS_REFERENCIA'
    end
    object quer_prod_ordenesCODI_REFERENCIA: TStringField
      FieldName = 'CODI_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDENES.CODI_REFERENCIA'
      Size = 12
    end
    object quer_prod_ordenesCODI_INTE_REFERENCIA: TStringField
      FieldName = 'CODI_INTE_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDENES.CODI_INTE_REFERENCIA'
      Size = 12
    end
    object quer_prod_ordenesNOMB_REFERENCIA: TStringField
      FieldName = 'NOMB_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDENES.NOMB_REFERENCIA'
      Size = 60
    end
    object quer_prod_ordenesANULADA: TIntegerField
      FieldName = 'ANULADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDENES.ANULADA'
    end
    object quer_prod_ordenesFINALIZADO: TIntegerField
      FieldName = 'FINALIZADO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDENES.FINALIZADO'
    end
  end
  object data_prod_ordenes: TDataSource
    DataSet = quer_prod_ordenes
    Left = 222
    Top = 129
  end
  object quer_prod_lotes: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_prod_ordenes
    SQL.Strings = (
      'SELECT CONS_PROD_LOTE, '
      'CAST(NUME_LOTE AS VARCHAR(12)) AS NUME_LOTE'
      'FROM PCP_PROD_LOTES'
      'WHERE CONS_PROD_ORDEN = :CONS_PROD_ORDEN'
      'ORDER BY NUME_LOTE')
    Left = 430
    Top = 129
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PROD_ORDEN'
        ParamType = ptUnknown
      end>
  end
  object data_prod_lotes: TDataSource
    DataSet = quer_prod_lotes
    Left = 462
    Top = 129
  end
end

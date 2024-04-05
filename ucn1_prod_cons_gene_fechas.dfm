inherited cn1_prod_cons_gene_fechas: Tcn1_prod_cons_gene_fechas
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Top = 113
          Height = 319
          Bands = <
            item
              Caption = 'Datos generales'
            end
            item
              Caption = 'Ultimo proceso finalizado'
            end
            item
              Caption = 'Otros datos'
            end>
          DefaultLayout = False
          KeyField = 'CONS_PROD_LOTE'
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
                  SummaryField = 'NUME_LOTE'
                  SummaryFormat = 'Lotes : ,0'
                  SummaryType = cstCount
                end
                item
                  SummaryField = 'UNIDADES'
                  SummaryFormat = 'Unidades : ,0'
                  SummaryType = cstSum
                end>
              Name = 'padr_gridSummaryGroup2'
            end>
          TabOrder = 1
          Filter.Criteria = {00000000}
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
          object padr_gridCONS_PROD_ORDEN: TdxDBGridMaskColumn
            Visible = False
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PROD_ORDEN'
          end
          object padr_gridNUME_PROD_ORDEN: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_PROD_ORDEN'
          end
          object padr_gridCONS_PROD_LOTE: TdxDBGridMaskColumn
            Visible = False
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PROD_LOTE'
          end
          object padr_gridNUME_LOTE: TdxDBGridMaskColumn
            Width = 72
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_LOTE'
            SummaryFooterType = cstCount
            SummaryFooterField = 'CONS_PROD_LOTE'
            SummaryFooterFormat = '0'
          end
          object padr_gridANULADA: TdxDBGridImageColumn
            Alignment = taLeftJustify
            MinWidth = 16
            Width = 45
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ANULADA'
            Descriptions.Strings = (
              'No'
              'Si')
            Images = _fMDI.imag_anulado
            ImageIndexes.Strings = (
              '0'
              '1')
            Values.Strings = (
              '-1'
              '1')
          end
          object padr_gridFINALIZADO: TdxDBGridImageColumn
            Alignment = taLeftJustify
            MinWidth = 16
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FINALIZADO'
            Descriptions.Strings = (
              'No'
              'Si')
            Images = _fMDI.imag_finalizado
            ImageIndexes.Strings = (
              '0'
              '1')
            Values.Strings = (
              '-1'
              '1')
          end
          object padr_gridFECH_CREACION: TdxDBGridDateColumn
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_CREACION'
          end
          object padr_gridUSUA_CREACION: TdxDBGridMaskColumn
            Visible = False
            Width = 117
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_CREACION'
          end
          object padr_gridCONS_REFERENCIA: TdxDBGridMaskColumn
            Visible = False
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFERENCIA'
          end
          object padr_gridCODI_REFERENCIA: TdxDBGridMaskColumn
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFERENCIA'
          end
          object padr_gridNOMB_REFERENCIA: TdxDBGridMaskColumn
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFERENCIA'
          end
          object padr_gridCODI_INTE_REFERENCIA: TdxDBGridMaskColumn
            Visible = False
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_INTE_REFERENCIA'
          end
          object padr_gridUNIDADES: TdxDBGridMaskColumn
            Width = 62
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UNIDADES'
            SummaryFooterType = cstSum
            SummaryFooterField = 'UNIDADES'
            SummaryFooterFormat = ',0'
          end
          object padr_gridFECH_ESTI_FINALIZACION: TdxDBGridDateColumn
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_ESTI_FINALIZACION'
          end
          object padr_gridNOMB_PROC_FINALIZADO: TdxDBGridMaskColumn
            Width = 93
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NOMB_PROC_FINALIZADO'
          end
          object padr_gridFECH_FINA_PROC_FINALIZADO: TdxDBGridDateColumn
            BandIndex = 1
            RowIndex = 0
            FieldName = 'FECH_FINA_PROC_FINALIZADO'
          end
          object padr_gridFECH_ESTI_PROC_FINALIZADO: TdxDBGridDateColumn
            BandIndex = 1
            RowIndex = 0
            FieldName = 'FECH_ESTI_PROC_FINALIZADO'
          end
          object padr_gridDIFE_DIAS: TdxDBGridMaskColumn
            BandIndex = 1
            RowIndex = 0
            OnCustomDrawCell = padr_gridDIFE_DIASCustomDrawCell
            FieldName = 'DIFE_DIAS'
          end
          object padr_gridNOMB_PROC_ACTUAL: TdxDBGridMaskColumn
            Width = 94
            BandIndex = 2
            RowIndex = 0
            FieldName = 'NOMB_PROC_ACTUAL'
          end
          object padr_gridCONS_PEDI_ASOCIADO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 2
            RowIndex = 0
            FieldName = 'CONS_PEDI_ASOCIADO'
          end
          object padr_gridNUME_PEDI_ASOCIADOS: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 2
            RowIndex = 0
            FieldName = 'NUME_PEDI_ASOCIADOS'
          end
          object padr_gridNUME_PEDI_ASOCIADO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NUME_PEDI_ASOCIADO'
          end
          object padr_gridCONS_TERCERO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 2
            RowIndex = 0
            FieldName = 'CONS_TERCERO'
          end
          object padr_gridNOMB_TERCERO: TdxDBGridMaskColumn
            Visible = False
            Width = 55
            BandIndex = 2
            RowIndex = 0
            FieldName = 'NOMB_TERCERO'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          inherited padr_barra: TTBXToolbar
            object TBXSubmenuItem1: TTBXSubmenuItem [4]
              Caption = 'Consultar'
              ImageIndex = 25
              Images = _fMDI.imag_grandes
              LinkSubitems = _fMDI.menu_produccion
            end
          end
        end
        inherited padr_pane_sepa_2: TPanel
          TabOrder = 3
        end
        inherited padr_pane_sepa_1: TPanel
          TabOrder = 4
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 113
          Height = 319
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 297
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Top = 113
          Height = 319
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 297
              inherited padr_prio_impresion: TdxTreeList
                Height = 71
              end
            end
          end
        end
        object PCPFrame1: TPCPFrame
          Tag = 61
          Left = 0
          Top = 52
          Width = 556
          Height = 61
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
          object chec_fech_desde: TdxCheckEdit
            Left = 8
            Top = 32
            Width = 177
            TabOrder = 1
            Caption = 'Desde:'
            OnChange = chec_fech_desdeChange
          end
          object edit_Fech_desde: TdxDateEdit
            Left = 64
            Top = 32
            Width = 121
            Enabled = False
            TabOrder = 2
            StyleController = padr_estilo
            Date = -700000
            DateOnError = deToday
            DateValidation = True
            SaveTime = False
            UseEditMask = True
            StoredValues = 4
          end
          object chec_fech_hasta: TdxCheckEdit
            Left = 232
            Top = 32
            Width = 177
            TabOrder = 3
            Caption = 'Hasta:'
            OnChange = chec_fech_hastaChange
          end
          object edit_fech_hasta: TdxDateEdit
            Left = 288
            Top = 32
            Width = 121
            Enabled = False
            TabOrder = 4
            StyleController = padr_estilo
            Date = -700000
            DateOnError = deToday
            DateValidation = True
            SaveTime = False
            UseEditMask = True
            StoredValues = 4
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Ordenes de producción por fecha'
      Caption = 'Ordenes de producción por fecha'
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
    inherited padr_acti_consultar: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'Select *'
      'from CON_PCP_PROD_ORDE_FECHA'
      '(:PE_FECH_INICIAL, :PE_FECH_FINAL)')
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
    object consultaCONS_PROD_ORDEN: TIntegerField
      DisplayLabel = 'Cons. orden'
      FieldName = 'CONS_PROD_ORDEN'
    end
    object consultaNUME_PROD_ORDEN: TStringField
      DisplayLabel = 'No. orden'
      FieldName = 'NUME_PROD_ORDEN'
      Size = 12
    end
    object consultaCONS_PROD_LOTE: TIntegerField
      DisplayLabel = 'Cons. lote'
      FieldName = 'CONS_PROD_LOTE'
    end
    object consultaNUME_LOTE: TIntegerField
      DisplayLabel = 'No. lote'
      FieldName = 'NUME_LOTE'
    end
    object consultaANULADA: TIntegerField
      DisplayLabel = 'Anulada'
      FieldName = 'ANULADA'
    end
    object consultaFINALIZADO: TIntegerField
      DisplayLabel = 'Finalizado'
      FieldName = 'FINALIZADO'
    end
    object consultaFECH_CREACION: TDateTimeField
      DisplayLabel = 'Fecha creación'
      FieldName = 'FECH_CREACION'
    end
    object consultaUSUA_CREACION: TStringField
      DisplayLabel = 'Usuario creación'
      FieldName = 'USUA_CREACION'
    end
    object consultaCONS_REFERENCIA: TIntegerField
      DisplayLabel = 'Cons. referencia'
      FieldName = 'CONS_REFERENCIA'
    end
    object consultaCODI_REFERENCIA: TStringField
      DisplayLabel = 'Cód. referencia'
      FieldName = 'CODI_REFERENCIA'
      Size = 12
    end
    object consultaNOMB_REFERENCIA: TStringField
      DisplayLabel = 'Nombre referencia'
      FieldName = 'NOMB_REFERENCIA'
      Size = 60
    end
    object consultaCODI_INTE_REFERENCIA: TStringField
      DisplayLabel = 'C.I.R.'
      FieldName = 'CODI_INTE_REFERENCIA'
      Size = 12
    end
    object consultaUNIDADES: TIntegerField
      DisplayLabel = 'Unidades'
      FieldName = 'UNIDADES'
      DisplayFormat = ',0'
    end
    object consultaNOMB_PROC_FINALIZADO: TStringField
      DisplayLabel = 'Ultimo proceso'
      FieldName = 'NOMB_PROC_FINALIZADO'
      Size = 60
    end
    object consultaNOMB_PROC_ACTUAL: TStringField
      DisplayLabel = 'Proceso actual'
      FieldName = 'NOMB_PROC_ACTUAL'
      Size = 60
    end
    object consultaFECH_FINA_PROC_FINALIZADO: TDateTimeField
      DisplayLabel = 'Fecha real último proceso'
      FieldName = 'FECH_FINA_PROC_FINALIZADO'
    end
    object consultaFECH_ESTI_PROC_FINALIZADO: TDateTimeField
      DisplayLabel = 'Fecha estimada último proceso'
      FieldName = 'FECH_ESTI_PROC_FINALIZADO'
    end
    object consultaFECH_ESTI_FINALIZACION: TDateTimeField
      DisplayLabel = 'Fecha estimada'
      FieldName = 'FECH_ESTI_FINALIZACION'
    end
    object consultaDIFE_DIAS: TIntegerField
      DisplayLabel = 'Diferencia días'
      FieldName = 'DIFE_DIAS'
    end
  end
  inherited padr_popu_vist_actual: TTBXPopupMenu
    Left = 706
    Top = 65
  end
  inherited Variables: TSCLPropiedadesForm
    Left = 738
    Top = 66
  end
  inherited padr_pop_grid: TTBXPopupMenu
    Left = 78
    Top = 396
    object TBXSubmenuItem2: TTBXSubmenuItem [0]
      Caption = 'Consultar'
      ImageIndex = 64
      Images = _fMDI.imagenesPCP
      LinkSubitems = _fMDI.menu_produccion
    end
  end
end

inherited fn1_pers_cons_venc_contrato: Tfn1_pers_cons_venc_contrato
  Left = 57
  Top = 102
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
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
                  SummaryFormat = ',0'
                  SummaryType = cstCount
                end>
              Name = 'padr_gridSummaryGroup2'
            end>
          Filter.Criteria = {00000000}
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
          object padr_gridCONS_PERSONAL: TdxDBGridMaskColumn
            Visible = False
            Width = 82
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
            SummaryFooterFormat = ',0'
          end
          object padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn
            Width = 203
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COMPLETO'
          end
          object padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn
            Visible = False
            Width = 391
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_EMPRESA'
          end
          object padr_gridNOMB_AREA: TdxDBGridMaskColumn
            Visible = False
            Width = 391
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_AREA'
          end
          object padr_gridNOMB_PLANTA: TdxDBGridMaskColumn
            Width = 106
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PLANTA'
          end
          object padr_gridNOMB_LINEA: TdxDBGridMaskColumn
            Width = 51
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_LINEA'
          end
          object padr_gridNOMB_SECCION: TdxDBGridMaskColumn
            Width = 62
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_SECCION'
          end
          object padr_gridNOMB_BODEGA: TdxDBGridMaskColumn
            Visible = False
            Width = 391
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_BODEGA'
          end
          object padr_gridCODI_TURNO: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_TURNO'
          end
          object padr_gridTIPO_TURNO: TdxDBGridMaskColumn
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIPO_TURNO'
          end
          object padr_gridNOMB_PERS_CARGO: TdxDBGridMaskColumn
            Width = 51
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_CARGO'
          end
          object padr_gridNOMB_PERS_CENT_COSTO: TdxDBGridMaskColumn
            Visible = False
            Width = 391
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_CENT_COSTO'
          end
          object padr_gridNOMB_COST_GRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 391
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COST_GRUPO'
          end
          object padr_gridNOMB_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn
            Width = 86
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_TIPO_CONTRATO'
          end
          object padr_gridNUME_CONTRATO: TdxDBGridMaskColumn
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_CONTRATO'
          end
          object padr_gridNOMB_PERI_PAGO: TdxDBGridMaskColumn
            Visible = False
            Width = 391
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERI_PAGO'
          end
          object padr_gridESTADO: TdxDBGridImageColumn
            Alignment = taLeftJustify
            MinWidth = 16
            Visible = False
            Width = 107
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ESTADO'
          end
          object padr_gridFECH_INGRESO: TdxDBGridDateColumn
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_INGRESO'
          end
          object padr_gridDURACION: TdxDBGridMaskColumn
            Visible = False
            Width = 130
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DURACION'
          end
          object padr_gridFECH_VENCIMIENTO: TdxDBGridDateColumn
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_VENCIMIENTO'
          end
          object padr_gridDIAS_VENCIMIENTO: TdxDBGridMaskColumn
            Sorted = csUp
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DIAS_VENCIMIENTO'
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Contratos de personal por vencerse'
      Caption = 'Contratos de personal por vencerse'
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
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_PERS_AVIS_VENC_CONTRATO')
    object consultaCONS_PERSONAL: TIntegerField
      DisplayLabel = 'Cons. personal'
      DisplayWidth = 10
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
    object consultaNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Size = 60
    end
    object consultaNOMB_AREA: TStringField
      DisplayLabel = 'Area'
      FieldName = 'NOMB_AREA'
      Size = 60
    end
    object consultaNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta'
      FieldName = 'NOMB_PLANTA'
      Size = 12
    end
    object consultaNOMB_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldName = 'NOMB_LINEA'
      Size = 60
    end
    object consultaNOMB_SECCION: TStringField
      DisplayLabel = 'Sección'
      FieldName = 'NOMB_SECCION'
      Size = 60
    end
    object consultaNOMB_BODEGA: TStringField
      DisplayLabel = 'Bodega'
      FieldName = 'NOMB_BODEGA'
      Size = 60
    end
    object consultaNOMB_PERS_CARGO: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'NOMB_PERS_CARGO'
      Size = 60
    end
    object consultaNOMB_PERS_CENT_COSTO: TStringField
      DisplayLabel = 'Grupo de costos'
      FieldName = 'NOMB_PERS_CENT_COSTO'
      Size = 60
    end
    object consultaNOMB_COST_GRUPO: TStringField
      DisplayLabel = 'Subgrupo de costos'
      FieldName = 'NOMB_COST_GRUPO'
      Size = 60
    end
    object consultaNOMB_PERS_TIPO_CONTRATO: TStringField
      DisplayLabel = 'Tipo contrato'
      FieldName = 'NOMB_PERS_TIPO_CONTRATO'
      Size = 60
    end
    object consultaNUME_CONTRATO: TStringField
      DisplayLabel = 'No. contrato'
      FieldName = 'NUME_CONTRATO'
    end
    object consultaNOMB_PERI_PAGO: TStringField
      DisplayLabel = 'Período de pago'
      FieldName = 'NOMB_PERI_PAGO'
      Size = 60
    end
    object consultaESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      Size = 60
    end
    object consultaCODI_TURNO: TStringField
      DisplayLabel = 'Turno'
      FieldName = 'CODI_TURNO'
      Size = 12
    end
    object consultaTIPO_TURNO: TStringField
      DisplayLabel = 'Tipo turno'
      FieldName = 'TIPO_TURNO'
    end
    object consultaFECH_INGRESO: TDateTimeField
      DisplayLabel = 'Fecha de ingreso'
      FieldName = 'FECH_INGRESO'
    end
    object consultaDURACION: TFloatField
      DisplayLabel = 'Duración contrato (días)'
      FieldName = 'DURACION'
    end
    object consultaDIAS_VENCIMIENTO: TIntegerField
      DisplayLabel = 'Dias faltantes'
      FieldName = 'DIAS_VENCIMIENTO'
    end
    object consultaFECH_VENCIMIENTO: TDateTimeField
      DisplayLabel = 'Fecha de vencimiento'
      FieldName = 'FECH_VENCIMIENTO'
    end
  end
end

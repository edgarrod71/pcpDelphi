inherited fn1_maqu_traslados: Tfn1_maqu_traslados
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Bands = <
            item
              Caption = 'Movimiento'
              Width = 573
            end
            item
              Caption = 'Periodo'
              Visible = False
            end
            item
              Caption = 'Ubicación inicial'
              Width = 471
            end
            item
              Caption = 'Ubicación final'
            end
            item
              Caption = 'Otros datos'
            end>
          DefaultLayout = False
          KeyField = 'SECU_MOVIMIENTO'
          SummaryGroups = <
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  ColumnName = 'padr_gridSECU_MOVIMIENTO'
                  SummaryFormat = '0'
                  SummaryType = cstCount
                end
                item
                  ColumnName = 'padr_gridCODI_MAQUINA'
                  SummaryField = 'CODI_MAQUINA'
                  SummaryFormat = '0'
                  SummaryType = cstCount
                end>
              Name = 'padr_gridSummaryGroup1'
            end>
          Filter.Criteria = {00000000}
          ShowBands = True
          object padr_gridSECU_MOVIMIENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SECU_MOVIMIENTO'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object padr_gridANULADO: TdxDBGridCheckColumn
            HeaderAlignment = taCenter
            MinWidth = 20
            Width = 64
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ANULADO'
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object padr_gridCODI_MAQUINA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 111
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_MAQUINA'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
          object padr_gridFECH_INICIAL: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_INICIAL'
          end
          object padr_gridCODI_EMPR_ANTERIOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 36
            BandIndex = 2
            RowIndex = 0
            FieldName = 'CODI_EMPR_ANTERIOR'
          end
          object padr_gridNOMB_EMPR_ANTERIOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 108
            BandIndex = 2
            RowIndex = 0
            FieldName = 'NOMB_EMPR_ANTERIOR'
          end
          object padr_gridCODI_EMPRESA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 3
            RowIndex = 0
            FieldName = 'CODI_EMPRESA'
          end
          object padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 103
            BandIndex = 3
            RowIndex = 0
            FieldName = 'NOMB_EMPRESA'
          end
          object padr_gridCODI_AREA_ANTERIOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 30
            BandIndex = 2
            RowIndex = 0
            FieldName = 'CODI_AREA_ANTERIOR'
          end
          object padr_gridNOMB_AREA_ANTERIOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 89
            BandIndex = 2
            RowIndex = 0
            FieldName = 'NOMB_AREA_ANTERIOR'
          end
          object padr_gridCODI_AREA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 3
            RowIndex = 0
            FieldName = 'CODI_AREA'
          end
          object padr_gridNOMB_AREA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 84
            BandIndex = 3
            RowIndex = 0
            FieldName = 'NOMB_AREA'
          end
          object padr_gridCODI_PLAN_ANTERIOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 33
            BandIndex = 2
            RowIndex = 0
            FieldName = 'CODI_PLAN_ANTERIOR'
          end
          object padr_gridNOMB_PLAN_ANTERIOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 97
            BandIndex = 2
            RowIndex = 0
            FieldName = 'NOMB_PLAN_ANTERIOR'
          end
          object padr_gridCODI_PLANTA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 3
            RowIndex = 0
            FieldName = 'CODI_PLANTA'
          end
          object padr_gridNOMB_PLANTA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 92
            BandIndex = 3
            RowIndex = 0
            FieldName = 'NOMB_PLANTA'
          end
          object padr_gridCODI_SECC_ANTERIOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 34
            BandIndex = 2
            RowIndex = 0
            FieldName = 'CODI_SECC_ANTERIOR'
          end
          object padr_gridNOMB_SECC_ANTERIOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 106
            BandIndex = 2
            RowIndex = 0
            FieldName = 'NOMB_SECC_ANTERIOR'
          end
          object padr_gridCODI_SECCION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 3
            RowIndex = 0
            FieldName = 'CODI_SECCION'
          end
          object padr_gridNOMB_SECCION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 101
            BandIndex = 3
            RowIndex = 0
            FieldName = 'NOMB_SECCION'
          end
          object padr_gridCODI_BODE_ANTERIOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 34
            BandIndex = 2
            RowIndex = 0
            FieldName = 'CODI_BODE_ANTERIOR'
          end
          object padr_gridNOMB_BODE_ANTERIOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 104
            BandIndex = 2
            RowIndex = 0
            FieldName = 'NOMB_BODE_ANTERIOR'
          end
          object padr_gridCODI_BODEGA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 3
            RowIndex = 0
            FieldName = 'CODI_BODEGA'
          end
          object padr_gridNOMB_BODEGA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 99
            BandIndex = 3
            RowIndex = 0
            FieldName = 'NOMB_BODEGA'
          end
          object padr_gridOTRA_UBICACION: TdxDBGridColumn
            BandIndex = 3
            RowIndex = 0
            FieldName = 'OTRA_UBICACION'
          end
          object padr_gridSOLICITA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 156
            BandIndex = 4
            RowIndex = 0
            FieldName = 'SOLICITA'
          end
          object padr_gridENTREGA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 124
            BandIndex = 4
            RowIndex = 0
            FieldName = 'ENTREGA'
          end
          object padr_gridRECIBE: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 112
            BandIndex = 4
            RowIndex = 0
            FieldName = 'RECIBE'
          end
          object padr_gridOBSERVACIONES: TdxDBGridMemoColumn
            HeaderAlignment = taCenter
            Width = 400
            BandIndex = 4
            RowIndex = 0
            FieldName = 'OBSERVACIONES'
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Traslado de recursos'
      Caption = 'Traslado de recursos'
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
  inherited padr_acciones: TActionList
    inherited padr_acti_eliminar: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'Select * from'
      'VIS_PCP_MAQU_TRASLADOS'
      'ORDER BY SECU_MOVIMIENTO')
    Top = 32
    object consultaSECU_MOVIMIENTO: TIntegerField
      DisplayLabel = 'No.'
      DisplayWidth = 12
      FieldName = 'SECU_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.SECU_MOVIMIENTO'
    end
    object consultaCODI_MAQUINA: TStringField
      DisplayLabel = 'Cód. recurso'
      FieldName = 'CODI_MAQUINA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.CODI_MAQUINA'
      Size = 12
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.USUA_SISTEMA'
    end
    object consultaFECH_INICIAL: TDateTimeField
      DisplayLabel = 'Fecha inicial'
      FieldName = 'FECH_INICIAL'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.FECH_INICIAL'
    end
    object consultaCODI_EMPR_ANTERIOR: TStringField
      DisplayLabel = 'Cód. empresa (anterior)'
      FieldName = 'CODI_EMPR_ANTERIOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.CODI_EMPR_ANTERIOR'
      Size = 12
    end
    object consultaNOMB_EMPR_ANTERIOR: TStringField
      DisplayLabel = 'Empresa (anterior)'
      FieldKind = fkLookup
      FieldName = 'NOMB_EMPR_ANTERIOR'
      LookupDataSet = quer_glo_empresas
      LookupKeyFields = 'CODI_EMPRESA'
      LookupResultField = 'NOMB_EMPRESA'
      KeyFields = 'CODI_EMPR_ANTERIOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.NOMB_EMPR_ANTERIOR'
      Size = 60
      Lookup = True
    end
    object consultaCODI_EMPRESA: TStringField
      DisplayLabel = 'Cód. empresa (nuevo)'
      FieldName = 'CODI_EMPRESA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.CODI_EMPRESA'
      Size = 12
    end
    object consultaNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa (nuevo)'
      FieldKind = fkLookup
      FieldName = 'NOMB_EMPRESA'
      LookupDataSet = quer_glo_empresas
      LookupKeyFields = 'CODI_EMPRESA'
      LookupResultField = 'NOMB_EMPRESA'
      KeyFields = 'CODI_EMPRESA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.NOMB_EMPRESA'
      Size = 60
      Lookup = True
    end
    object consultaCODI_AREA_ANTERIOR: TStringField
      DisplayLabel = 'Cód. área (anterior)'
      FieldName = 'CODI_AREA_ANTERIOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.CODI_AREA_ANTERIOR'
      Size = 12
    end
    object consultaNOMB_AREA_ANTERIOR: TStringField
      DisplayLabel = 'Area (anterior)'
      FieldKind = fkLookup
      FieldName = 'NOMB_AREA_ANTERIOR'
      LookupDataSet = quer_glo_areas
      LookupKeyFields = 'CODI_AREA'
      LookupResultField = 'NOMB_AREA'
      KeyFields = 'CODI_AREA_ANTERIOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.NOMB_AREA_ANTERIOR'
      Size = 60
      Lookup = True
    end
    object consultaCODI_AREA: TStringField
      DisplayLabel = 'Cód. área (nuevo)'
      FieldName = 'CODI_AREA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.CODI_AREA'
      Size = 12
    end
    object consultaNOMB_AREA: TStringField
      DisplayLabel = 'Area (nuevo)'
      FieldKind = fkLookup
      FieldName = 'NOMB_AREA'
      LookupDataSet = quer_glo_areas
      LookupKeyFields = 'CODI_AREA'
      LookupResultField = 'NOMB_AREA'
      KeyFields = 'CODI_AREA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.NOMB_AREA'
      Size = 60
      Lookup = True
    end
    object consultaCODI_PLAN_ANTERIOR: TStringField
      DisplayLabel = 'Cód. planta (anterior)'
      FieldName = 'CODI_PLAN_ANTERIOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.CODI_PLAN_ANTERIOR'
      Size = 12
    end
    object consultaNOMB_PLAN_ANTERIOR: TStringField
      DisplayLabel = 'Planta (anterior)'
      FieldKind = fkLookup
      FieldName = 'NOMB_PLAN_ANTERIOR'
      LookupDataSet = quer_glo_plantas
      LookupKeyFields = 'CODI_PLANTA'
      LookupResultField = 'NOMB_PLANTA'
      KeyFields = 'CODI_PLAN_ANTERIOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.NOMB_PLAN_ANTERIOR'
      Size = 60
      Lookup = True
    end
    object consultaCODI_PLANTA: TStringField
      DisplayLabel = 'Cód. planta (nuevo)'
      FieldName = 'CODI_PLANTA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.CODI_PLANTA'
      Size = 12
    end
    object consultaNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta (nuevo)'
      FieldKind = fkLookup
      FieldName = 'NOMB_PLANTA'
      LookupDataSet = quer_glo_plantas
      LookupKeyFields = 'CODI_PLANTA'
      LookupResultField = 'NOMB_PLANTA'
      KeyFields = 'CODI_PLANTA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.NOMB_PLANTA'
      Size = 60
      Lookup = True
    end
    object consultaCODI_SECC_ANTERIOR: TStringField
      DisplayLabel = 'Cód. sección (anterior)'
      FieldName = 'CODI_SECC_ANTERIOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.CODI_SECC_ANTERIOR'
      Size = 12
    end
    object consultaNOMB_SECC_ANTERIOR: TStringField
      DisplayLabel = 'Sección (anterior)'
      FieldKind = fkLookup
      FieldName = 'NOMB_SECC_ANTERIOR'
      LookupDataSet = quer_glo_secciones
      LookupKeyFields = 'CODI_SECCION'
      LookupResultField = 'NOMB_SECCION'
      KeyFields = 'CODI_SECC_ANTERIOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.NOMB_SECC_ANTERIOR'
      Size = 60
      Lookup = True
    end
    object consultaCODI_SECCION: TStringField
      DisplayLabel = 'Cód. sección (nuevo)'
      FieldName = 'CODI_SECCION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.CODI_SECCION'
      Size = 12
    end
    object consultaNOMB_SECCION: TStringField
      DisplayLabel = 'Sección (nuevo)'
      FieldKind = fkLookup
      FieldName = 'NOMB_SECCION'
      LookupDataSet = quer_glo_secciones
      LookupKeyFields = 'CODI_SECCION'
      LookupResultField = 'NOMB_SECCION'
      KeyFields = 'CODI_SECCION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.NOMB_SECCION'
      Size = 60
      Lookup = True
    end
    object consultaCODI_BODE_ANTERIOR: TStringField
      DisplayLabel = 'Cód. bodega (anterior)'
      FieldName = 'CODI_BODE_ANTERIOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.CODI_BODE_ANTERIOR'
      Size = 12
    end
    object consultaNOMB_BODE_ANTERIOR: TStringField
      DisplayLabel = 'Bodega (anterior)'
      FieldKind = fkLookup
      FieldName = 'NOMB_BODE_ANTERIOR'
      LookupDataSet = quer_glo_bodegas
      LookupKeyFields = 'CODI_BODEGA'
      LookupResultField = 'NOMB_BODEGA'
      KeyFields = 'CODI_BODE_ANTERIOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.NOMB_BODE_ANTERIOR'
      Size = 60
      Lookup = True
    end
    object consultaCODI_BODEGA: TStringField
      DisplayLabel = 'Cód. bodega (nuevo)'
      FieldName = 'CODI_BODEGA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.CODI_BODEGA'
      Size = 12
    end
    object consultaNOMB_BODEGA: TStringField
      DisplayLabel = 'Bodega (nuevo)'
      FieldKind = fkLookup
      FieldName = 'NOMB_BODEGA'
      LookupDataSet = quer_glo_bodegas
      LookupKeyFields = 'CODI_BODEGA'
      LookupResultField = 'NOMB_BODEGA'
      KeyFields = 'CODI_BODEGA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.NOMB_BODEGA'
      Size = 60
      Lookup = True
    end
    object consultaOTRA_UBICACION: TStringField
      DisplayLabel = 'Otra ubicación'
      FieldName = 'OTRA_UBICACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.OTRA_UBICACION'
      Size = 60
    end
    object consultaSOLICITA: TStringField
      DisplayLabel = 'Solicitante'
      FieldName = 'SOLICITA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.SOLICITA'
      Size = 60
    end
    object consultaENTREGA: TStringField
      DisplayLabel = 'Entrega'
      FieldName = 'ENTREGA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.ENTREGA'
      Size = 60
    end
    object consultaRECIBE: TStringField
      DisplayLabel = 'Recibe'
      FieldName = 'RECIBE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.RECIBE'
      Size = 60
    end
    object consultaANULADO: TIntegerField
      DisplayLabel = 'Anulado'
      FieldName = 'ANULADO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.ANULADO'
    end
    object consultaOBSERVACIONES: TMemoField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQU_TRASLADOS.OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
  end
  inherited Eliminar: TQuery
    SQL.Strings = (
      'No ejecutar')
    Top = 34
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'SECU_MOVIMIENTO'
    NombreAMostrar = 'Traslado de recurso'
    CamposDeBusqueda = 'SECU_MOVIMIENTO'
    TipoGenero = geEl
    TablaMaestra = 'NO EJECUTAR'
  end
  object quer_glo_empresas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select codi_empresa, nomb_empresa'
      'from GLO_EMPRESAS'
      'order by codi_empresa')
    Left = 56
    Top = 221
  end
  object quer_glo_areas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select codi_area, nomb_area'
      'from GLO_AREAS'
      'order by codi_area')
    Left = 56
    Top = 253
  end
  object quer_glo_plantas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select codi_planta, nomb_planta'
      'from GLO_PLANTAS'
      'order by codi_planta')
    Left = 56
    Top = 285
  end
  object quer_glo_secciones: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select codi_seccion, nomb_seccion'
      'from GLO_SECCIONES'
      'order by codi_seccion')
    Left = 56
    Top = 317
  end
  object quer_glo_bodegas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select codi_bodega, nomb_bodega'
      'from GLO_BODEGAS'
      'order by codi_bodega')
    Left = 56
    Top = 349
  end
end

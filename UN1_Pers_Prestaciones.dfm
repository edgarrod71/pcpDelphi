inherited FN1_Pers_Prestaciones: TFN1_Pers_Prestaciones
  Left = 222
  Top = 160
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'USUA_SISTEMA'
          Filter.Criteria = {00000000}
          object padr_gridSALU_EMPRESA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SALU_EMPRESA'
          end
          object padr_gridPENS_EMPLEADO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PENS_EMPLEADO'
          end
          object padr_gridCAJA_EMPRESA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CAJA_EMPRESA'
          end
          object padr_gridTOTA_PARAFISCALES: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TOTA_PARAFISCALES'
          end
          object padr_gridPRIMA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRIMA'
          end
          object padr_gridPRIM_EXTRA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRIM_EXTRA'
          end
          object padr_gridVACACIONES: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VACACIONES'
          end
          object padr_gridCESANTIAS: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CESANTIAS'
          end
          object padr_gridINTE_CESANTIAS: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'INTE_CESANTIAS'
          end
          object padr_gridOTROS: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OTROS'
          end
          object padr_gridTOTA_PRESTACIONES: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TOTA_PRESTACIONES'
          end
          object padr_gridSENA_EMPRESA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SENA_EMPRESA'
          end
          object padr_gridARP_EMPRESA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ARP_EMPRESA'
          end
          object padr_gridICBF_EMPRESA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ICBF_EMPRESA'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Prestaciones (Personal)'
      Caption = 'Prestaciones (Personal)'
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
      'FROM GLO_PERS_PRESTACIONES')
    object consultaSALU_EMPRESA: TSmallintField
      DisplayLabel = 'Salud'
      FieldName = 'SALU_EMPRESA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRESTACIONES.SALU_EMPRESA'
    end
    object consultaPENS_EMPLEADO: TSmallintField
      DisplayLabel = 'Pensión'
      FieldName = 'PENS_EMPLEADO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRESTACIONES.PENS_EMPLEADO'
    end
    object consultaCAJA_EMPRESA: TSmallintField
      DisplayLabel = 'Caja Compensación'
      FieldName = 'CAJA_EMPRESA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRESTACIONES.CAJA_EMPRESA'
    end
    object consultaTOTA_PARAFISCALES: TSmallintField
      DisplayLabel = 'Total Parafiscales'
      FieldName = 'TOTA_PARAFISCALES'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRESTACIONES.TOTA_PARAFISCALES'
    end
    object consultaPRIMA: TSmallintField
      DisplayLabel = 'Prima'
      FieldName = 'PRIMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRESTACIONES.PRIMA'
    end
    object consultaPRIM_EXTRA: TSmallintField
      DisplayLabel = 'Prima Extra'
      FieldName = 'PRIM_EXTRA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRESTACIONES.PRIM_EXTRA'
    end
    object consultaVACACIONES: TSmallintField
      DisplayLabel = 'Vacaciones'
      FieldName = 'VACACIONES'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRESTACIONES.VACACIONES'
    end
    object consultaCESANTIAS: TSmallintField
      DisplayLabel = 'Cesantías'
      FieldName = 'CESANTIAS'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRESTACIONES.CESANTIAS'
    end
    object consultaINTE_CESANTIAS: TSmallintField
      DisplayLabel = 'Int. Cesantías'
      FieldName = 'INTE_CESANTIAS'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRESTACIONES.INTE_CESANTIAS'
    end
    object consultaOTROS: TSmallintField
      DisplayLabel = 'Otros'
      FieldName = 'OTROS'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRESTACIONES.OTROS'
    end
    object consultaTOTA_PRESTACIONES: TSmallintField
      DisplayLabel = 'Total Prestaciones'
      FieldName = 'TOTA_PRESTACIONES'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRESTACIONES.TOTA_PRESTACIONES'
    end
    object consultaSENA_EMPRESA: TSmallintField
      DisplayLabel = 'SENA'
      FieldName = 'SENA_EMPRESA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRESTACIONES.SENA_EMPRESA'
    end
    object consultaARP_EMPRESA: TSmallintField
      DisplayLabel = 'ARP'
      FieldName = 'ARP_EMPRESA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRESTACIONES.ARP_EMPRESA'
    end
    object consultaICBF_EMPRESA: TSmallintField
      DisplayLabel = 'ICBF'
      FieldName = 'ICBF_EMPRESA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRESTACIONES.ICBF_EMPRESA'
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRESTACIONES.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRESTACIONES.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'USUA_SISTEMA'
    NombreAMostrar = 'Prestaciones (Personal)'
    CamposDeBusqueda = 'USUA_SISTEMA'
    TipoGenero = geLas
    TablaMaestra = 'GLO_PERS_PRESTACIONES'
  end
end

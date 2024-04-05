inherited FN1_Para_Areas: TFN1_Para_Areas
  Left = 204
  Top = 165
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CODI_AREA'
          Filter.Criteria = {00000000}
          object padr_gridCONS_AREA: TdxDBGridMaskColumn
            Visible = False
            Width = 29
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_AREA'
          end
          object padr_gridCODI_AREA: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_AREA'
          end
          object padr_gridNOMB_AREA: TdxDBGridMaskColumn
            Width = 209
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_AREA'
          end
          object padr_gridTELE_1: TdxDBGridMaskColumn
            Width = 113
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELE_1'
          end
          object padr_gridTELE_2: TdxDBGridMaskColumn
            Width = 95
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELE_2'
          end
          object padr_gridFAX: TdxDBGridMaskColumn
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAX'
          end
          object padr_gridTELE_MOVIL: TdxDBGridMaskColumn
            Width = 116
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELE_MOVIL'
          end
          object padr_gridRESPONSABLE: TdxDBGridMaskColumn
            Width = 181
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RESPONSABLE'
          end
          object padr_gridDESCRIPCION: TdxDBGridMaskColumn
            Width = 253
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESCRIPCION'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            Width = 124
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
      LabelCaption = 'Areas'
      Caption = 'Areas'
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
      'FROM GLO_AREAS'
      'WHERE CONS_AREA <> 0'
      'ORDER BY CODI_AREA')
    object consultaCONS_AREA: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_AREA'
      Origin = 'DATA_BASE_PCP.GLO_AREAS.CONS_AREA'
    end
    object consultaCODI_AREA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_AREA'
      Origin = 'DATA_BASE_PCP.GLO_AREAS.CODI_AREA'
      Size = 12
    end
    object consultaNOMB_AREA: TStringField
      DisplayLabel = 'Area'
      FieldName = 'NOMB_AREA'
      Origin = 'DATA_BASE_PCP.GLO_AREAS.NOMB_AREA'
      Size = 60
    end
    object consultaTELE_1: TStringField
      DisplayLabel = 'Teléfono'
      FieldName = 'TELE_1'
      Origin = 'DATA_BASE_PCP.GLO_AREAS.TELE_1'
      Size = 30
    end
    object consultaTELE_2: TStringField
      DisplayLabel = 'Extensión'
      FieldName = 'TELE_2'
      Origin = 'DATA_BASE_PCP.GLO_AREAS.TELE_2'
      Size = 30
    end
    object consultaFAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = 'DATA_BASE_PCP.GLO_AREAS.FAX'
      Size = 30
    end
    object consultaTELE_MOVIL: TStringField
      DisplayLabel = 'Movil'
      FieldName = 'TELE_MOVIL'
      Origin = 'DATA_BASE_PCP.GLO_AREAS.TELE_MOVIL'
      Size = 30
    end
    object consultaRESPONSABLE: TStringField
      DisplayLabel = 'Responsable'
      FieldName = 'RESPONSABLE'
      Origin = 'DATA_BASE_PCP.GLO_AREAS.RESPONSABLE'
      Size = 60
    end
    object consultaDESCRIPCION: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESCRIPCION'
      Origin = 'DATA_BASE_PCP.GLO_AREAS.DESCRIPCION'
      Size = 240
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_AREAS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_AREAS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_AREA'
    NombreAMostrar = 'Area'
    CamposDeBusqueda = 'CONS_AREA'
    TipoGenero = geEl
    TablaMaestra = 'GLO_AREAS'
  end
end

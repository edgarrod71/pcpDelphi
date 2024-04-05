inherited Fn1_Pers_Tipo_Movimientos: TFn1_Pers_Tipo_Movimientos
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_PERS_TIPO_MOVIMIENTO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_PERS_TIPO_MOVIMIENTO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_TIPO_MOVIMIENTO'
          end
          object padr_gridCODI_PERS_TIPO_MOVIMIENTO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERS_TIPO_MOVIMIENTO'
          end
          object padr_gridNOMB_PERS_TIPO_MOVIMIENTO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_TIPO_MOVIMIENTO'
          end
          object padr_gridCONS_FAMI_MOVIMIENTO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_FAMI_MOVIMIENTO'
          end
          object padr_gridCODI_FAMI_MOVIMIENTO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_FAMI_MOVIMIENTO'
          end
          object padr_gridNOMB_FAMI_MOVIMIENTO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_FAMI_MOVIMIENTO'
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
      LabelCaption = 'Tipos de Movimiento (Personal)'
      Caption = 'Tipos de Movimiento (Personal)'
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
      'SELECT T.*, F.CODI_FAMI_MOVIMIENTO, F.NOMB_FAMI_MOVIMIENTO'
      'FROM GLO_PERS_TIPO_MOVIMIENTO T, SIS_FAMI_MOVIMIENTO F'
      'WHERE T.CONS_FAMI_MOVIMIENTO = F.CONS_FAMI_MOVIMIENTO'
      ' AND T.CONS_PERS_TIPO_MOVIMIENTO > 5'
      'ORDER BY T.NOMB_PERS_TIPO_MOVIMIENTO')
    object consultaCONS_PERS_TIPO_MOVIMIENTO: TIntegerField
      DisplayLabel = 'Cons. Tipo Movimiento'
      FieldName = 'CONS_PERS_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.CONS_PERS_TIPO_MOVIMIENTO'
    end
    object consultaCODI_PERS_TIPO_MOVIMIENTO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERS_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.CODI_PERS_TIPO_MOVIMIENTO'
      Size = 12
    end
    object consultaNOMB_PERS_TIPO_MOVIMIENTO: TStringField
      DisplayLabel = 'Tipo Movimiento'
      FieldName = 'NOMB_PERS_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.NOMB_PERS_TIPO_MOVIMIENTO'
      Size = 60
    end
    object consultaCONS_FAMI_MOVIMIENTO: TIntegerField
      DisplayLabel = 'Cons. Familia Movimiento'
      FieldName = 'CONS_FAMI_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.CONS_FAMI_MOVIMIENTO'
    end
    object consultaCODI_FAMI_MOVIMIENTO: TStringField
      DisplayLabel = 'Cód. Familia Movimiento'
      FieldName = 'CODI_FAMI_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.SIS_FAMI_MOVIMIENTO.CODI_FAMI_MOVIMIENTO'
      Size = 12
    end
    object consultaNOMB_FAMI_MOVIMIENTO: TStringField
      DisplayLabel = 'Familia Movimiento'
      FieldName = 'NOMB_FAMI_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.SIS_FAMI_MOVIMIENTO.NOMB_FAMI_MOVIMIENTO'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_PERS_TIPO_MOVIMIENTO'
    NombreAMostrar = 'Tipo Movimiento'
    CamposDeBusqueda = 'CONS_PERS_TIPO_MOVIMIENTO'
    TipoGenero = geEl
    TablaMaestra = 'GLO_PERS_TIPO_MOVIMIENTO'
  end
end

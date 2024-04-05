inherited fn1_meto_tiem_cicl_maquina: Tfn1_meto_tiem_cicl_maquina
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_METO_TIEM_CICLO'
          Filter.Criteria = {00000000}
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
          object padr_gridCONS_METO_TIEM_CICLO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_METO_TIEM_CICLO'
          end
          object padr_gridCODI_METO_TIEM_CICLO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_METO_TIEM_CICLO'
          end
          object padr_gridNOMB_METO_TIEM_CICLO: TdxDBGridMaskColumn
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_METO_TIEM_CICLO'
          end
          object padr_gridCONS_RECU_GRUPO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_GRUPO'
          end
          object padr_gridCODI_RECU_GRUPO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_GRUPO'
          end
          object padr_gridNOMB_RECU_GRUPO: TdxDBGridMaskColumn
            Width = 52
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_GRUPO'
          end
          object padr_gridCONS_RECU_TIPO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_TIPO'
          end
          object padr_gridCODI_RECU_TIPO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_TIPO'
          end
          object padr_gridNOMB_RECU_TIPO: TdxDBGridMaskColumn
            Width = 44
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_TIPO'
          end
          object padr_gridCONS_RECU_FAMILIA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_FAMILIA'
          end
          object padr_gridCODI_RECU_FAMILIA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_FAMILIA'
          end
          object padr_gridNOMB_RECU_FAMILIA: TdxDBGridMaskColumn
            Width = 55
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_FAMILIA'
          end
          object padr_gridCARACTERISTICAS: TdxDBGridMaskColumn
            Width = 94
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CARACTERISTICAS'
          end
          object padr_gridTIEM_CST: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIEM_CST'
          end
          object padr_gridTIEM_ASIGNADO: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIEM_ASIGNADO'
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
      LabelCaption = 'Tiempo ciclo de máquina'
      Caption = 'Tiempo ciclo de máquina'
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
      'FROM VIS_PCP_METO_TIEM_CICLO'
      'ORDER BY CONS_METO_TIEM_CICLO')
    object consultaCONS_METO_TIEM_CICLO: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_METO_TIEM_CICLO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_METO_TIEM_CICLO.CONS_METO_TIEM_CICLO'
    end
    object consultaCODI_METO_TIEM_CICLO: TStringField
      DisplayLabel = 'Cód. tiempo ciclo'
      FieldName = 'CODI_METO_TIEM_CICLO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_METO_TIEM_CICLO.CODI_METO_TIEM_CICLO'
      Size = 12
    end
    object consultaNOMB_METO_TIEM_CICLO: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMB_METO_TIEM_CICLO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_METO_TIEM_CICLO.NOMB_METO_TIEM_CICLO'
      Size = 60
    end
    object consultaCONS_RECU_GRUPO: TIntegerField
      DisplayLabel = 'No. grupo'
      FieldName = 'CONS_RECU_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_METO_TIEM_CICLO.CONS_RECU_GRUPO'
    end
    object consultaCODI_RECU_GRUPO: TStringField
      DisplayLabel = 'Cód. grupo'
      FieldName = 'CODI_RECU_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_METO_TIEM_CICLO.CODI_RECU_GRUPO'
      Size = 12
    end
    object consultaNOMB_RECU_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_RECU_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_METO_TIEM_CICLO.NOMB_RECU_GRUPO'
      Size = 60
    end
    object consultaCONS_RECU_TIPO: TIntegerField
      DisplayLabel = 'No. tipo'
      FieldName = 'CONS_RECU_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_METO_TIEM_CICLO.CONS_RECU_TIPO'
    end
    object consultaCODI_RECU_TIPO: TStringField
      DisplayLabel = 'Cód. tipo'
      FieldName = 'CODI_RECU_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_METO_TIEM_CICLO.CODI_RECU_TIPO'
      Size = 12
    end
    object consultaNOMB_RECU_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'NOMB_RECU_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_METO_TIEM_CICLO.NOMB_RECU_TIPO'
      Size = 60
    end
    object consultaCONS_RECU_FAMILIA: TIntegerField
      DisplayLabel = 'No. familia'
      FieldName = 'CONS_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_METO_TIEM_CICLO.CONS_RECU_FAMILIA'
    end
    object consultaCODI_RECU_FAMILIA: TStringField
      DisplayLabel = 'Cód. Familia'
      FieldName = 'CODI_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_METO_TIEM_CICLO.CODI_RECU_FAMILIA'
      Size = 12
    end
    object consultaNOMB_RECU_FAMILIA: TStringField
      DisplayLabel = 'Familia'
      FieldName = 'NOMB_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_METO_TIEM_CICLO.NOMB_RECU_FAMILIA'
      Size = 60
    end
    object consultaCARACTERISTICAS: TStringField
      DisplayLabel = 'Características'
      FieldName = 'CARACTERISTICAS'
      Origin = 'DATA_BASE_PCP.VIS_PCP_METO_TIEM_CICLO.CARACTERISTICAS'
      Size = 240
    end
    object consultaTIEM_ASIGNADO: TFloatField
      FieldName = 'TIEM_ASIGNADO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_METO_TIEM_CICLO.TIEM_ASIGNADO'
    end
    object consultaTIEM_CST: TFloatField
      DisplayLabel = 'Tiempo (TMU)'
      FieldName = 'TIEM_CST'
      Origin = 'DATA_BASE_PCP.VIS_PCP_METO_TIEM_CICLO.TIEM_CST'
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_METO_TIEM_CICLO.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_METO_TIEM_CICLO.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'codi_meto_tiem_ciclo'
    NombreAMostrar = 'Tiempo ciclo de máquina'
    CamposDeBusqueda = 'cons_meto_tiem_ciclo'
    TablaMaestra = 'PCP_METO_TIEM_CICLO'
  end
end

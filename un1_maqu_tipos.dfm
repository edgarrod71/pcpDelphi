inherited fn1_maqu_tipos: Tfn1_maqu_tipos
  Left = 284
  Top = 168
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_RECU_TIPO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_RECU_TIPO: TdxDBGridMaskColumn
            Visible = False
            Width = 71
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_TIPO'
          end
          object padr_gridCODI_RECU_TIPO: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_TIPO'
          end
          object padr_gridNOMB_RECU_TIPO: TdxDBGridMaskColumn
            Width = 184
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_TIPO'
          end
          object padr_gridCARACTERISTICAS: TdxDBGridMaskColumn
            Width = 268
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CARACTERISTICAS'
          end
          object padr_gridCONS_RECU_GRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 97
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_GRUPO'
          end
          object padr_gridCODI_RECU_GRUPO: TdxDBGridMaskColumn
            Width = 92
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_GRUPO'
          end
          object padr_gridNOMB_RECU_GRUPO: TdxDBGridMaskColumn
            Width = 184
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_GRUPO'
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
      LabelCaption = 'Sub - Grupos de recursos'
      Caption = 'Sub - Grupos de recursos'
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
      'SELECT T.*, G.CODI_RECU_GRUPO, G.NOMB_RECU_GRUPO'
      'FROM GLO_RECU_TIPOS T, GLO_RECU_GRUPOS G'
      'WHERE T.CONS_RECU_GRUPO = G.CONS_RECU_GRUPO'
      ' AND T.CONS_RECU_TIPO <> 0'
      'ORDER BY T.CODI_RECU_TIPO')
    object consultaCONS_RECU_TIPO: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_RECU_TIPO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPOS.CONS_RECU_TIPO'
    end
    object consultaCODI_RECU_TIPO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_RECU_TIPO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPOS.CODI_RECU_TIPO'
      Size = 12
    end
    object consultaNOMB_RECU_TIPO: TStringField
      DisplayLabel = 'Sub - Grupo de Recurso'
      FieldName = 'NOMB_RECU_TIPO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPOS.NOMB_RECU_TIPO'
      Size = 60
    end
    object consultaCARACTERISTICAS: TStringField
      DisplayLabel = 'Caracteristicas'
      FieldName = 'CARACTERISTICAS'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPOS.CARACTERISTICAS'
      Size = 240
    end
    object consultaCONS_RECU_GRUPO: TIntegerField
      DisplayLabel = 'No. Grupo Recu.'
      FieldName = 'CONS_RECU_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPOS.CONS_RECU_GRUPO'
    end
    object consultaCODI_RECU_GRUPO: TStringField
      DisplayLabel = 'Cód. Grupo Recu.'
      FieldName = 'CODI_RECU_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_GRUPOS.CODI_RECU_GRUPO'
      Size = 12
    end
    object consultaNOMB_RECU_GRUPO: TStringField
      DisplayLabel = 'Grupo Recurso'
      FieldName = 'NOMB_RECU_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_GRUPOS.NOMB_RECU_GRUPO'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPOS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_RECU_TIPO'
    NombreAMostrar = 'Sub-grupo de recursos'
    CamposDeBusqueda = 'CONS_RECU_TIPO'
    TipoGenero = geEl
    TablaMaestra = 'GLO_RECU_TIPOS'
  end
end

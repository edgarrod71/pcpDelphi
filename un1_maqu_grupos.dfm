inherited fn1_maqu_grupos: Tfn1_maqu_grupos
  Left = 202
  Top = 147
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_RECU_GRUPO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_RECU_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_GRUPO'
          end
          object padr_gridCODI_RECU_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_GRUPO'
          end
          object padr_gridNOMB_RECU_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 212
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_GRUPO'
          end
          object padr_gridOBSERVACIONES: TdxDBGridBlobColumn
            Caption = 'Obs.'
            HeaderAlignment = taCenter
            Width = 45
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBSERVACIONES'
            BlobKind = bkMemo
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
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Grupos de recursos'
      Caption = 'Grupos de recursos'
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
      'FROM GLO_RECU_GRUPOS'
      'WHERE CONS_RECU_GRUPO <> 0'
      'ORDER BY CODI_RECU_GRUPO')
    Top = 34
    object consultaCONS_RECU_GRUPO: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_RECU_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_GRUPOS.CONS_RECU_GRUPO'
    end
    object consultaCODI_RECU_GRUPO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_RECU_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_GRUPOS.CODI_RECU_GRUPO'
      Size = 12
    end
    object consultaNOMB_RECU_GRUPO: TStringField
      DisplayLabel = 'Grupo de Recurso'
      FieldName = 'NOMB_RECU_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_GRUPOS.NOMB_RECU_GRUPO'
      Size = 60
    end
    object consultaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Origin = 'DATA_BASE_PCP.GLO_RECU_GRUPOS.OBSERVACIONES'
      Size = 240
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_GRUPOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_GRUPOS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_RECU_GRUPO'
    NombreAMostrar = 'Grupo de recursos'
    CamposDeBusqueda = 'CONS_RECU_GRUPO'
    TipoGenero = geEl
    TablaMaestra = 'GLO_RECU_GRUPOS'
  end
end

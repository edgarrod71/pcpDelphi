inherited fn1_refe_lavados: Tfn1_refe_lavados
  Left = 64
  Top = 61
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_REFE_LAVADO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_REFE_LAVADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_LAVADO'
          end
          object padr_gridCODI_REFE_LAVADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_LAVADO'
          end
          object padr_gridNOMB_REFE_LAVADO: TdxDBGridMemoColumn
            HeaderAlignment = taCenter
            Width = 141
            BandIndex = 0
            RowIndex = 0
            HeaderMaxLineCount = 1
            FieldName = 'NOMB_REFE_LAVADO'
          end
          object padr_gridOBSERVACIONES: TdxDBGridBlobColumn
            Caption = 'Obs.'
            HeaderAlignment = taCenter
            Width = 30
            BandIndex = 0
            RowIndex = 0
            HeaderMaxLineCount = 0
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
      LabelCaption = 'Lavados de productos'
      Caption = 'Lavados de productos'
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
      'SELECT L.* ,'
      ' CASE L.AJUS_IMAGEN'
      '   WHEN -1 THEN '#39'No'#39
      '   WHEN 1 THEN '#39'Si'#39
      '   ELSE '#39'Desconocido'#39
      ' END AS AJUS_IMAGEN1'
      'FROM GLO_REFE_LAVADOS L'
      'where cons_Refe_lavado>0'
      'ORDER BY CODI_REFE_LAVADO')
    object consultaCONS_REFE_LAVADO: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_REFE_LAVADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LAVADOS.CONS_REFE_LAVADO'
    end
    object consultaCODI_REFE_LAVADO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_REFE_LAVADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LAVADOS.CODI_REFE_LAVADO'
      Size = 12
    end
    object consultaNOMB_REFE_LAVADO: TStringField
      DisplayLabel = 'Lavado'
      FieldName = 'NOMB_REFE_LAVADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LAVADOS.NOMB_REFE_LAVADO'
      Size = 60
    end
    object consultaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LAVADOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LAVADOS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_REFE_LAVADO'
    NombreAMostrar = 'Lavado de productos'
    CamposDeBusqueda = 'CONS_REFE_LAVADO'
    TipoGenero = geEl
    TablaMaestra = 'GLO_REFE_LAVADOS'
  end
end

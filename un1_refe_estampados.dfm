inherited fn1_refe_estampados: Tfn1_refe_estampados
  Left = 26
  Top = 74
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_REFE_ESTAMPADO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_REFE_ESTAMPADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_ESTAMPADO'
          end
          object padr_gridCODI_REFE_ESTAMPADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_ESTAMPADO'
          end
          object padr_gridNOMB_REFE_ESTAMPADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 146
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_ESTAMPADO'
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
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Estampados'
      Caption = 'Estampados'
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
      'SELECT E.* ,'
      ' CASE E.AJUS_IMAGEN'
      '   WHEN -1 THEN '#39'No'#39
      '   WHEN 1 THEN '#39'Si'#39
      '   ELSE '#39'Desconocido'#39
      ' END AS AJUS_IMAGEN1'
      'FROM GLO_REFE_ESTAMPADOS E'
      'where cons_refe_estampado>0'
      'ORDER BY CODI_REFE_ESTAMPADO')
    object consultaCONS_REFE_ESTAMPADO: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_REFE_ESTAMPADO'
    end
    object consultaCODI_REFE_ESTAMPADO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_REFE_ESTAMPADO'
      Size = 12
    end
    object consultaNOMB_REFE_ESTAMPADO: TStringField
      DisplayLabel = 'Estampado'
      FieldName = 'NOMB_REFE_ESTAMPADO'
      Size = 60
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object consultaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_REFE_ESTAMPADO'
    NombreAMostrar = 'Estampado'
    CamposDeBusqueda = 'CONS_REFE_ESTAMPADO'
    TablaMaestra = 'GLO_REFE_ESTAMPADOS'
  end
end

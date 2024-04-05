inherited fn1_refe_bordados: Tfn1_refe_bordados
  Left = 31
  Height = 475
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 438
  end
  inherited padr_pane_1: TPanel
    Height = 405
    inherited padr_pagina: TdxPageControl
      Height = 395
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Height = 319
          KeyField = 'CONS_REFE_BORDADO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_REFE_BORDADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 42
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_BORDADO'
          end
          object padr_gridCODI_REFE_BORDADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_BORDADO'
          end
          object padr_gridNOMB_REFE_BORDADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 161
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_BORDADO'
          end
          object padr_gridOBSERVACIONES: TdxDBGridBlobColumn
            Caption = 'Obs.'
            HeaderAlignment = taCenter
            Width = 35
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
        inherited padr_dock_izqu_grid: TTBXDock
          Height = 319
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 297
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Height = 319
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 297
              inherited padr_prio_impresion: TdxTreeList
                Height = 71
              end
            end
          end
        end
      end
    end
  end
  inherited padr_dock_izquierda: TTBXDock
    Height = 405
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Bordados de productos'
      Caption = 'Bordados de productos'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Height = 405
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
  inherited padr_dock_bottom: TTBXDock
    Top = 439
  end
  inherited padr_dock_right: TTBXDock
    Height = 405
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT B.* ,'
      ' CASE B.AJUS_IMAGEN'
      '   WHEN -1 THEN '#39'No'#39
      '   WHEN 1 THEN '#39'Si'#39
      '   ELSE '#39'Desconocido'#39
      ' END AS AJUS_IMAGEN1'
      'FROM GLO_REFE_BORDADOS B'
      'where cons_Refe_bordado>0'
      'ORDER BY CODI_REFE_BORDADO')
    object consultaCONS_REFE_BORDADO: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_REFE_BORDADO'
    end
    object consultaCODI_REFE_BORDADO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_REFE_BORDADO'
      Size = 12
    end
    object consultaNOMB_REFE_BORDADO: TStringField
      DisplayLabel = 'Bordado'
      FieldName = 'NOMB_REFE_BORDADO'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
    object consultaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_REFE_BORDADO'
    NombreAMostrar = 'Bordado de productos'
    CamposDeBusqueda = 'CONS_REFE_BORDADO'
    TablaMaestra = 'GLO_REFE_BORDADOS'
  end
end

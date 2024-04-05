inherited FN1_Para_Prioridades: TFN1_Para_Prioridades
  Width = 712
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 704
  end
  inherited padr_shap_xp_down: TShape
    Width = 704
  end
  inherited padr_pane_1: TPanel
    Width = 478
    inherited padr_pagina: TdxPageControl
      Width = 468
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Width = 78
          KeyField = 'CONS_PRIORIDAD'
          Filter.Criteria = {00000000}
          object padr_gridCONS_PRIORIDAD: TdxDBGridMaskColumn
            Visible = False
            Width = 58
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PRIORIDAD'
          end
          object padr_gridCODI_PRIORIDAD: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PRIORIDAD'
          end
          object padr_gridNOMB_PRIORIDAD: TdxDBGridMaskColumn
            Width = 196
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PRIORIDAD'
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
        inherited padr_dock_arriba: TTBXDock
          Width = 468
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 468
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 468
          inherited padr_beve_sepa: TBevel
            Width = 679
          end
          inherited padr_sepa_new: TShape
            Width = 462
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 273
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    Width = 704
    inherited padr_pane_2: TPanel
      Left = 633
    end
    inherited padr_pane_cerrar: TPanel
      Left = 651
    end
    inherited padr_pane_titulo: TPCPTituloGradiente
      Width = 633
      LabelCaption = 'Prioridades'
      Caption = 'Prioridades'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 496
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
  inherited padr_dock_top: TTBXDock
    Width = 704
  end
  inherited padr_dock_bottom: TTBXDock
    Width = 704
  end
  inherited padr_dock_right: TTBXDock
    Left = 487
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PRIORIDADES'
      'ORDER BY NOMB_PRIORIDAD')
    object consultaCONS_PRIORIDAD: TIntegerField
      DisplayLabel = 'Cons. Prioridad'
      FieldName = 'CONS_PRIORIDAD'
      Origin = 'DATA_BASE_PCP.GLO_PRIORIDADES.CONS_PRIORIDAD'
    end
    object consultaCODI_PRIORIDAD: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PRIORIDAD'
      Origin = 'DATA_BASE_PCP.GLO_PRIORIDADES.CODI_PRIORIDAD'
      Size = 12
    end
    object consultaNOMB_PRIORIDAD: TStringField
      DisplayLabel = 'Prioridad'
      FieldName = 'NOMB_PRIORIDAD'
      Origin = 'DATA_BASE_PCP.GLO_PRIORIDADES.NOMB_PRIORIDAD'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PRIORIDADES.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PRIORIDADES.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_PRIORIDAD'
    NombreAMostrar = 'Prioridad'
    CamposDeBusqueda = 'CONS_PRIORIDAD'
    TablaMaestra = 'GLO_PRIORIDADES'
  end
end

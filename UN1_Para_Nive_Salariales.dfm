inherited FN1_Para_Nive_Salariales: TFN1_Para_Nive_Salariales
  Left = 205
  Top = 151
  Width = 727
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 719
  end
  inherited padr_shap_xp_down: TShape
    Width = 719
  end
  inherited padr_pane_1: TPanel
    Width = 493
    inherited padr_pagina: TdxPageControl
      Width = 483
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Width = 93
          KeyField = 'CONS_PERS_NIVE_SALARIAL'
          Filter.Criteria = {00000000}
          object padr_gridCONS_PERS_NIVE_SALARIAL: TdxDBGridMaskColumn
            Visible = False
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_NIVE_SALARIAL'
          end
          object padr_gridCODI_PERS_NIVE_SALARIAL: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERS_NIVE_SALARIAL'
          end
          object padr_gridNOMB_PERS_NIVE_SALARIAL: TdxDBGridMaskColumn
            Width = 155
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_NIVE_SALARIAL'
          end
          object padr_gridVALO_MINIMO: TdxDBGridMaskColumn
            Width = 86
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_MINIMO'
          end
          object padr_gridVALO_MAXIMO: TdxDBGridMaskColumn
            Width = 86
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_MAXIMO'
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
          Width = 483
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 483
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 483
          inherited padr_beve_sepa: TBevel
            Width = 694
          end
          inherited padr_sepa_new: TShape
            Width = 477
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 288
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    Width = 719
    inherited padr_pane_2: TPanel
      Left = 648
    end
    inherited padr_pane_cerrar: TPanel
      Left = 666
    end
    inherited padr_pane_titulo: TPCPTituloGradiente
      Width = 648
      LabelCaption = 'Niveles Salariales'
      Caption = 'Niveles Salariales'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 511
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
    Width = 719
  end
  inherited padr_dock_bottom: TTBXDock
    Width = 719
  end
  inherited padr_dock_right: TTBXDock
    Left = 502
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_NIVE_SALARIALES'
      'ORDER BY CODI_PERS_NIVE_SALARIAL')
    object consultaCONS_PERS_NIVE_SALARIAL: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERS_NIVE_SALARIAL'
      Origin = 'DATA_BASE_PCP.GLO_PERS_NIVE_SALARIALES.CONS_PERS_NIVE_SALARIAL'
    end
    object consultaCODI_PERS_NIVE_SALARIAL: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERS_NIVE_SALARIAL'
      Origin = 'DATA_BASE_PCP.GLO_PERS_NIVE_SALARIALES.CODI_PERS_NIVE_SALARIAL'
      Size = 12
    end
    object consultaNOMB_PERS_NIVE_SALARIAL: TStringField
      DisplayLabel = 'Nivel Salarial'
      FieldName = 'NOMB_PERS_NIVE_SALARIAL'
      Origin = 'DATA_BASE_PCP.GLO_PERS_NIVE_SALARIALES.NOMB_PERS_NIVE_SALARIAL'
      Size = 60
    end
    object consultaVALO_MINIMO: TIntegerField
      DisplayLabel = 'Valor Mínimo'
      FieldName = 'VALO_MINIMO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_NIVE_SALARIALES.VALO_MINIMO'
      DisplayFormat = '$ ,0'
    end
    object consultaVALO_MAXIMO: TIntegerField
      DisplayLabel = 'Valor Máximo'
      FieldName = 'VALO_MAXIMO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_NIVE_SALARIALES.VALO_MAXIMO'
      DisplayFormat = '$ ,0'
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_NIVE_SALARIALES.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_NIVE_SALARIALES.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'CODI_PERS_NIVE_SALARIAL'
    NombreAMostrar = 'Nivel Salarial'
    CamposDeBusqueda = 'CONS_PERS_NIVE_SALARIAL'
    TipoGenero = geEl
    TablaMaestra = 'GLO_PERS_NIVE_SALARIALES'
  end
end

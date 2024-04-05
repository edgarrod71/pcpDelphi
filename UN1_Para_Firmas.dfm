inherited FN1_Para_Firmas: TFN1_Para_Firmas
  Width = 729
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 721
  end
  inherited padr_shap_xp_down: TShape
    Width = 721
  end
  inherited padr_pane_1: TPanel
    Width = 495
    inherited padr_pagina: TdxPageControl
      Width = 485
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Width = 95
          KeyField = 'CONS_FIRMA'
          Filter.Criteria = {00000000}
          object padr_gridCONS_FIRMA: TdxDBGridMaskColumn
            Visible = False
            Width = 48
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_FIRMA'
          end
          object padr_gridCODI_FIRMA: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_FIRMA'
          end
          object padr_gridNOMB_FIRMA: TdxDBGridMaskColumn
            Width = 191
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_FIRMA'
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
          Width = 485
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 485
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 485
          inherited padr_beve_sepa: TBevel
            Width = 696
          end
          inherited padr_sepa_new: TShape
            Width = 479
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 290
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    Width = 721
    inherited padr_pane_2: TPanel
      Left = 650
    end
    inherited padr_pane_cerrar: TPanel
      Left = 668
    end
    inherited padr_pane_titulo: TPCPTituloGradiente
      Width = 650
      LabelCaption = 'Firmas'
      Caption = 'Firmas'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 513
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
    Width = 721
  end
  inherited padr_dock_bottom: TTBXDock
    Width = 721
  end
  inherited padr_dock_right: TTBXDock
    Left = 504
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_FIRMAS'
      'ORDER BY NOMB_FIRMA')
    object consultaCONS_FIRMA: TIntegerField
      DisplayLabel = 'Cons. Firma'
      FieldName = 'CONS_FIRMA'
      Origin = 'DATA_BASE_PCP.GLO_FIRMAS.CONS_FIRMA'
    end
    object consultaCODI_FIRMA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_FIRMA'
      Origin = 'DATA_BASE_PCP.GLO_FIRMAS.CODI_FIRMA'
      Size = 12
    end
    object consultaNOMB_FIRMA: TStringField
      DisplayLabel = 'Firma'
      FieldName = 'NOMB_FIRMA'
      Origin = 'DATA_BASE_PCP.GLO_FIRMAS.NOMB_FIRMA'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_FIRMAS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_FIRMAS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_FIRMA'
    NombreAMostrar = 'Firma'
    CamposDeBusqueda = 'CONS_FIRMA'
    TablaMaestra = 'GLO_FIRMAS'
  end
end

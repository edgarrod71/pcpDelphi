inherited Fn1_Para_Colo_Sub_Grupos: TFn1_Para_Colo_Sub_Grupos
  Left = 35
  Top = 137
  Width = 812
  Height = 500
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 463
    Width = 804
  end
  inherited padr_pane_1: TPanel
    Width = 578
    Height = 430
    inherited padr_pagina: TdxPageControl
      Width = 568
      Height = 420
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Width = 178
          Height = 344
          KeyField = 'CONS_COLO_SUBGRUPO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_COLO_SUBGRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 168
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COLO_SUBGRUPO'
          end
          object padr_gridCODI_COLO_SUBGRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 104
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COLO_SUBGRUPO'
          end
          object padr_gridNOMB_COLO_SUBGRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 160
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COLO_SUBGRUPO'
          end
          object padr_gridCONS_COLO_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 158
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COLO_GRUPO'
          end
          object padr_gridCODI_COLO_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 152
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COLO_GRUPO'
          end
          object padr_gridNOMB_COLO_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 166
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COLO_GRUPO'
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
        inherited padr_dock_arriba: TTBXDock
          Width = 568
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 568
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 568
          inherited padr_beve_sepa: TBevel
            Width = 814
          end
          inherited padr_sepa_new: TShape
            Width = 562
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Height = 344
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 322
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 373
          Height = 344
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 322
              inherited padr_prio_impresion: TdxTreeList
                Height = 96
              end
            end
          end
        end
      end
    end
  end
  inherited padr_dock_izquierda: TTBXDock
    Height = 430
  end
  inherited padr_titu_ventana: TPanel
    Width = 804
    inherited padr_pane_2: TPanel
      Left = 733
    end
    inherited padr_pane_cerrar: TPanel
      Left = 751
    end
    inherited padr_pane_titulo: TPCPTituloGradiente
      Width = 733
      LabelCaption = 'Subgrupos de colores'
      Caption = 'Subgrupos de colores'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 596
    Height = 430
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
    Width = 804
  end
  inherited padr_dock_bottom: TTBXDock
    Top = 464
    Width = 804
  end
  inherited padr_dock_right: TTBXDock
    Left = 587
    Height = 430
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM VIS_GLO_COLO_SUBGRUPOS'
      'WHERE CONS_COLO_SUBGRUPO > 0'
      'ORDER BY CODI_COLO_SUBGRUPO')
    object consultaCONS_COLO_SUBGRUPO: TIntegerField
      DisplayLabel = 'Cons. Subgrupo de Color'
      FieldName = 'CONS_COLO_SUBGRUPO'
      Origin = 'DATA_BASE_PCP.GLO_COLO_SUBGRUPOS.CONS_COLO_SUBGRUPO'
    end
    object consultaCODI_COLO_SUBGRUPO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_COLO_SUBGRUPO'
      Origin = 'DATA_BASE_PCP.GLO_COLO_SUBGRUPOS.CODI_COLO_SUBGRUPO'
      Size = 12
    end
    object consultaNOMB_COLO_SUBGRUPO: TStringField
      DisplayLabel = 'Subgrupo de Color'
      FieldName = 'NOMB_COLO_SUBGRUPO'
      Origin = 'DATA_BASE_PCP.GLO_COLO_SUBGRUPOS.NOMB_COLO_SUBGRUPO'
      Size = 60
    end
    object consultaCONS_COLO_GRUPO: TIntegerField
      DisplayLabel = 'Cons. grupo'
      FieldName = 'CONS_COLO_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COLO_SUBGRUPOS.CONS_COLO_GRUPO'
    end
    object consultaCODI_COLO_GRUPO: TStringField
      DisplayLabel = 'Cód. grupo'
      FieldName = 'CODI_COLO_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COLO_SUBGRUPOS.CODI_COLO_GRUPO'
      Size = 12
    end
    object consultaNOMB_COLO_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_COLO_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COLO_SUBGRUPOS.NOMB_COLO_GRUPO'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_COLO_SUBGRUPOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_COLO_SUBGRUPOS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_COLO_SUBGRUPO'
    NombreAMostrar = 'Subgrupo de Color'
    CamposDeBusqueda = 'CONS_COLO_SUBGRUPO'
    TipoGenero = geEl
    TablaMaestra = 'GLO_COLO_SUBGRUPOS'
  end
end

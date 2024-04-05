inherited fn1_maqu_familias: Tfn1_maqu_familias
  Left = 252
  Top = 159
  Width = 657
  Height = 505
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 649
  end
  inherited padr_shap_xp_down: TShape
    Top = 468
    Width = 649
  end
  inherited padr_pane_1: TPanel
    Width = 423
    Height = 435
    inherited padr_pagina: TdxPageControl
      Width = 413
      Height = 425
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Left = 179
          Width = 39
          Height = 349
          KeyField = 'CONS_RECU_FAMILIA'
          Filter.Criteria = {00000000}
          object padr_gridCONS_RECU_FAMILIA: TdxDBGridMaskColumn
            Visible = False
            Width = 61
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_FAMILIA'
          end
          object padr_gridCODI_RECU_FAMILIA: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_FAMILIA'
          end
          object padr_gridNOMB_RECU_FAMILIA: TdxDBGridMaskColumn
            Width = 205
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_FAMILIA'
          end
          object padr_gridCONS_RECU_TIPO: TdxDBGridMaskColumn
            Visible = False
            Width = 86
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_TIPO'
          end
          object padr_gridCODI_RECU_TIPO: TdxDBGridMaskColumn
            Width = 95
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_TIPO'
          end
          object padr_gridNOMB_RECU_TIPO: TdxDBGridMaskColumn
            Width = 205
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_TIPO'
          end
          object padr_gridCONS_RECU_GRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 93
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_GRUPO'
          end
          object padr_gridCODI_RECU_GRUPO: TdxDBGridMaskColumn
            Width = 103
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_GRUPO'
          end
          object padr_gridNOMB_RECU_GRUPO: TdxDBGridMaskColumn
            Width = 205
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_GRUPO'
          end
          object padr_gridPORC_SUPLEMENTO: TdxDBGridMaskColumn
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PORC_SUPLEMENTO'
          end
          object padr_gridCARACTERISTICAS: TdxDBGridMaskColumn
            Width = 1444
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CARACTERISTICAS'
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
          Width = 413
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 413
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 413
          inherited padr_beve_sepa: TBevel
            Width = 624
          end
          inherited padr_sepa_new: TShape
            Width = 407
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Width = 179
          Height = 349
          inherited padr_pane_conf_vista: TTBXDockablePanel
            DockedWidth = 175
            inherited shap_xp: TShape
              Width = 175
            end
            inherited padr_conf_vista: TdxTreeList
              Width = 175
              Height = 327
            end
            inherited padr_gradi_camp_visibles: TPCPTituloGradiente
              Width = 175
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 218
          Height = 349
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 327
              inherited padr_prio_impresion: TdxTreeList
                Height = 101
              end
            end
          end
        end
      end
    end
  end
  inherited padr_dock_izquierda: TTBXDock
    Height = 435
  end
  inherited padr_titu_ventana: TPanel
    Width = 649
    inherited padr_pane_2: TPanel
      Left = 578
    end
    inherited padr_pane_cerrar: TPanel
      Left = 596
    end
    inherited padr_pane_titulo: TPCPTituloGradiente
      Width = 578
      LabelCaption = 'Familias de recursos'
      Caption = 'Familias de recursos'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 441
    Height = 435
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
    Width = 649
  end
  inherited padr_dock_bottom: TTBXDock
    Top = 469
    Width = 649
  end
  inherited padr_dock_right: TTBXDock
    Left = 432
    Height = 435
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT F.*, T.CODI_RECU_TIPO, T.NOMB_RECU_TIPO,'
      ' G.CODI_RECU_GRUPO, G.NOMB_RECU_GRUPO'
      'FROM GLO_RECU_FAMILIAS F, GLO_RECU_TIPOS T,'
      ' GLO_RECU_GRUPOS G'
      'WHERE F.CONS_RECU_TIPO = T.CONS_RECU_TIPO'
      ' AND F.CONS_RECU_GRUPO = G.CONS_RECU_GRUPO'
      ' AND F.CONS_RECU_FAMILIA <> 0'
      'ORDER BY F.CODI_RECU_FAMILIA')
    object consultaCONS_RECU_FAMILIA: TIntegerField
      DisplayLabel = 'No. Familia'
      FieldName = 'CONS_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_FAMILIAS.CONS_RECU_FAMILIA'
    end
    object consultaCODI_RECU_FAMILIA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_FAMILIAS.CODI_RECU_FAMILIA'
      Size = 12
    end
    object consultaNOMB_RECU_FAMILIA: TStringField
      DisplayLabel = 'Familia'
      FieldName = 'NOMB_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_FAMILIAS.NOMB_RECU_FAMILIA'
      Size = 60
    end
    object consultaCONS_RECU_TIPO: TIntegerField
      DisplayLabel = 'No. Tipo Recurso'
      FieldName = 'CONS_RECU_TIPO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_FAMILIAS.CONS_RECU_TIPO'
    end
    object consultaCODI_RECU_TIPO: TStringField
      DisplayLabel = 'Cód. Tipo Recurso'
      FieldName = 'CODI_RECU_TIPO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPOS.CODI_RECU_TIPO'
      Size = 12
    end
    object consultaNOMB_RECU_TIPO: TStringField
      DisplayLabel = 'Tipo de Recurso'
      FieldName = 'NOMB_RECU_TIPO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPOS.NOMB_RECU_TIPO'
      Size = 60
    end
    object consultaCONS_RECU_GRUPO: TIntegerField
      DisplayLabel = 'No. Grupo Recurso'
      FieldName = 'CONS_RECU_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_FAMILIAS.CONS_RECU_GRUPO'
    end
    object consultaCODI_RECU_GRUPO: TStringField
      DisplayLabel = 'Cód. Grupo Recurso'
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
    object consultaPORC_SUPLEMENTO: TSmallintField
      DisplayLabel = '% Suplemento'
      FieldName = 'PORC_SUPLEMENTO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_FAMILIAS.PORC_SUPLEMENTO'
    end
    object consultaCARACTERISTICAS: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'CARACTERISTICAS'
      Origin = 'DATA_BASE_PCP.GLO_RECU_FAMILIAS.CARACTERISTICAS'
      Size = 240
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_FAMILIAS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_FAMILIAS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_RECU_FAMILIA'
    NombreAMostrar = 'Familia de recursos'
    CamposDeBusqueda = 'CONS_RECU_FAMILIA'
    TipoGenero = geLa
    TablaMaestra = 'GLO_RECU_FAMILIAS'
  end
end

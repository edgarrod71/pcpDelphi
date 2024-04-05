inherited fn1_maqu_movi_registro: Tfn1_maqu_movi_registro
  Left = 144
  Top = 169
  Width = 615
  Height = 459
  BorderIcons = [biSystemMenu]
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 607
  end
  inherited padr_shap_xp_down: TShape
    Top = 431
    Width = 607
  end
  inherited padr_pane_1: TPanel
    Width = 381
    Height = 389
    inherited padr_pagina: TdxPageControl
      Width = 371
      Height = 379
      HideButtons = True
      PopupMenu = nil
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Height = 327
          KeyField = 'SECU_REGISTRO'
          Filter.Criteria = {00000000}
          object padr_gridSECU_REGISTRO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SECU_REGISTRO'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object padr_gridSECU_MOVIMIENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 96
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SECU_MOVIMIENTO'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 156
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
          object padr_gridOBSERVACIONES: TdxDBGridMemoColumn
            HeaderAlignment = taCenter
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBSERVACIONES'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          Width = 371
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 371
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 371
          inherited padr_beve_sepa: TBevel
            Width = 582
          end
          inherited padr_sepa_new: TShape
            Width = 365
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Height = 327
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 305
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 176
          Height = 327
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 305
              inherited padr_prio_impresion: TdxTreeList
                Height = 79
              end
            end
          end
        end
      end
    end
  end
  inherited padr_dock_izquierda: TTBXDock
    Height = 389
  end
  inherited padr_titu_ventana: TPanel
    Width = 607
    Visible = False
    inherited padr_pane_2: TPanel
      Left = 536
    end
    inherited padr_pane_cerrar: TPanel
      Left = 554
    end
    inherited padr_pane_titulo: TPCPTituloGradiente
      Width = 536
      LabelCaption = 'Registro de la transacción de movimiento'
      Caption = 'Registro de la transacción de movimiento'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 399
    Height = 389
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
    Width = 607
  end
  inherited padr_dock_bottom: TTBXDock
    Top = 422
    Width = 607
  end
  inherited padr_dock_right: TTBXDock
    Left = 390
    Height = 389
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_buscar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_nuevo: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_modificar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_eliminar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_aceptar: TAction
      Enabled = False
    end
    inherited padr_acti_cancelar: TAction
      Enabled = False
    end
    inherited padr_acti_duplicar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_elim_todos: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_cerr_carp_activa: TAction
      Enabled = False
      Visible = False
    end
    inherited acti_padr_cerr_todas_carpetas: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_ver_lista: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_llam_todos: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'Select * from PCP_MAQU_MOVI_REGISTRO')
    object consultaSECU_REGISTRO: TIntegerField
      DisplayLabel = 'Transacción'
      FieldName = 'SECU_REGISTRO'
      Origin = 'DATA_BASE_PCP.PCP_MAQU_MOVI_REGISTRO.SECU_REGISTRO'
    end
    object consultaSECU_MOVIMIENTO: TIntegerField
      DisplayLabel = 'Documento'
      FieldName = 'SECU_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.PCP_MAQU_MOVI_REGISTRO.SECU_MOVIMIENTO'
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.PCP_MAQU_MOVI_REGISTRO.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.PCP_MAQU_MOVI_REGISTRO.USUA_SISTEMA'
    end
    object consultaOBSERVACIONES: TMemoField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Origin = 'DATA_BASE_PCP.PCP_MAQU_MOVI_REGISTRO.OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
  end
  inherited Variables: TSCLPropiedadesForm
    TablaMaestra = 'NO APLICA'
  end
end

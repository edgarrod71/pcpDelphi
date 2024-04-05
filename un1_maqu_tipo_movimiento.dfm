inherited fn1_maqu_tipo_movimiento: Tfn1_maqu_tipo_movimiento
  Left = 86
  Top = 113
  Width = 812
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Width = 804
  end
  inherited padr_pane_1: TPanel
    Width = 578
    inherited padr_pagina: TdxPageControl
      Width = 568
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Width = 178
          KeyField = 'CONS_RECU_TIPO_MOVIMIENTO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_RECU_TIPO_MOVIMIENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_TIPO_MOVIMIENTO'
          end
          object padr_gridCODI_RECU_TIPO_MOVIMIENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_TIPO_MOVIMIENTO'
          end
          object padr_gridNOMB_RECU_TIPO_MOVIMIENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 216
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_TIPO_MOVIMIENTO'
          end
          object padr_gridCONS_FAMI_MOVIMIENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_FAMI_MOVIMIENTO'
          end
          object padr_gridCODI_FAMI_MOVIMIENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_FAMI_MOVIMIENTO'
          end
          object padr_gridNOMB_FAMI_MOVIMIENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 216
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_FAMI_MOVIMIENTO'
          end
          object padr_gridCODI_ESTADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_ESTADO'
          end
          object padr_gridNOMB_ESTADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 216
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_ESTADO'
          end
          object padr_gridOBSERVACIONES: TdxDBGridBlobColumn
            Caption = 'Obs.'
            HeaderAlignment = taCenter
            Width = 45
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBSERVACIONES'
            BlobKind = bkBlob
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
          inherited padr_sepa_new: TShape
            Width = 562
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 373
        end
      end
    end
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
      LabelCaption = 'Tipos de movimiento de recursos'
      Caption = 'Tipos de movimiento de recursos'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 596
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
    Width = 804
  end
  inherited padr_dock_right: TTBXDock
    Left = 587
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT M.*, F.CODI_FAMI_MOVIMIENTO, F.NOMB_FAMI_MOVIMIENTO,'
      '  S.CODI_ESTADO, S.NOMB_ESTADO'
      'FROM GLO_RECU_TIPO_MOVIMIENTO M, SIS_FAMI_MOVIMIENTO F,'
      ' SIS_ESTADOS S'
      'WHERE M.CONS_FAMI_MOVIMIENTO = F.CONS_FAMI_MOVIMIENTO'
      ' AND F.CONS_ESTADO = S.CONS_ESTADO'
      'ORDER BY M.CODI_RECU_TIPO_MOVIMIENTO')
    object consultaCONS_RECU_TIPO_MOVIMIENTO: TIntegerField
      DisplayLabel = 'No. Tipo Movimiento'
      FieldName = 'CONS_RECU_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_MOVIMIENTO.CONS_RECU_TIPO_MOVIMIENTO'
    end
    object consultaCODI_RECU_TIPO_MOVIMIENTO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_RECU_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_MOVIMIENTO.CODI_RECU_TIPO_MOVIMIENTO'
      Size = 12
    end
    object consultaNOMB_RECU_TIPO_MOVIMIENTO: TStringField
      DisplayLabel = 'Tipo Movimiento'
      FieldName = 'NOMB_RECU_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_MOVIMIENTO.NOMB_RECU_TIPO_MOVIMIENTO'
      Size = 60
    end
    object consultaCONS_FAMI_MOVIMIENTO: TIntegerField
      DisplayLabel = 'No. Familia'
      FieldName = 'CONS_FAMI_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_MOVIMIENTO.CONS_FAMI_MOVIMIENTO'
    end
    object consultaCODI_FAMI_MOVIMIENTO: TStringField
      DisplayLabel = 'Cód. Familia'
      FieldName = 'CODI_FAMI_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.SIS_FAMI_MOVIMIENTO.CODI_FAMI_MOVIMIENTO'
      Size = 12
    end
    object consultaNOMB_FAMI_MOVIMIENTO: TStringField
      DisplayLabel = 'Familia'
      FieldName = 'NOMB_FAMI_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.SIS_FAMI_MOVIMIENTO.NOMB_FAMI_MOVIMIENTO'
      Size = 60
    end
    object consultaCODI_ESTADO: TStringField
      DisplayLabel = 'Código estado'
      FieldName = 'CODI_ESTADO'
      Origin = 'DATA_BASE_PCP.SIS_ESTADOS.CODI_ESTADO'
      Size = 12
    end
    object consultaNOMB_ESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'NOMB_ESTADO'
      Origin = 'DATA_BASE_PCP.SIS_ESTADOS.NOMB_ESTADO'
      Size = 60
    end
    object consultaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_MOVIMIENTO.OBSERVACIONES'
      Size = 240
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_MOVIMIENTO.FECH_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_RECU_TIPO_MOVIMIENTO'
    NombreAMostrar = 'Tipo de movimiento de recursos'
    CamposDeBusqueda = 'CONS_RECU_TIPO_MOVIMIENTO'
    TipoGenero = geEl
    TablaMaestra = 'GLO_RECU_TIPO_MOVIMIENTO'
  end
end

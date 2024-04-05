inherited fn1_maqu_tipo_puntada: Tfn1_maqu_tipo_puntada
  Left = 265
  Top = 173
  Height = 473
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 436
  end
  inherited padr_pane_1: TPanel
    Height = 403
    inherited padr_pagina: TdxPageControl
      Height = 393
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Height = 317
          KeyField = 'CONS_RECU_TIPO_PUNTADA'
          SummaryGroups = <
            item
              DefaultGroup = False
              SummaryItems = <>
              Name = 'padr_gridSummaryGroup1'
            end>
          Filter.Criteria = {00000000}
          object padr_gridCONS_RECU_TIPO_PUNTADA: TdxDBGridMaskColumn
            Visible = False
            Width = 144
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_TIPO_PUNTADA'
          end
          object padr_gridCODI_RECU_TIPO_PUNTADA: TdxDBGridMaskColumn
            Width = 104
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_TIPO_PUNTADA'
          end
          object padr_gridCARACTERISTICAS: TdxDBGridBlobColumn
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CARACTERISTICAS'
            BlobKind = bkMemo
          end
          object padr_gridIMAGEN: TdxDBGridBlobColumn
            Width = 43
            BandIndex = 0
            RowIndex = 0
            HeaderMaxLineCount = 0
            FieldName = 'IMAGEN'
            BlobKind = bkPict
          end
          object padr_gridFORMULA: TdxDBGridColumn
            Width = 210
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FORMULA'
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
        inherited padr_dock_izqu_grid: TTBXDock
          Height = 317
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 295
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Height = 317
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 295
              inherited padr_prio_impresion: TdxTreeList
                Height = 69
              end
            end
          end
        end
      end
    end
  end
  inherited padr_dock_izquierda: TTBXDock
    Height = 403
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Tipos de puntada'
      Caption = 'Tipos de puntada'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Height = 403
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
    Top = 437
  end
  inherited padr_dock_right: TTBXDock
    Height = 403
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_RECU_TIPO_PUNTADA '
      'WHERE CONS_RECU_TIPO_PUNTADA <> 0'
      'ORDER BY CODI_RECU_TIPO_PUNTADA')
    object consultaCONS_RECU_TIPO_PUNTADA: TIntegerField
      DisplayLabel = 'No. Tipo Puntada'
      FieldName = 'CONS_RECU_TIPO_PUNTADA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_PUNTADA.CONS_RECU_TIPO_PUNTADA'
    end
    object consultaCODI_RECU_TIPO_PUNTADA: TStringField
      DisplayLabel = 'Tipo de puntada'
      FieldName = 'CODI_RECU_TIPO_PUNTADA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_PUNTADA.CODI_RECU_TIPO_PUNTADA'
      Size = 12
    end
    object consultaCARACTERISTICAS: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'CARACTERISTICAS'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_PUNTADA.CARACTERISTICAS'
      Size = 240
    end
    object consultaIMAGEN: TBlobField
      DisplayLabel = 'Imagen'
      FieldName = 'IMAGEN'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_PUNTADA.IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object consultaFORMULA: TStringField
      DisplayLabel = 'Fórmula'
      FieldName = 'FORMULA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_PUNTADA.FORMULA'
      Size = 240
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_PUNTADA.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_PUNTADA.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'CODI_RECU_TIPO_PUNTADA'
    NombreAMostrar = 'Tipo de puntada'
    CamposDeBusqueda = 'CONS_RECU_TIPO_PUNTADA'
    TipoGenero = geEl
    TablaMaestra = 'GLO_RECU_TIPO_PUNTADA'
  end
end

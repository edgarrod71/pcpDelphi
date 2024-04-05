inherited FN1_Para_Sub_Improductivos: TFN1_Para_Sub_Improductivos
  Left = 34
  Top = 152
  Width = 812
  Height = 577
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 549
    Width = 804
  end
  inherited padr_pane_1: TPanel
    Width = 578
    Height = 507
    inherited padr_pagina: TdxPageControl
      Width = 568
      Height = 497
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Width = 178
          Height = 421
          KeyField = 'CONS_SUB_IMPRODUCTIVO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_SUB_IMPRODUCTIVO: TdxDBGridMaskColumn
            Visible = False
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_SUB_IMPRODUCTIVO'
          end
          object padr_gridCODI_SUB_IMPRODUCTIVO: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_SUB_IMPRODUCTIVO'
          end
          object padr_gridNOMB_SUB_IMPRODUCTIVO: TdxDBGridMaskColumn
            Width = 152
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_SUB_IMPRODUCTIVO'
          end
          object padr_gridCONS_IMPRODUCTIVO: TdxDBGridMaskColumn
            Visible = False
            Width = 104
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_IMPRODUCTIVO'
          end
          object padr_gridCODI_IMPRODUCTIVO: TdxDBGridMaskColumn
            Visible = False
            Width = 108
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_IMPRODUCTIVO'
          end
          object padr_gridNOMB_IMPRODUCTIVO: TdxDBGridMaskColumn
            Width = 164
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_IMPRODUCTIVO'
          end
          object padr_gridPORCENTAJE: TdxDBGridColumn
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PORCENTAJE'
          end
          object padr_gridACTIVO: TdxDBGridCheckColumn
            Width = 89
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACTIVO'
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object padr_gridDESC_INCENTIVOS: TdxDBGridCheckColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESC_INCENTIVOS'
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object padr_gridDESC_EFICIENCIA: TdxDBGridCheckColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESC_EFICIENCIA'
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object padr_gridDESCRIPCION: TdxDBGridBlobColumn
            Visible = False
            Width = 1726
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESCRIPCION'
            BlobKind = bkMemo
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            Width = 172
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            Width = 99
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
        inherited padr_dock_izqu_grid: TTBXDock
          Height = 421
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 399
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 373
          Height = 421
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 399
              inherited padr_prio_impresion: TdxTreeList
                Height = 173
              end
            end
          end
        end
      end
    end
  end
  inherited padr_dock_izquierda: TTBXDock
    Height = 507
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
      LabelCaption = 'Sub Improductivos'
      Caption = 'Sub Improductivos'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 596
    Height = 507
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
    Top = 540
    Width = 804
  end
  inherited padr_dock_right: TTBXDock
    Left = 587
    Height = 507
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT S.*, I.CODI_IMPRODUCTIVO, I.NOMB_IMPRODUCTIVO'
      'FROM GLO_IMPRODUCTIVOS I,'
      ' GLO_SUB_IMPRODUCTIVOS S, SIS_IMPR_FAMILIAS F'
      'WHERE S.CONS_IMPRODUCTIVO = I.CONS_IMPRODUCTIVO'
      ' AND I.CONS_IMPR_FAMILIA = F.CONS_IMPR_FAMILIA'
      'ORDER BY S.CONS_IMPRODUCTIVO')
    object consultaCONS_SUB_IMPRODUCTIVO: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_SUB_IMPRODUCTIVO'
    end
    object consultaCODI_SUB_IMPRODUCTIVO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_SUB_IMPRODUCTIVO'
      Size = 12
    end
    object consultaNOMB_SUB_IMPRODUCTIVO: TStringField
      DisplayLabel = 'Subimproductivo'
      FieldName = 'NOMB_SUB_IMPRODUCTIVO'
      Origin = 'DATA_BASE_PCP.GLO_SUB_IMPRODUCTIVOS.NOMB_SUB_IMPRODUCTIVO'
      Size = 60
    end
    object consultaCONS_IMPRODUCTIVO: TIntegerField
      DisplayLabel = 'No. improductivo'
      FieldName = 'CONS_IMPRODUCTIVO'
      Origin = 'DATA_BASE_PCP.GLO_SUB_IMPRODUCTIVOS.CONS_IMPRODUCTIVO'
    end
    object consultaCODI_IMPRODUCTIVO: TStringField
      DisplayLabel = 'Cód. improductivo'
      FieldName = 'CODI_IMPRODUCTIVO'
      Origin = 'DATA_BASE_PCP.GLO_IMPRODUCTIVOS.CODI_IMPRODUCTIVO'
      Size = 12
    end
    object consultaNOMB_IMPRODUCTIVO: TStringField
      DisplayLabel = 'Improductivo'
      FieldName = 'NOMB_IMPRODUCTIVO'
      Origin = 'DATA_BASE_PCP.GLO_IMPRODUCTIVOS.NOMB_IMPRODUCTIVO'
      Size = 60
    end
    object consultaACTIVO: TIntegerField
      DisplayLabel = 'Activo'
      FieldName = 'ACTIVO'
      Origin = 'DATA_BASE_PCP.GLO_SUB_IMPRODUCTIVOS.ACTIVO'
    end
    object consultaPORCENTAJE: TFloatField
      DisplayLabel = 'Porcentaje'
      FieldName = 'PORCENTAJE'
      DisplayFormat = ',0.00 %'
    end
    object consultaDESC_INCENTIVOS: TIntegerField
      DisplayLabel = 'Desc. incentivos'
      FieldName = 'DESC_INCENTIVOS'
      Origin = 'DATA_BASE_PCP.GLO_SUB_IMPRODUCTIVOS.DESC_INCENTIVOS'
    end
    object consultaDESC_EFICIENCIA: TIntegerField
      DisplayLabel = 'Desc. eficiencia'
      FieldName = 'DESC_EFICIENCIA'
      Origin = 'DATA_BASE_PCP.GLO_SUB_IMPRODUCTIVOS.DESC_EFICIENCIA'
    end
    object consultaDESCRIPCION: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESCRIPCION'
      Origin = 'DATA_BASE_PCP.GLO_SUB_IMPRODUCTIVOS.DESCRIPCION'
      Size = 240
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_SUB_IMPRODUCTIVO'
    NombreAMostrar = 'Sub Improductivo'
    CamposDeBusqueda = 'CONS_SUB_IMPRODUCTIVO'
    TipoDeBusqueda = tbArreglo
    TipoGenero = geEl
    TablaMaestra = 'GLO_SUB_IMPRODUCTIVOS'
  end
end

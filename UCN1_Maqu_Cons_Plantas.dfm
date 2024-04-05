inherited CN1_Maqu_Cons_Plantas: TCN1_Maqu_Cons_Plantas
  Width = 747
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 739
  end
  inherited padr_shap_xp_down: TShape
    Width = 739
  end
  inherited padr_pane_1: TPanel
    Width = 513
    inherited padr_pagina: TdxPageControl
      Width = 503
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Width = 113
          KeyField = 'CONS_EMPRESA'
          SummaryGroups = <
            item
              DefaultGroup = False
              SummaryItems = <>
              Name = 'padr_summary_grid'
            end
            item
              DefaultGroup = False
              SummaryItems = <
                item
                  ColumnName = 'padr_gridCANTIDAD'
                  SummaryField = 'CANTIDAD'
                  SummaryFormat = ',0'
                  SummaryType = cstSum
                end>
              Name = 'padr_gridSummaryGroup3'
            end>
          Filter.Criteria = {00000000}
          object padr_gridCONS_EMPRESA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_EMPRESA'
            SummaryGroupName = 'padr_gridSummaryGroup3'
          end
          object padr_gridCODI_EMPRESA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_EMPRESA'
            SummaryGroupName = 'padr_gridSummaryGroup3'
          end
          object padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_EMPRESA'
            SummaryGroupName = 'padr_gridSummaryGroup3'
          end
          object padr_gridCONS_PLANTA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PLANTA'
            SummaryGroupName = 'padr_gridSummaryGroup3'
          end
          object padr_gridCODI_PLANTA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PLANTA'
            SummaryGroupName = 'padr_gridSummaryGroup3'
          end
          object padr_gridNOMB_PLANTA: TdxDBGridMaskColumn
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PLANTA'
            SummaryGroupName = 'padr_gridSummaryGroup3'
          end
          object padr_gridCONS_LINEA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_LINEA'
            SummaryGroupName = 'padr_gridSummaryGroup3'
          end
          object padr_gridCODI_LINEA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_LINEA'
            SummaryGroupName = 'padr_gridSummaryGroup3'
          end
          object padr_gridNOMB_LINEA: TdxDBGridMaskColumn
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_LINEA'
            SummaryGroupName = 'padr_gridSummaryGroup3'
          end
          object padr_gridCONS_SECCION: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_SECCION'
            SummaryGroupName = 'padr_gridSummaryGroup3'
          end
          object padr_gridCODI_SECCION: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_SECCION'
            SummaryGroupName = 'padr_gridSummaryGroup3'
          end
          object padr_gridNOMB_SECCION: TdxDBGridMaskColumn
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_SECCION'
            SummaryGroupName = 'padr_gridSummaryGroup3'
          end
          object padr_gridCONS_RECU_FAMILIA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_FAMILIA'
            SummaryGroupName = 'padr_gridSummaryGroup3'
          end
          object padr_gridCODI_RECU_FAMILIA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_FAMILIA'
            SummaryGroupName = 'padr_gridSummaryGroup3'
          end
          object padr_gridNOMB_RECU_FAMILIA: TdxDBGridMaskColumn
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_FAMILIA'
            SummaryGroupName = 'padr_gridSummaryGroup3'
          end
          object padr_gridCANTIDAD: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CANTIDAD'
            SummaryFooterType = cstSum
            SummaryFooterFormat = ',0'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          Width = 503
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 503
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 503
          inherited padr_beve_sepa: TBevel
            Width = 714
          end
          inherited padr_sepa_new: TShape
            Width = 497
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 308
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    Width = 739
    inherited padr_pane_2: TPanel
      Left = 668
    end
    inherited padr_pane_cerrar: TPanel
      Left = 686
    end
    inherited padr_pane_titulo: TPCPTituloGradiente
      Width = 668
      LabelCaption = 'Recursos por Plantas y Secciones'
      Caption = 'Recursos por Plantas y Secciones'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 531
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
    Width = 739
  end
  inherited padr_dock_bottom: TTBXDock
    Width = 739
  end
  inherited padr_dock_right: TTBXDock
    Left = 522
  end
  inherited padr_acciones: TActionList
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
    inherited padr_acti_consultar: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_RECU_INFO_PLANTAS')
    object consultaCONS_EMPRESA: TIntegerField
      DisplayLabel = 'Cons. Empresa'
      FieldName = 'CONS_EMPRESA'
    end
    object consultaCODI_EMPRESA: TStringField
      DisplayLabel = 'Cód. Empresa'
      FieldName = 'CODI_EMPRESA'
      Size = 12
    end
    object consultaNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Size = 60
    end
    object consultaCONS_PLANTA: TIntegerField
      DisplayLabel = 'Cons. Planta'
      FieldName = 'CONS_PLANTA'
    end
    object consultaCODI_PLANTA: TStringField
      DisplayLabel = 'Cód. Planta'
      FieldName = 'CODI_PLANTA'
      Size = 12
    end
    object consultaNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta'
      FieldName = 'NOMB_PLANTA'
      Size = 60
    end
    object consultaCONS_LINEA: TIntegerField
      DisplayLabel = 'Cons. Línea'
      FieldName = 'CONS_LINEA'
    end
    object consultaCODI_LINEA: TStringField
      DisplayLabel = 'Cód. Línea'
      FieldName = 'CODI_LINEA'
      Size = 12
    end
    object consultaNOMB_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldName = 'NOMB_LINEA'
      Size = 60
    end
    object consultaCONS_SECCION: TIntegerField
      DisplayLabel = 'Cons. Sección'
      FieldName = 'CONS_SECCION'
    end
    object consultaCODI_SECCION: TStringField
      DisplayLabel = 'Cód. Sección'
      FieldName = 'CODI_SECCION'
      Size = 12
    end
    object consultaNOMB_SECCION: TStringField
      DisplayLabel = 'Sección'
      FieldName = 'NOMB_SECCION'
      Size = 60
    end
    object consultaCONS_RECU_FAMILIA: TIntegerField
      DisplayLabel = 'Cons. Familia'
      FieldName = 'CONS_RECU_FAMILIA'
    end
    object consultaCODI_RECU_FAMILIA: TStringField
      DisplayLabel = 'Cód. Familia'
      FieldName = 'CODI_RECU_FAMILIA'
      Size = 12
    end
    object consultaNOMB_RECU_FAMILIA: TStringField
      DisplayLabel = 'Familia'
      FieldName = 'NOMB_RECU_FAMILIA'
      Size = 60
    end
    object consultaCANTIDAD: TIntegerField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_EMPRESA'
    NombreAMostrar = 'Empresa'
    CamposDeBusqueda = 'CONS_EMPRESA'
    TipoGenero = geLa
    TablaMaestra = 'CON_GLO_RECU_INFO_PLANTAS'
  end
  object QFamilias: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CODI_RECU_FAMILIA'
      'FROM GLO_RECU_FAMILIAS'
      'ORDER BY CONS_RECU_FAMILIA')
    Left = 230
    Top = 180
  end
  object QCantidad_Secciones: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT COUNT(CONS_SECCION) AS TOTAL_SECCIONES'
      'FROM GLO_SECCIONES')
    Left = 48
    Top = 203
  end
end

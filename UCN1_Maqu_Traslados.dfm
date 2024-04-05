inherited CN1_Maqu_Traslados: TCN1_Maqu_Traslados
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_RECURSO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_RECURSO: TdxDBGridMaskColumn
            Visible = False
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECURSO'
          end
          object padr_gridCODI_RECURSO: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECURSO'
          end
          object padr_gridCODI_INTE_RECURSO: TdxDBGridMaskColumn
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_INTE_RECURSO'
          end
          object padr_gridCONS_RECU_GRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 69
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_GRUPO'
          end
          object padr_gridCODI_RECU_GRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_GRUPO'
          end
          object padr_gridNOMB_RECU_GRUPO: TdxDBGridMaskColumn
            Width = 195
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_GRUPO'
          end
          object padr_gridCONS_RECU_TIPO: TdxDBGridMaskColumn
            Visible = False
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_TIPO'
          end
          object padr_gridCODI_RECU_TIPO: TdxDBGridMaskColumn
            Visible = False
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_TIPO'
          end
          object padr_gridNOMB_RECU_TIPO: TdxDBGridMaskColumn
            Width = 195
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_TIPO'
          end
          object padr_gridCONS_RECU_FAMILIA: TdxDBGridMaskColumn
            Visible = False
            Width = 72
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_FAMILIA'
          end
          object padr_gridCODI_RECU_FAMILIA: TdxDBGridMaskColumn
            Visible = False
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_FAMILIA'
          end
          object padr_gridNOMB_RECU_FAMILIA: TdxDBGridMaskColumn
            Width = 195
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_FAMILIA'
          end
          object padr_gridCONS_RECU_MARCA: TdxDBGridMaskColumn
            Visible = False
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_MARCA'
          end
          object padr_gridCODI_RECU_MARCA: TdxDBGridMaskColumn
            Visible = False
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_MARCA'
          end
          object padr_gridNOMB_RECU_MARCA: TdxDBGridMaskColumn
            Width = 195
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_MARCA'
          end
          object padr_gridNUME_SERIE: TdxDBGridMaskColumn
            Width = 195
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_SERIE'
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Movimiento de Recursos (Traslados)'
      Caption = 'Movimiento de Recursos (Traslados)'
    end
  end
  inherited padr_page_oculto: TdxPageControl
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
      'FROM CON_GLO_RECU_INFO_TRASLADOS')
    object consultaCONS_RECURSO: TIntegerField
      DisplayLabel = 'Cons. Recurso'
      FieldName = 'CONS_RECURSO'
    end
    object consultaCODI_RECURSO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_RECURSO'
      Size = 12
    end
    object consultaCODI_INTE_RECURSO: TStringField
      DisplayLabel = 'Código interno'
      FieldName = 'CODI_INTE_RECURSO'
    end
    object consultaCONS_RECU_GRUPO: TIntegerField
      DisplayLabel = 'Cons. Grupo'
      FieldName = 'CONS_RECU_GRUPO'
    end
    object consultaCODI_RECU_GRUPO: TStringField
      DisplayLabel = 'Cód. Grupo'
      FieldName = 'CODI_RECU_GRUPO'
      Size = 12
    end
    object consultaNOMB_RECU_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_RECU_GRUPO'
      Size = 60
    end
    object consultaCONS_RECU_TIPO: TIntegerField
      DisplayLabel = 'Cons. Tipo'
      FieldName = 'CONS_RECU_TIPO'
    end
    object consultaCODI_RECU_TIPO: TStringField
      DisplayLabel = 'Cód. Tipo'
      FieldName = 'CODI_RECU_TIPO'
      Size = 12
    end
    object consultaNOMB_RECU_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'NOMB_RECU_TIPO'
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
    object consultaCONS_RECU_MARCA: TIntegerField
      DisplayLabel = 'Cons. Marca'
      FieldName = 'CONS_RECU_MARCA'
    end
    object consultaCODI_RECU_MARCA: TStringField
      DisplayLabel = 'Cód. Marca'
      FieldName = 'CODI_RECU_MARCA'
      Size = 12
    end
    object consultaNOMB_RECU_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOMB_RECU_MARCA'
      Size = 60
    end
    object consultaNUME_SERIE: TStringField
      DisplayLabel = 'Número Serie'
      FieldName = 'NUME_SERIE'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'CODI_RECURSO'
    NombreAMostrar = 'Recurso'
    CamposDeBusqueda = 'CONS_RECURSO'
    TipoGenero = geEl
    TablaMaestra = 'CON_GLO_RECU_INFO_TRASLADOS'
  end
end

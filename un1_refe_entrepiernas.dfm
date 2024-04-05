inherited fn1_refe_entrepiernas: Tfn1_refe_entrepiernas
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_COLOR'
          Filter.Criteria = {00000000}
          object padr_gridCONS_COLOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 91
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COLOR'
          end
          object padr_gridCODI_COLOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 94
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COLOR'
          end
          object padr_gridNOMB_COLOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COLOR'
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Entrepiernas'
      Caption = 'Entrepiernas'
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
  inherited consulta: TQuery
    SQL.Strings = (
      'Select'
      'cons_color, codi_color, nomb_color'
      'from glo_colores'
      'where es_entrepierna = 1'
      'order by cons_color')
    object consultaCONS_COLOR: TIntegerField
      DisplayLabel = 'Cons. entrepierna'
      FieldName = 'CONS_COLOR'
    end
    object consultaCODI_COLOR: TStringField
      DisplayLabel = 'Cód. entrepierna'
      FieldName = 'CODI_COLOR'
      Size = 12
    end
    object consultaNOMB_COLOR: TStringField
      DisplayLabel = 'Entrepierna'
      FieldName = 'NOMB_COLOR'
      Size = 60
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'nomb_color'
    NombreAMostrar = 'Entrepierna'
    CamposDeBusqueda = 'cons_color'
    TablaMaestra = 'GLO_COLORES'
  end
end

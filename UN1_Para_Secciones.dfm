inherited FN1_Para_Secciones: TFN1_Para_Secciones
  Left = 228
  Top = 156
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          DefaultLayout = False
          KeyField = 'CONS_SECCION'
          Filter.Criteria = {00000000}
          object padr_gridCONS_SECCION: TdxDBGridMaskColumn
            Alignment = taLeftJustify
            Visible = False
            Width = 41
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_SECCION'
          end
          object padr_gridCODI_SECCION: TdxDBGridMaskColumn
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_SECCION'
          end
          object padr_gridNOMB_SECCION: TdxDBGridMaskColumn
            Width = 202
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_SECCION'
          end
          object padr_gridDESCRIPCION: TdxDBGridMaskColumn
            Width = 340
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESCRIPCION'
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
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Secciones'
      Caption = 'Secciones'
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
      'SELECT *'
      'FROM GLO_SECCIONES '
      'WHERE CONS_SECCION <> 0'
      'ORDER BY NOMB_SECCION')
    object consultaCONS_SECCION: TIntegerField
      DisplayLabel = 'No. Sección'
      FieldName = 'CONS_SECCION'
    end
    object consultaCODI_SECCION: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_SECCION'
      Size = 12
    end
    object consultaNOMB_SECCION: TStringField
      DisplayLabel = 'Sección'
      FieldName = 'NOMB_SECCION'
      Size = 60
    end
    object consultaDESCRIPCION: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESCRIPCION'
      Size = 240
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_SECCION'
    NombreAMostrar = 'Sección'
    CamposDeBusqueda = 'CONS_SECCION'
    TipoGenero = geLa
    TablaMaestra = 'GLO_SECCIONES'
  end
end

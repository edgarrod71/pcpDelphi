inherited fn1_refe_lineas: Tfn1_refe_lineas
  Left = 34
  Top = 61
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_REFE_LINEA'
          Filter.Criteria = {00000000}
          object padr_gridCONS_REFE_LINEA: TdxDBGridMaskColumn
            Visible = False
            Width = 49
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_LINEA'
          end
          object padr_gridCODI_REFE_LINEA: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_LINEA'
          end
          object padr_gridNOMB_REFE_LINEA: TdxDBGridMaskColumn
            Width = 210
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_LINEA'
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
      LabelCaption = 'Líneas de producto'
      Caption = 'Líneas de producto'
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
      'FROM GLO_REFE_LINEAS'
      'where cons_refe_linea>0'
      'ORDER BY CODI_REFE_LINEA')
    object consultaCONS_REFE_LINEA: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_REFE_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LINEAS.CONS_REFE_LINEA'
    end
    object consultaCODI_REFE_LINEA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_REFE_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LINEAS.CODI_REFE_LINEA'
      Size = 12
    end
    object consultaNOMB_REFE_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldName = 'NOMB_REFE_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LINEAS.NOMB_REFE_LINEA'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LINEAS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LINEAS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_REFE_LINEA'
    NombreAMostrar = 'Línea'
    CamposDeBusqueda = 'CONS_REFE_LINEA'
    TipoGenero = geLa
    TablaMaestra = 'GLO_REFE_LINEAS'
  end
end

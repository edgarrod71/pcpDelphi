inherited FN1_Para_Lineas: TFN1_Para_Lineas
  Left = 205
  Top = 150
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_LINEA'
          Filter.Criteria = {00000000}
          object padr_gridCONS_LINEA: TdxDBGridMaskColumn
            Visible = False
            Width = 49
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_LINEA'
          end
          object padr_gridCODI_LINEA: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_LINEA'
          end
          object padr_gridNOMB_LINEA: TdxDBGridMaskColumn
            Width = 205
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_LINEA'
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
      LabelCaption = 'L�neas'
      Caption = 'L�neas'
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
      'FROM GLO_LINEAS'
      'WHERE CONS_LINEA <> 0'
      'ORDER BY CODI_LINEA')
    object consultaCONS_LINEA: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_LINEAS.CONS_LINEA'
    end
    object consultaCODI_LINEA: TStringField
      DisplayLabel = 'C�digo'
      FieldName = 'CODI_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_LINEAS.CODI_LINEA'
      Size = 12
    end
    object consultaNOMB_LINEA: TStringField
      DisplayLabel = 'L�nea'
      FieldName = 'NOMB_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_LINEAS.NOMB_LINEA'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creaci�n'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_LINEAS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creaci�n'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_LINEAS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_LINEA'
    NombreAMostrar = 'L�nea'
    CamposDeBusqueda = 'CONS_LINEA'
    TipoGenero = geLa
    TablaMaestra = 'GLO_LINEAS'
  end
end

inherited FN1_Para_Parentescos: TFN1_Para_Parentescos
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CODI_PARENTESCO'
          Filter.Criteria = {00000000}
          object padr_gridCODI_PARENTESCO: TdxDBGridMaskColumn
            Caption = 'Código'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PARENTESCO'
          end
          object padr_gridNOMB_PARENTESCO: TdxDBGridMaskColumn
            Caption = 'Parentesco'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PARENTESCO'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            Caption = 'Fecha Creación'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            Caption = 'Usuario Creación'
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
      LabelCaption = 'Parentescos'
      Caption = 'Parentescos'
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
      'FROM SIS_PARENTESCOS'
      'ORDER BY CODI_PARENTESCO')
    object consultaCODI_PARENTESCO: TStringField
      FieldName = 'CODI_PARENTESCO'
      Origin = 'DATA_BASE_PCP.SIS_PARENTESCOS.CODI_PARENTESCO'
      Size = 12
    end
    object consultaNOMB_PARENTESCO: TStringField
      FieldName = 'NOMB_PARENTESCO'
      Origin = 'DATA_BASE_PCP.SIS_PARENTESCOS.NOMB_PARENTESCO'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.SIS_PARENTESCOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.SIS_PARENTESCOS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_PARENTESCO'
    NombreAMostrar = 'Parentesco'
    CamposDeBusqueda = 'CODI_PARENTESCO'
    TipoGenero = geEl
    TablaMaestra = 'SIS_PARENTESCOS'
  end
end

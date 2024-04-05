inherited FN1_Para_Tipo_Documento: TFN1_Para_Tipo_Documento
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CODI_TIPO_DOCUMENTO'
          Filter.Criteria = {00000000}
          object padr_gridCODI_TIPO_DOCUMENTO: TdxDBGridMaskColumn
            Caption = 'Código'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_TIPO_DOCUMENTO'
          end
          object padr_gridNOMB_TIPO_DOCUMENTO: TdxDBGridMaskColumn
            Caption = 'Tipo de Documento'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_TIPO_DOCUMENTO'
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
      LabelCaption = 'Tipos de Documentos'
      Caption = 'Tipos de Documentos'
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
      'FROM SIS_TIPO_DOCU_PERSONAL'
      'ORDER BY CODI_TIPO_DOCUMENTO')
    object consultaCODI_TIPO_DOCUMENTO: TStringField
      FieldName = 'CODI_TIPO_DOCUMENTO'
      Origin = 'DATA_BASE_PCP.SIS_TIPO_DOCU_PERSONAL.CODI_TIPO_DOCUMENTO'
      Size = 12
    end
    object consultaNOMB_TIPO_DOCUMENTO: TStringField
      FieldName = 'NOMB_TIPO_DOCUMENTO'
      Origin = 'DATA_BASE_PCP.SIS_TIPO_DOCU_PERSONAL.NOMB_TIPO_DOCUMENTO'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.SIS_TIPO_DOCU_PERSONAL.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.SIS_TIPO_DOCU_PERSONAL.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_TIPO_DOCUMENTO'
    NombreAMostrar = 'Tipo de Documento'
    CamposDeBusqueda = 'CODI_TIPO_DOCUMENTO'
    TipoGenero = geEl
    TablaMaestra = 'SIS_TIPO_DOCU_PERSONAL'
  end
end

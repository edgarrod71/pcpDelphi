inherited FN1_Para_Paises: TFN1_Para_Paises
  Left = 217
  Top = 171
  HelpContext = 26
  Caption = 'Codificación de Paises'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CODI_PAIS'
          Filter.Criteria = {00000000}
          object padr_gridCONS_PAIS: TdxDBGridColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 53
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PAIS'
          end
          object padr_gridCODI_PAIS: TdxDBGridMaskColumn
            Caption = 'Código País'
            HeaderAlignment = taCenter
            Width = 72
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PAIS'
          end
          object padr_gridNOMB_PAIS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 140
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PAIS'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 140
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
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
      LabelCaption = 'Paises'
      Caption = 'Paises'
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
      'FROM GLO_PAISES'
      'WHERE CONS_PAIS <> 0'
      'ORDER BY CODI_PAIS')
    object consultaCONS_PAIS: TIntegerField
      Tag = 1
      DisplayLabel = 'No.'
      FieldName = 'CONS_PAIS'
      Origin = 'DATA_BASE_PCP.GLO_PAISES.CONS_PAIS'
    end
    object consultaCODI_PAIS: TStringField
      DisplayLabel = 'Código Pais'
      FieldName = 'CODI_PAIS'
      Origin = 'DATA_BASE_PCP.GLO_PAISES.CODI_PAIS'
      Size = 12
    end
    object consultaNOMB_PAIS: TStringField
      DisplayLabel = 'País'
      FieldName = 'NOMB_PAIS'
      Origin = 'DATA_BASE_PCP.GLO_PAISES.NOMB_PAIS'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PAISES.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA2: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PAISES.USUA_SISTEMA'
    end
  end
  inherited Eliminar: TQuery
    SQL.Strings = (
      'Delete from GLO_PAISES'
      'Where CONS_PAIS = :CONS_PAIS')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PAIS'
        ParamType = ptUnknown
      end>
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_PAIS'
    NombreAMostrar = 'País'
    CamposDeBusqueda = 'CONS_PAIS'
    TipoGenero = geEl
    TablaMaestra = 'GLO_PAISES'
  end
end

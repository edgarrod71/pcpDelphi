inherited FN1_Para_Departamentos: TFN1_Para_Departamentos
  Left = 195
  Top = 163
  HelpContext = 11
  Caption = 'Codificación Departamentos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CODI_DEPARTAMENTO'
          Filter.Criteria = {00000000}
          object padr_gridColumn8: TdxDBGridColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_DEPARTAMENTO'
          end
          object padr_gridCODI_DEPARTAMENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 98
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_DEPARTAMENTO'
          end
          object padr_gridNOMB_DEPARTAMENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 186
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_DEPARTAMENTO'
          end
          object padr_gridColumn7: TdxDBGridColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PAIS'
          end
          object padr_gridNOMB_PAIS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 189
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PAIS'
          end
          object padr_gridCODI_PAIS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 52
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PAIS'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 179
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
      LabelCaption = 'Departamentos'
      Caption = 'Departamentos'
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
      'FROM VIS_GLO_DEPARTAMENTOS'
      'WHERE CONS_DEPARTAMENTO <> 0'
      'ORDER BY CONS_DEPARTAMENTO')
    object consultaCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_DEPARTAMENTOS.CONS_DEPARTAMENTO'
    end
    object consultaCODI_DEPARTAMENTO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_DEPARTAMENTOS.CODI_DEPARTAMENTO'
      Size = 12
    end
    object consultaNOMB_DEPARTAMENTO: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'NOMB_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_DEPARTAMENTOS.NOMB_DEPARTAMENTO'
      Size = 60
    end
    object consultaCONS_PAIS: TIntegerField
      DisplayLabel = 'Cons. País'
      FieldName = 'CONS_PAIS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_DEPARTAMENTOS.CONS_PAIS'
    end
    object consultaCODI_PAIS: TStringField
      DisplayLabel = 'Código País'
      FieldName = 'CODI_PAIS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_DEPARTAMENTOS.CODI_PAIS'
      Size = 12
    end
    object consultaNOMB_PAIS: TStringField
      DisplayLabel = 'País'
      FieldName = 'NOMB_PAIS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_DEPARTAMENTOS.NOMB_PAIS'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_DEPARTAMENTOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_DEPARTAMENTOS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_DEPARTAMENTO'
    NombreAMostrar = 'Departamento'
    CamposDeBusqueda = 'CONS_DEPARTAMENTO'
    TipoGenero = geEl
    TablaMaestra = 'GLO_DEPARTAMENTOS'
  end
end

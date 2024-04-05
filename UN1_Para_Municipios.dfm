inherited FN1_Para_Municipios: TFN1_Para_Municipios
  Left = 341
  Top = 174
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CODI_CIUDAD'
          Filter.Criteria = {00000000}
          object padr_gridCONS_PAIS: TdxDBGridMaskColumn
            Visible = False
            Width = 56
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PAIS'
          end
          object padr_gridCODI_PAIS: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PAIS'
          end
          object padr_gridNOMB_PAIS: TdxDBGridMaskColumn
            Width = 155
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PAIS'
          end
          object padr_gridCONS_DEPARTAMENTO: TdxDBGridMaskColumn
            Visible = False
            Width = 82
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_DEPARTAMENTO'
          end
          object padr_gridCODI_DEPARTAMENTO: TdxDBGridMaskColumn
            Width = 98
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_DEPARTAMENTO'
          end
          object padr_gridNOMB_DEPARTAMENTO: TdxDBGridMaskColumn
            Width = 155
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_DEPARTAMENTO'
          end
          object padr_gridCONS_CIUDAD: TdxDBGridMaskColumn
            Visible = False
            Width = 56
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_CIUDAD'
          end
          object padr_gridCODI_CIUDAD: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_CIUDAD'
          end
          object padr_gridNOMB_CIUDAD: TdxDBGridMaskColumn
            Width = 155
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_CIUDAD'
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
      LabelCaption = 'Municipios y ciudades'
      Caption = 'Municipios y ciudades'
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
      'FROM VIS_GLO_CIUDADES'
      'WHERE CONS_CIUDAD <> 0'
      'ORDER BY CONS_CIUDAD')
    object consultaCONS_PAIS: TIntegerField
      DisplayLabel = 'No. País'
      FieldName = 'CONS_PAIS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_CIUDADES.CONS_PAIS'
    end
    object consultaCODI_PAIS: TStringField
      DisplayLabel = 'Cód. País'
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
    object consultaCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'No. Departamento'
      FieldName = 'CONS_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_CIUDADES.CONS_DEPARTAMENTO'
    end
    object consultaCODI_DEPARTAMENTO: TStringField
      DisplayLabel = 'Cód. Departamento'
      FieldName = 'CODI_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.GLO_DEPARTAMENTOS.CODI_DEPARTAMENTO'
      Size = 12
    end
    object consultaNOMB_DEPARTAMENTO: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'NOMB_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.GLO_DEPARTAMENTOS.NOMB_DEPARTAMENTO'
      Size = 60
    end
    object consultaCONS_CIUDAD: TIntegerField
      DisplayLabel = 'No. Ciudad'
      FieldName = 'CONS_CIUDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_CIUDADES.CONS_CIUDAD'
    end
    object consultaCODI_CIUDAD: TStringField
      DisplayLabel = 'Cód. Ciudad'
      FieldName = 'CODI_CIUDAD'
      Origin = 'DATA_BASE_PCP.GLO_CIUDADES.CODI_CIUDAD'
      Size = 12
    end
    object consultaNOMB_CIUDAD: TStringField
      DisplayLabel = 'Ciudad'
      FieldName = 'NOMB_CIUDAD'
      Origin = 'DATA_BASE_PCP.GLO_CIUDADES.NOMB_CIUDAD'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_CIUDADES.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_CIUDADES.USUA_SISTEMA'
    end
  end
  inherited Eliminar: TQuery
    SQL.Strings = (
      'DELETE FROM GLO_CIUDADES'
      'WHERE CONS_PAIS = :CONS_PAIS'
      ' AND CONS_DEPARTAMENTO = :CONS_DEPARTAMENTO'
      ' AND CONS_CIUDAD = :CONS_CIUDAD')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PAIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_DEPARTAMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_CIUDAD'
        ParamType = ptUnknown
      end>
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_CIUDAD'
    NombreAMostrar = 'Municipio'
    CamposDeBusqueda = 'CONS_CIUDAD'
    TipoDeBusqueda = tbArreglo
    TipoGenero = geEl
    TablaMaestra = 'GLO_CIUDADES'
  end
end

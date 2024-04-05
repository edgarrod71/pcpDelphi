inherited fn1_refe_marcas: Tfn1_refe_marcas
  Left = 30
  Top = 63
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_REFE_MARCA'
          Filter.Criteria = {00000000}
          object padr_gridCONS_REFE_MARCA: TdxDBGridMaskColumn
            Visible = False
            Width = 45
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_MARCA'
          end
          object padr_gridCODI_REFE_MARCA: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_MARCA'
          end
          object padr_gridNOMB_REFE_MARCA: TdxDBGridMaskColumn
            Width = 182
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_MARCA'
          end
          object padr_gridFECH_CREA_MARCA: TdxDBGridDateColumn
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_CREA_MARCA'
          end
          object padr_gridTIEM_USO: TdxDBGridColumn
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIEM_USO'
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
      LabelCaption = 'Marcas de producto'
      Caption = 'Marcas de producto'
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
    OnCalcFields = consultaCalcFields
    SQL.Strings = (
      'SELECT * '
      'FROM GLO_REFE_MARCAS'
      'where cons_refe_marca>0'
      'ORDER BY CODI_REFE_MARCA')
    object consultaCONS_REFE_MARCA: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_REFE_MARCA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_MARCAS.CONS_REFE_MARCA'
    end
    object consultaCODI_REFE_MARCA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_REFE_MARCA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_MARCAS.CODI_REFE_MARCA'
      Size = 12
    end
    object consultaNOMB_REFE_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOMB_REFE_MARCA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_MARCAS.NOMB_REFE_MARCA'
      Size = 60
    end
    object consultaFECH_CREA_MARCA: TDateTimeField
      DisplayLabel = 'Fecha creación'
      FieldName = 'FECH_CREA_MARCA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_MARCAS.FECH_CREA_MARCA'
    end
    object CONSULTATIEM_USO: TIntegerField
      DisplayLabel = 'Tiempo uso (meses)'
      FieldKind = fkCalculated
      FieldName = 'TIEM_USO'
      DisplayFormat = ',0'
      Calculated = True
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_MARCAS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_MARCAS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_REFE_MARCA'
    NombreAMostrar = 'Marca de producto'
    CamposDeBusqueda = 'CONS_REFE_MARCA'
    TipoGenero = geLa
    TablaMaestra = 'GLO_REFE_MARCAS'
  end
end

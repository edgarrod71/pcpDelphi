inherited fn1_refe_edades: Tfn1_refe_edades
  Left = 16
  Top = 72
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_REFE_EDAD'
          Filter.Criteria = {00000000}
          object padr_gridCONS_REFE_EDAD: TdxDBGridMaskColumn
            Visible = False
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_EDAD'
          end
          object padr_gridCODI_REFE_EDAD: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_EDAD'
          end
          object padr_gridNOMB_REFE_EDAD: TdxDBGridMaskColumn
            Width = 167
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_EDAD'
          end
          object padr_gridRANGO: TdxDBGridColumn
            Width = 163
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RANGO'
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
      LabelCaption = 'Edades de producto'
      Caption = 'Edades de producto'
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
      'FROM GLO_REFE_EDADES'
      'where cons_Refe_edad>0'
      'ORDER BY CODI_REFE_EDAD')
    object consultaCONS_REFE_EDAD: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_REFE_EDAD'
      Origin = 'DATA_BASE_PCP.GLO_REFE_EDADES.CONS_REFE_EDAD'
    end
    object consultaCODI_REFE_EDAD: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_REFE_EDAD'
      Origin = 'DATA_BASE_PCP.GLO_REFE_EDADES.CODI_REFE_EDAD'
      Size = 12
    end
    object consultaNOMB_REFE_EDAD: TStringField
      DisplayLabel = 'Edad'
      FieldName = 'NOMB_REFE_EDAD'
      Origin = 'DATA_BASE_PCP.GLO_REFE_EDADES.NOMB_REFE_EDAD'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_EDADES.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_EDADES.USUA_SISTEMA'
    end
    object consultaRANGO: TStringField
      DisplayLabel = 'Rango'
      FieldName = 'RANGO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_EDADES.RANGO'
      Size = 60
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_REFE_EDAD'
    NombreAMostrar = 'Edad'
    CamposDeBusqueda = 'CONS_REFE_EDAD'
    TipoGenero = geLa
    TablaMaestra = 'GLO_REFE_EDADES'
  end
end

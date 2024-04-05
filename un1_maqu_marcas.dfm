inherited fn1_maqu_marcas: Tfn1_maqu_marcas
  Left = 212
  Top = 153
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_RECU_MARCA'
          Filter.Criteria = {00000000}
          object padr_gridCONS_RECU_MARCA: TdxDBGridMaskColumn
            Visible = False
            Width = 48
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_MARCA'
          end
          object padr_gridCODI_RECU_MARCA: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_MARCA'
          end
          object padr_gridNOMB_RECU_MARCA: TdxDBGridMaskColumn
            Width = 194
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_MARCA'
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
      LabelCaption = 'Marcas de recursos'
      Caption = 'Marcas de recursos'
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
      'FROM GLO_RECU_MARCAS'
      'WHERE CONS_RECU_MARCA <> 0'
      'ORDER BY CODI_RECU_MARCA')
    object consultaCONS_RECU_MARCA: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_RECU_MARCA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_MARCAS.CONS_RECU_MARCA'
    end
    object consultaCODI_RECU_MARCA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_RECU_MARCA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_MARCAS.CODI_RECU_MARCA'
      Size = 12
    end
    object consultaNOMB_RECU_MARCA: TStringField
      DisplayLabel = 'Marca de Recurso'
      FieldName = 'NOMB_RECU_MARCA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_MARCAS.NOMB_RECU_MARCA'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_MARCAS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_MARCAS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_RECU_MARCA'
    NombreAMostrar = 'Marca de recursos'
    CamposDeBusqueda = 'CONS_RECU_MARCA'
    TipoGenero = geLa
    TablaMaestra = 'GLO_RECU_MARCAS'
  end
end

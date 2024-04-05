inherited fn1_refe_grup_tallas: Tfn1_refe_grup_tallas
  Left = 124
  Top = 101
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_GRUP_TALLAS'
          Filter.Criteria = {00000000}
          object padr_gridCONS_GRUP_TALLAS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_GRUP_TALLAS'
          end
          object padr_gridCODI_GRUP_TALLAS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_GRUP_TALLAS'
          end
          object padr_gridNOMB_GRUP_TALLAS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 109
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_GRUP_TALLAS'
          end
          object padr_gridTALLAS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 316
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TALLAS'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 145
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
      LabelCaption = 'Grupos de tallas de productos'
      Caption = 'Grupos de tallas de productos'
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
      'FROM CON_GLO_GRUP_TALLAS'
      'where cons_grup_tallas>0'
      'ORDER BY CODI_GRUP_TALLAS')
    object consultaCONS_GRUP_TALLAS: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_GRUP_TALLAS'
      Origin = 'DATA_BASE_PCP.GLO_GRUP_TALLAS.CONS_GRUP_TALLAS'
    end
    object consultaCODI_GRUP_TALLAS: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_GRUP_TALLAS'
      Origin = 'DATA_BASE_PCP.GLO_GRUP_TALLAS.CODI_GRUP_TALLAS'
      Size = 12
    end
    object consultaNOMB_GRUP_TALLAS: TStringField
      DisplayLabel = 'Grupo de Talla'
      FieldName = 'NOMB_GRUP_TALLAS'
      Origin = 'DATA_BASE_PCP.GLO_GRUP_TALLAS.NOMB_GRUP_TALLAS'
      Size = 60
    end
    object consultaTALLAS: TStringField
      DisplayLabel = 'Tallas'
      FieldName = 'TALLAS'
      Size = 240
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_GRUP_TALLAS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_GRUP_TALLAS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'CONS_GRUP_TALLAS'
    NombreAMostrar = 'Grupo de tallas de productos'
    CamposDeBusqueda = 'CODI_GRUP_TALLAS'
    TipoGenero = geEl
    TablaMaestra = 'GLO_GRUP_TALLAS'
  end
end

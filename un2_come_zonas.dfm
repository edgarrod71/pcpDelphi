inherited fn2_come_zonas: Tfn2_come_zonas
  Left = 113
  Top = 61
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_COME_ZONA'
          Filter.Criteria = {00000000}
          object padr_gridCONS_COME_ZONA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COME_ZONA'
          end
          object padr_gridCODI_COME_ZONA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 97
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COME_ZONA'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object padr_gridNOMB_COME_ZONA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 149
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COME_ZONA'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 158
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
      LabelCaption = 'Zonas comerciales'
      Caption = 'Zonas comerciales'
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
      'Select *'
      'from GLO_COME_ZONAS'
      'where cons_come_zona > 0'
      'Order by cons_come_zona')
    object consultaCONS_COME_ZONA: TIntegerField
      DisplayLabel = 'Cons.'
      FieldName = 'CONS_COME_ZONA'
      Origin = 'DATA_BASE_PCP.GLO_COME_ZONAS.CONS_COME_ZONA'
    end
    object consultaCODI_COME_ZONA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_COME_ZONA'
      Origin = 'DATA_BASE_PCP.GLO_COME_ZONAS.CODI_COME_ZONA'
      Size = 12
    end
    object consultaNOMB_COME_ZONA: TStringField
      DisplayLabel = 'Zona'
      FieldName = 'NOMB_COME_ZONA'
      Origin = 'DATA_BASE_PCP.GLO_COME_ZONAS.NOMB_COME_ZONA'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_COME_ZONAS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_COME_ZONAS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'nomb_come_zona'
    NombreAMostrar = 'Zona comercial'
    CamposDeBusqueda = 'cons_come_zona'
    TipoGenero = geLa
    TablaMaestra = 'GLO_COME_ZONAS'
  end
end

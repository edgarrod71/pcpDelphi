inherited fn1_refe_estilos: Tfn1_refe_estilos
  Left = 3
  Top = 69
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_REFE_ESTILO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_REFE_ESTILO: TdxDBGridMaskColumn
            Visible = False
            Width = 49
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_ESTILO'
          end
          object padr_gridCODI_REFE_ESTILO: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_ESTILO'
          end
          object padr_gridNOMB_REFE_ESTILO: TdxDBGridMaskColumn
            Width = 208
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_ESTILO'
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
      LabelCaption = 'Estilos de productos'
      Caption = 'Estilos de productos'
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
      'FROM GLO_REFE_ESTILOS'
      'where cons_refe_estilo>0'
      'ORDER BY CODI_REFE_ESTILO')
    object consultaCONS_REFE_ESTILO: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_REFE_ESTILO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTILOS.CONS_REFE_ESTILO'
    end
    object consultaCODI_REFE_ESTILO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_REFE_ESTILO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTILOS.CODI_REFE_ESTILO'
      Size = 12
    end
    object consultaNOMB_REFE_ESTILO: TStringField
      DisplayLabel = 'Estilo'
      FieldName = 'NOMB_REFE_ESTILO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTILOS.NOMB_REFE_ESTILO'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTILOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTILOS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_REFE_ESTILO'
    NombreAMostrar = 'Estilo de productos'
    CamposDeBusqueda = 'CONS_REFE_ESTILO'
    TipoGenero = geEl
    TablaMaestra = 'GLO_REFE_ESTILOS'
  end
end

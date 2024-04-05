inherited FN1_Pers_Movi_Tipo_Documento: TFN1_Pers_Movi_Tipo_Documento
  Left = 322
  Top = 172
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_PERS_MOVI_TIPO_DOCUMENTO: TdxDBGridMaskColumn
            Visible = False
            Width = 62
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
          end
          object padr_gridCODI_PERS_MOVI_TIPO_DOCUMENTO: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERS_MOVI_TIPO_DOCUMENTO'
          end
          object padr_gridNOMB_PERS_MOVI_TIPO_DOCUMENTO: TdxDBGridMaskColumn
            Width = 172
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_MOVI_TIPO_DOCUMENTO'
          end
          object padr_gridUSO: TdxDBGridColumn
            Width = 300
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USO'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Tipos de Documento (Movimientos Personal)'
      Caption = 'Tipos de Documento (Movimientos Personal)'
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
      'FROM GLO_PERS_MOVI_TIPO_DOCUMENTO'
      'WHERE CONS_PERS_MOVI_TIPO_DOCUMENTO <> 0'
      'ORDER BY CODI_PERS_MOVI_TIPO_DOCUMENTO')
    object consultaCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      Origin = 
        'DATA_BASE_PCP.GLO_PERS_MOVI_TIPO_DOCUMENTO.CONS_PERS_MOVI_TIPO_D' +
        'OCUMENTO'
    end
    object consultaCODI_PERS_MOVI_TIPO_DOCUMENTO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERS_MOVI_TIPO_DOCUMENTO'
      Origin = 
        'DATA_BASE_PCP.GLO_PERS_MOVI_TIPO_DOCUMENTO.CODI_PERS_MOVI_TIPO_D' +
        'OCUMENTO'
      Size = 12
    end
    object consultaNOMB_PERS_MOVI_TIPO_DOCUMENTO: TStringField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'NOMB_PERS_MOVI_TIPO_DOCUMENTO'
      Origin = 
        'DATA_BASE_PCP.GLO_PERS_MOVI_TIPO_DOCUMENTO.NOMB_PERS_MOVI_TIPO_D' +
        'OCUMENTO'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_MOVI_TIPO_DOCUMENTO.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_MOVI_TIPO_DOCUMENTO.USUA_SISTEMA'
    end
    object consultaUSO: TStringField
      DisplayLabel = 'Uso'
      FieldName = 'USO'
      Size = 240
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_PERS_MOVI_TIPO_DOCUMENTO'
    NombreAMostrar = 'Tipo documento'
    CamposDeBusqueda = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
    TipoGenero = geEl
    TablaMaestra = 'GLO_PERS_MOVI_TIPO_DOCUMENTO'
  end
end

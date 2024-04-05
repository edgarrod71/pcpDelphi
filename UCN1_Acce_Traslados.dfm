inherited CN1_Acce_Traslados: TCN1_Acce_Traslados
  Left = 281
  Top = 174
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_ACCESORIO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_ACCESORIO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_ACCESORIO'
          end
          object padr_gridNUME_INVE_ACCESORIO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_INVE_ACCESORIO'
          end
          object padr_gridNUME_SERIE: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_SERIE'
          end
          object padr_gridCONS_ACCE_GRUPO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_ACCE_GRUPO'
          end
          object padr_gridCODI_ACCE_GRUPO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_ACCE_GRUPO'
          end
          object padr_gridNOMB_ACCE_GRUPO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_ACCE_GRUPO'
          end
          object padr_gridCONS_ACCE_TIPO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_ACCE_TIPO'
          end
          object padr_gridCODI_ACCE_TIPO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_ACCE_TIPO'
          end
          object padr_gridNOMB_ACCE_TIPO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_ACCE_TIPO'
          end
          object padr_gridCONS_RECU_MARCA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_MARCA'
          end
          object padr_gridCODI_RECU_MARCA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_MARCA'
          end
          object padr_gridNOMB_RECU_MARCA: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_MARCA'
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Movimiento de Accesorios (Traslados)'
      Caption = 'Movimiento de Accesorios (Traslados)'
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
      'FROM CON_GLO_ACCE_INFO_TRASLADOS')
    object consultaCONS_ACCESORIO: TIntegerField
      DisplayLabel = 'Cons. Accesorio'
      FieldName = 'CONS_ACCESORIO'
    end
    object consultaNUME_INVE_ACCESORIO: TStringField
      DisplayLabel = 'Número Inventario'
      FieldName = 'NUME_INVE_ACCESORIO'
    end
    object consultaNUME_SERIE: TStringField
      DisplayLabel = 'Número Serie'
      FieldName = 'NUME_SERIE'
    end
    object consultaCONS_ACCE_GRUPO: TIntegerField
      DisplayLabel = 'Cons. Grupo'
      FieldName = 'CONS_ACCE_GRUPO'
    end
    object consultaCODI_ACCE_GRUPO: TStringField
      DisplayLabel = 'Cód. Grupo'
      FieldName = 'CODI_ACCE_GRUPO'
      Size = 12
    end
    object consultaNOMB_ACCE_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_ACCE_GRUPO'
      Size = 60
    end
    object consultaCONS_ACCE_TIPO: TIntegerField
      DisplayLabel = 'Cons. Tipo'
      FieldName = 'CONS_ACCE_TIPO'
    end
    object consultaCODI_ACCE_TIPO: TStringField
      DisplayLabel = 'Cód. Tipo'
      FieldName = 'CODI_ACCE_TIPO'
      Size = 12
    end
    object consultaNOMB_ACCE_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'NOMB_ACCE_TIPO'
      Size = 60
    end
    object consultaCONS_RECU_MARCA: TIntegerField
      DisplayLabel = 'Cons. Marca'
      FieldName = 'CONS_RECU_MARCA'
    end
    object consultaCODI_RECU_MARCA: TStringField
      DisplayLabel = 'Cód. Marca'
      FieldName = 'CODI_RECU_MARCA'
      Size = 12
    end
    object consultaNOMB_RECU_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOMB_RECU_MARCA'
      Size = 60
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NUME_INVE_ACCESORIO'
    NombreAMostrar = 'Accesorio'
    CamposDeBusqueda = 'CONS_ACCESORIO'
    TipoGenero = geEl
    TablaMaestra = 'CON_GLO_ACCE_INFO_TRASLADOS'
  end
end

inherited CN1_Acce_Cons_Plantas: TCN1_Acce_Cons_Plantas
  Left = 233
  Top = 183
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_EMPRESA'
          Filter.Criteria = {00000000}
          object padr_gridCONS_EMPRESA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_EMPRESA'
          end
          object padr_gridCODI_EMPRESA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_EMPRESA'
          end
          object padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_EMPRESA'
          end
          object padr_gridCONS_PLANTA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PLANTA'
          end
          object padr_gridCODI_PLANTA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PLANTA'
          end
          object padr_gridNOMB_PLANTA: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PLANTA'
          end
          object padr_gridCONS_LINEA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_LINEA'
          end
          object padr_gridCODI_LINEA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_LINEA'
          end
          object padr_gridNOMB_LINEA: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_LINEA'
          end
          object padr_gridCONS_SECCION: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_SECCION'
          end
          object padr_gridCODI_SECCION: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_SECCION'
          end
          object padr_gridNOMB_SECCION: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_SECCION'
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
          object padr_gridCANTIDAD: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CANTIDAD'
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Accesorios por Plantas y Secciones'
      Caption = 'Accesorios por Plantas y Secciones'
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
      'FROM CON_GLO_ACCE_INFO_PLANTAS')
    object consultaCONS_EMPRESA: TIntegerField
      DisplayLabel = 'Cons. Empresa'
      FieldName = 'CONS_EMPRESA'
    end
    object consultaCODI_EMPRESA: TStringField
      DisplayLabel = 'Cód. Empresa'
      FieldName = 'CODI_EMPRESA'
      Size = 12
    end
    object consultaNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Size = 60
    end
    object consultaCONS_PLANTA: TIntegerField
      DisplayLabel = 'Cons. Planta'
      FieldName = 'CONS_PLANTA'
    end
    object consultaCODI_PLANTA: TStringField
      DisplayLabel = 'Cód. Planta'
      FieldName = 'CODI_PLANTA'
      Size = 12
    end
    object consultaNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta'
      FieldName = 'NOMB_PLANTA'
      Size = 60
    end
    object consultaCONS_LINEA: TIntegerField
      DisplayLabel = 'Cons. Línea'
      FieldName = 'CONS_LINEA'
    end
    object consultaCODI_LINEA: TStringField
      DisplayLabel = 'Cód. Línea'
      FieldName = 'CODI_LINEA'
      Size = 12
    end
    object consultaNOMB_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldName = 'NOMB_LINEA'
      Size = 60
    end
    object consultaCONS_SECCION: TIntegerField
      DisplayLabel = 'Cons. Sección'
      FieldName = 'CONS_SECCION'
    end
    object consultaCODI_SECCION: TStringField
      DisplayLabel = 'Cód. Sección'
      FieldName = 'CODI_SECCION'
      Size = 12
    end
    object consultaNOMB_SECCION: TStringField
      DisplayLabel = 'Sección'
      FieldName = 'NOMB_SECCION'
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
    object consultaCANTIDAD: TIntegerField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      DisplayFormat = ',0'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_EMPRESA'
    NombreAMostrar = 'Empresa'
    CamposDeBusqueda = 'CONS_EMPRESA'
    TipoGenero = geLa
    TablaMaestra = 'CON_GLO_ACCE_INFO_PLANTAS'
  end
  object QTipos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CODI_ACCE_TIPO'
      'FROM GLO_ACCE_TIPOS'
      'ORDER BY CONS_ACCE_TIPO')
    Left = 230
    Top = 180
  end
  object QCantidad_Secciones: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT COUNT(CONS_SECCION) AS TOTAL_SECCIONES'
      'FROM GLO_SECCIONES')
    Left = 48
    Top = 203
  end
end

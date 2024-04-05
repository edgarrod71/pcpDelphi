inherited FN1_Pers_Historial: TFN1_Pers_Historial
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TdxDBGrid
          KeyField = 'CODI_PERSONAL'
          Filter.Criteria = {00000000}
          object padr_gridCODI_PERSONAL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERSONAL'
          end
          object padr_gridPRIM_APELLIDO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRIM_APELLIDO'
          end
          object padr_gridSEGU_APELLIDO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SEGU_APELLIDO'
          end
          object padr_gridNOMBRES: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMBRES'
          end
          object padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COMPLETO'
          end
          object padr_gridCODI_AREA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_AREA'
          end
          object padr_gridNOMB_AREA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_AREA'
          end
          object padr_gridCODI_PLANTA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PLANTA'
          end
          object padr_gridNOMB_PLANTA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PLANTA'
          end
          object padr_gridCODI_SECCION: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_SECCION'
          end
          object padr_gridNOMB_SECCION: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_SECCION'
          end
          object padr_gridCODI_BODEGA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_BODEGA'
          end
          object padr_gridNOMB_BODEGA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_BODEGA'
          end
          object padr_gridCODI_TURNO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_TURNO'
          end
          object padr_gridCODI_CARGO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_CARGO'
          end
          object padr_gridNOMB_CARGO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_CARGO'
          end
          object padr_gridTEXT_ANOTACION: TdxDBGridMemoColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TEXT_ANOTACION'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPanel
      Caption = 'Personal (Historial)'
    end
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM VIS_GLO_PERS_HISTORIAL'
      'ORDER BY CODI_PERSONAL')
    object consultaCODI_PERSONAL: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERSONAL'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_HISTORIAL.CODI_PERSONAL'
      Size = 12
    end
    object consultaPRIM_APELLIDO: TStringField
      DisplayLabel = 'Primer Apellido'
      FieldName = 'PRIM_APELLIDO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_HISTORIAL.PRIM_APELLIDO'
      Size = 30
    end
    object consultaSEGU_APELLIDO: TStringField
      DisplayLabel = 'Segundo Apellido'
      FieldName = 'SEGU_APELLIDO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_HISTORIAL.SEGU_APELLIDO'
      Size = 30
    end
    object consultaNOMBRES: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRES'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_HISTORIAL.NOMBRES'
      Size = 40
    end
    object consultaNOMB_COMPLETO: TStringField
      DisplayLabel = 'Nombre Completo'
      FieldName = 'NOMB_COMPLETO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_HISTORIAL.NOMB_COMPLETO'
      Size = 102
    end
    object consultaCODI_AREA: TStringField
      DisplayLabel = 'Código Area'
      FieldName = 'CODI_AREA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_HISTORIAL.CODI_AREA'
      Size = 12
    end
    object consultaNOMB_AREA: TStringField
      DisplayLabel = 'Area'
      FieldName = 'NOMB_AREA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_HISTORIAL.NOMB_AREA'
      Size = 60
    end
    object consultaCODI_PLANTA: TStringField
      DisplayLabel = 'Código Planta'
      FieldName = 'CODI_PLANTA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_HISTORIAL.CODI_PLANTA'
      Size = 12
    end
    object consultaNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta'
      FieldName = 'NOMB_PLANTA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_HISTORIAL.NOMB_PLANTA'
      Size = 60
    end
    object consultaCODI_SECCION: TStringField
      DisplayLabel = 'Código Sección'
      FieldName = 'CODI_SECCION'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_HISTORIAL.CODI_SECCION'
      Size = 12
    end
    object consultaNOMB_SECCION: TStringField
      DisplayLabel = 'Sección'
      FieldName = 'NOMB_SECCION'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_HISTORIAL.NOMB_SECCION'
      Size = 60
    end
    object consultaCODI_BODEGA: TStringField
      DisplayLabel = 'Código Bodega'
      FieldName = 'CODI_BODEGA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_HISTORIAL.CODI_BODEGA'
      Size = 12
    end
    object consultaNOMB_BODEGA: TStringField
      DisplayLabel = 'Bodega'
      FieldName = 'NOMB_BODEGA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_HISTORIAL.NOMB_BODEGA'
      Size = 60
    end
    object consultaCODI_TURNO: TStringField
      DisplayLabel = 'Turno'
      FieldName = 'CODI_TURNO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_HISTORIAL.CODI_TURNO'
      Size = 12
    end
    object consultaCODI_CARGO: TStringField
      DisplayLabel = 'Código Cargo'
      FieldName = 'CODI_CARGO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_HISTORIAL.CODI_CARGO'
      Size = 12
    end
    object consultaNOMB_CARGO: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'NOMB_CARGO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_HISTORIAL.NOMB_CARGO'
      Size = 60
    end
    object consultaTEXT_ANOTACION: TMemoField
      DisplayLabel = 'Anotación'
      FieldName = 'TEXT_ANOTACION'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_HISTORIAL.TEXT_ANOTACION'
      BlobType = ftMemo
      Size = 2000
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_HISTORIAL.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_HISTORIAL.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_PERSONAL'
    NombreAMostrar = 'Personal (Historial)'
    CamposDeBusqueda = 'CODI_PERSONAL'
    TipoGenero = geEl
    TablaMaestra = 'GLO_PERS_HISTORIAL'
  end
end

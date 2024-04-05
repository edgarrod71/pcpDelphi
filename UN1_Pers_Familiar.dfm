inherited FN1_Pers_Familiar: TFN1_Pers_Familiar
  Left = 201
  Top = 163
  Caption = 'FN1_Pers_Familiar'
  OldCreateOrder = True
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
          object padr_gridFAMI_PRIM_APELLIDO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAMI_PRIM_APELLIDO'
          end
          object padr_gridFAMI_SEGU_APELLIDO: TdxDBGridMaskColumn
            Caption = 'Segundo Apellido'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAMI_SEGU_APELLIDO'
          end
          object padr_gridFAMI_NOMBRES: TdxDBGridMaskColumn
            Caption = 'Nombres'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAMI_NOMBRES'
          end
          object padr_gridFAMI_CODI_PARENTESCO: TdxDBGridMaskColumn
            Caption = 'Código Parentesco'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAMI_CODI_PARENTESCO'
          end
          object padr_gridFAMI_FECH_NACIMIENTO: TdxDBGridDateColumn
            Caption = 'Fecha Nacimiento'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAMI_FECH_NACIMIENTO'
          end
          object padr_gridFAMI_CODI_PAIS_RESIDENCIA: TdxDBGridMaskColumn
            Caption = 'Código País'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAMI_CODI_PAIS_RESIDENCIA'
          end
          object padr_gridFAMI_CODI_DEPA_RESIDENCIA: TdxDBGridMaskColumn
            Caption = 'Código Departamento'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAMI_CODI_DEPA_RESIDENCIA'
          end
          object padr_gridFAMI_CODI_CIUD_RESIDENCIA: TdxDBGridMaskColumn
            Caption = 'Código Municipio'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAMI_CODI_CIUD_RESIDENCIA'
          end
          object padr_gridFAMI_DIRE_RESIDENCIA: TdxDBGridMaskColumn
            Caption = 'Dirección Residencia'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAMI_DIRE_RESIDENCIA'
          end
          object padr_gridFAMI_TELE_RESIDENCIA: TdxDBGridMaskColumn
            Caption = 'Teléfono Residencia'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAMI_TELE_RESIDENCIA'
          end
          object padr_gridFAMI_TELE_OTRO: TdxDBGridMaskColumn
            Caption = 'Otro Teléfono'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAMI_TELE_OTRO'
          end
          object padr_gridFAMI_TELE_MOVIL: TdxDBGridMaskColumn
            Caption = 'Movil'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAMI_TELE_MOVIL'
          end
          object padr_gridFAMI_CODI_TIPO_DOCU_IDENTIDAD: TdxDBGridMaskColumn
            Caption = 'Código Tipo Documento'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAMI_CODI_TIPO_DOCU_IDENTIDAD'
          end
          object padr_gridFAMI_NUME_DOCU_IDENTIDAD: TdxDBGridMaskColumn
            Caption = 'Número Documento'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAMI_NUME_DOCU_IDENTIDAD'
          end
          object padr_gridFAMI_OCUPACION: TdxDBGridMaskColumn
            Caption = 'Ocupación'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAMI_OCUPACION'
          end
          object padr_gridFAMI_NOMB_EMPRESA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAMI_NOMB_EMPRESA'
          end
          object padr_gridFAMI_DIRE_EMPRESA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAMI_DIRE_EMPRESA'
          end
          object padr_gridFAMI_TELE_EMPRESA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAMI_TELE_EMPRESA'
          end
          object padr_gridFAMI_CORR_ELECTRONICO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAMI_CORR_ELECTRONICO'
          end
          object padr_gridCODI_PERSONAL1: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERSONAL1'
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
          object padr_gridCODI_AREA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_AREA'
          end
          object padr_gridCODI_PLANTA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PLANTA'
          end
          object padr_gridCODI_SECCION: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_SECCION'
          end
          object padr_gridCODI_BODEGA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_BODEGA'
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
          object padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COMPLETO'
          end
          object padr_gridNOMB_PARENTESCO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PARENTESCO'
          end
          object padr_gridNOMB_PAIS: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PAIS'
          end
          object padr_gridNOMB_DEPARTAMENTO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_DEPARTAMENTO'
          end
          object padr_gridNOMB_CIUDAD: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_CIUDAD'
          end
          object padr_gridNOMB_TIPO_DOCUMENTO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_TIPO_DOCUMENTO'
          end
        end
      end
    end
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM VIS_GLO_PERS_FAMILIAR'
      'ORDER BY CODI_PERSONAL')
    object consultaCODI_PERSONAL: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERSONAL'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.CODI_PERSONAL'
      Size = 12
    end
    object consultaFAMI_PRIM_APELLIDO: TStringField
      DisplayLabel = 'Primer Apellido'
      FieldName = 'FAMI_PRIM_APELLIDO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.FAMI_PRIM_APELLIDO'
      Size = 30
    end
    object consultaFAMI_SEGU_APELLIDO: TStringField
      FieldName = 'FAMI_SEGU_APELLIDO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.FAMI_SEGU_APELLIDO'
      Size = 30
    end
    object consultaFAMI_NOMBRES: TStringField
      FieldName = 'FAMI_NOMBRES'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.FAMI_NOMBRES'
      Size = 40
    end
    object consultaFAMI_CODI_PARENTESCO: TStringField
      FieldName = 'FAMI_CODI_PARENTESCO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.FAMI_CODI_PARENTESCO'
      Size = 12
    end
    object consultaFAMI_FECH_NACIMIENTO: TDateTimeField
      FieldName = 'FAMI_FECH_NACIMIENTO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.FAMI_FECH_NACIMIENTO'
    end
    object consultaFAMI_CODI_PAIS_RESIDENCIA: TStringField
      FieldName = 'FAMI_CODI_PAIS_RESIDENCIA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.FAMI_CODI_PAIS_RESIDENCIA'
      Size = 12
    end
    object consultaFAMI_CODI_DEPA_RESIDENCIA: TStringField
      FieldName = 'FAMI_CODI_DEPA_RESIDENCIA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.FAMI_CODI_DEPA_RESIDENCIA'
      Size = 12
    end
    object consultaFAMI_CODI_CIUD_RESIDENCIA: TStringField
      FieldName = 'FAMI_CODI_CIUD_RESIDENCIA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.FAMI_CODI_CIUD_RESIDENCIA'
      Size = 12
    end
    object consultaFAMI_DIRE_RESIDENCIA: TStringField
      FieldName = 'FAMI_DIRE_RESIDENCIA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.FAMI_DIRE_RESIDENCIA'
      Size = 240
    end
    object consultaFAMI_TELE_RESIDENCIA: TStringField
      FieldName = 'FAMI_TELE_RESIDENCIA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.FAMI_TELE_RESIDENCIA'
      Size = 30
    end
    object consultaFAMI_TELE_OTRO: TStringField
      FieldName = 'FAMI_TELE_OTRO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.FAMI_TELE_OTRO'
      Size = 30
    end
    object consultaFAMI_TELE_MOVIL: TStringField
      FieldName = 'FAMI_TELE_MOVIL'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.FAMI_TELE_MOVIL'
      Size = 30
    end
    object consultaFAMI_CODI_TIPO_DOCU_IDENTIDAD: TStringField
      FieldName = 'FAMI_CODI_TIPO_DOCU_IDENTIDAD'
      Origin = 
        'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.FAMI_CODI_TIPO_DOCU_IDENTIDA' +
        'D'
      Size = 12
    end
    object consultaFAMI_NUME_DOCU_IDENTIDAD: TStringField
      FieldName = 'FAMI_NUME_DOCU_IDENTIDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.FAMI_NUME_DOCU_IDENTIDAD'
      Size = 12
    end
    object consultaFAMI_OCUPACION: TStringField
      FieldName = 'FAMI_OCUPACION'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.FAMI_OCUPACION'
      Size = 60
    end
    object consultaFAMI_NOMB_EMPRESA: TStringField
      FieldName = 'FAMI_NOMB_EMPRESA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.FAMI_NOMB_EMPRESA'
      Size = 60
    end
    object consultaFAMI_DIRE_EMPRESA: TStringField
      FieldName = 'FAMI_DIRE_EMPRESA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.FAMI_DIRE_EMPRESA'
      Size = 240
    end
    object consultaFAMI_TELE_EMPRESA: TStringField
      FieldName = 'FAMI_TELE_EMPRESA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.FAMI_TELE_EMPRESA'
      Size = 30
    end
    object consultaFAMI_CORR_ELECTRONICO: TStringField
      FieldName = 'FAMI_CORR_ELECTRONICO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.FAMI_CORR_ELECTRONICO'
      Size = 60
    end
    object consultaCODI_PERSONAL1: TStringField
      FieldName = 'CODI_PERSONAL1'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.CODI_PERSONAL1'
      Size = 12
    end
    object consultaPRIM_APELLIDO: TStringField
      FieldName = 'PRIM_APELLIDO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.PRIM_APELLIDO'
      Size = 30
    end
    object consultaSEGU_APELLIDO: TStringField
      FieldName = 'SEGU_APELLIDO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.SEGU_APELLIDO'
      Size = 30
    end
    object consultaNOMBRES: TStringField
      FieldName = 'NOMBRES'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.NOMBRES'
      Size = 40
    end
    object consultaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.USUA_SISTEMA'
    end
    object consultaCODI_AREA: TStringField
      FieldName = 'CODI_AREA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.CODI_AREA'
      Size = 12
    end
    object consultaCODI_PLANTA: TStringField
      FieldName = 'CODI_PLANTA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.CODI_PLANTA'
      Size = 12
    end
    object consultaCODI_SECCION: TStringField
      FieldName = 'CODI_SECCION'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.CODI_SECCION'
      Size = 12
    end
    object consultaCODI_BODEGA: TStringField
      FieldName = 'CODI_BODEGA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.CODI_BODEGA'
      Size = 12
    end
    object consultaCODI_TURNO: TStringField
      FieldName = 'CODI_TURNO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.CODI_TURNO'
      Size = 12
    end
    object consultaCODI_CARGO: TStringField
      FieldName = 'CODI_CARGO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.CODI_CARGO'
      Size = 12
    end
    object consultaNOMB_COMPLETO: TStringField
      FieldName = 'NOMB_COMPLETO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.NOMB_COMPLETO'
      Size = 102
    end
    object consultaNOMB_PARENTESCO: TStringField
      FieldName = 'NOMB_PARENTESCO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.NOMB_PARENTESCO'
      Size = 60
    end
    object consultaNOMB_PAIS: TStringField
      FieldName = 'NOMB_PAIS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.NOMB_PAIS'
      Size = 60
    end
    object consultaNOMB_DEPARTAMENTO: TStringField
      FieldName = 'NOMB_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.NOMB_DEPARTAMENTO'
      Size = 60
    end
    object consultaNOMB_CIUDAD: TStringField
      FieldName = 'NOMB_CIUDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.NOMB_CIUDAD'
      Size = 60
    end
    object consultaNOMB_TIPO_DOCUMENTO: TStringField
      FieldName = 'NOMB_TIPO_DOCUMENTO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PERS_FAMILIAR.NOMB_TIPO_DOCUMENTO'
      Size = 60
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_COMPLETO'
    NombreAMostrar = 'Familiar'
    CamposDeBusqueda = 'CODI_PERSONAL'
    TipoGenero = geEl
    TablaMaestra = 'GLO_PERS_FAMILIAR'
  end
end

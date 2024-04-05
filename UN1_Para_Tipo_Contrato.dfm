inherited FN1_Para_Tipo_Contrato: TFN1_Para_Tipo_Contrato
  Left = 187
  Top = 153
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_PERS_TIPO_CONTRATO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn
            Visible = False
            Width = 45
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_TIPO_CONTRATO'
          end
          object padr_gridCODI_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERS_TIPO_CONTRATO'
          end
          object padr_gridNOMB_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn
            Width = 183
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_TIPO_CONTRATO'
          end
          object padr_gridDURACION: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DURACION'
          end
          object padr_gridCONS_UNID_MEDI_TIEMPO: TdxDBGridMaskColumn
            Visible = False
            Width = 62
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_UNID_MEDI_TIEMPO'
          end
          object padr_gridCODI_UNID_MEDI_TIEMPO: TdxDBGridMaskColumn
            Caption = 'Cód. Tiempo'
            Visible = False
            Width = 92
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_UNID_MEDI_TIEMPO'
          end
          object padr_gridNOMB_UNID_MEDI_TIEMPO: TdxDBGridMaskColumn
            Caption = 'Tiempo'
            Width = 172
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_UNID_MEDI_TIEMPO'
          end
          object padr_gridDURA_DIAS: TdxDBGridMaskColumn
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DURA_DIAS'
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
      LabelCaption = 'Tipos de Contrato'
      Caption = 'Tipos de Contrato'
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
      'SELECT T.*, U.CODI_UNID_MEDI_TIEMPO, U.NOMB_UNID_MEDI_TIEMPO,'
      ' U.DURA_DIAS'
      'FROM GLO_PERS_TIPO_CONTRATO T, SIS_UNID_MEDI_TIEMPO U'
      'WHERE '
      'T.CONS_PERS_TIPO_CONTRATO > 0'
      'AND'
      'T.CONS_UNID_MEDI_TIEMPO = U.CONS_UNID_MEDI_TIEMPO'
      'ORDER BY T.CONS_PERS_TIPO_CONTRATO')
    object consultaCONS_PERS_TIPO_CONTRATO: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERS_TIPO_CONTRATO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_CONTRATO.CONS_PERS_TIPO_CONTRATO'
    end
    object consultaCODI_PERS_TIPO_CONTRATO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERS_TIPO_CONTRATO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_CONTRATO.CODI_PERS_TIPO_CONTRATO'
      Size = 12
    end
    object consultaNOMB_PERS_TIPO_CONTRATO: TStringField
      DisplayLabel = 'Tipo Contrato'
      FieldName = 'NOMB_PERS_TIPO_CONTRATO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_CONTRATO.NOMB_PERS_TIPO_CONTRATO'
      Size = 60
    end
    object consultaDURACION: TFloatField
      DisplayLabel = 'Duración'
      FieldName = 'DURACION'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_CONTRATO.DURACION'
    end
    object consultaCONS_UNID_MEDI_TIEMPO: TIntegerField
      DisplayLabel = 'No. Und. Tiempo'
      FieldName = 'CONS_UNID_MEDI_TIEMPO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_CONTRATO.CONS_UNID_MEDI_TIEMPO'
    end
    object consultaCODI_UNID_MEDI_TIEMPO: TStringField
      DisplayLabel = 'Cód. Und. Tiempo'
      FieldName = 'CODI_UNID_MEDI_TIEMPO'
      Origin = 'DATA_BASE_PCP.SIS_UNID_MEDI_TIEMPO.CODI_UNID_MEDI_TIEMPO'
      Size = 12
    end
    object consultaNOMB_UNID_MEDI_TIEMPO: TStringField
      DisplayLabel = 'Unidad Tiempo'
      FieldName = 'NOMB_UNID_MEDI_TIEMPO'
      Origin = 'DATA_BASE_PCP.SIS_UNID_MEDI_TIEMPO.NOMB_UNID_MEDI_TIEMPO'
      Size = 60
    end
    object consultaDURA_DIAS: TFloatField
      DisplayLabel = 'Duración Días'
      FieldName = 'DURA_DIAS'
      Origin = 'DATA_BASE_PCP.SIS_UNID_MEDI_TIEMPO.DURA_DIAS'
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_CONTRATO.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_CONTRATO.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_PERS_TIPO_CONTRATO'
    NombreAMostrar = 'Tipo de Contrato'
    CamposDeBusqueda = 'CONS_PERS_TIPO_CONTRATO'
    TipoGenero = geEl
    TablaMaestra = 'GLO_PERS_TIPO_CONTRATO'
  end
end

inherited FN1_Para_Empresas: TFN1_Para_Empresas
  Left = 191
  Top = 149
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
            HeaderAlignment = taCenter
            Visible = False
            Width = 37
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_EMPRESA'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object padr_gridCODI_EMPRESA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_EMPRESA'
          end
          object padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 220
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_EMPRESA'
          end
          object padr_gridNUME_IDENTIFICACION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 121
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_IDENTIFICACION'
          end
          object padr_gridDIRECCION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 254
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DIRECCION'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 134
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 136
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
          object padr_gridACTI_PRINCIPAL: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 236
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACTI_PRINCIPAL'
          end
          object padr_gridREPR_LEGAL: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 157
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REPR_LEGAL'
          end
          object padr_gridCONS_PAIS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PAIS'
          end
          object padr_gridCODI_PAIS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 82
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PAIS'
          end
          object padr_gridNOMB_PAIS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PAIS'
          end
          object padr_gridCONS_DEPARTAMENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 98
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_DEPARTAMENTO'
          end
          object padr_gridCODI_DEPARTAMENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 103
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_DEPARTAMENTO'
          end
          object padr_gridNOMB_DEPARTAMENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 116
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_DEPARTAMENTO'
          end
          object padr_gridCONS_CIUDAD: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_CIUDAD'
          end
          object padr_gridCODI_CIUDAD: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 82
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_CIUDAD'
          end
          object padr_gridNOMB_CIUDAD: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 117
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_CIUDAD'
          end
          object padr_gridTELE_1: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 97
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELE_1'
          end
          object padr_gridTELE_2: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 96
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELE_2'
          end
          object padr_gridTELE_FAX: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 192
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELE_FAX'
          end
          object padr_gridTELE_MOVIL: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 192
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELE_MOVIL'
          end
          object padr_gridCORR_ELECTRONICO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 360
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CORR_ELECTRONICO'
          end
          object padr_gridPAGI_WEB: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 360
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PAGI_WEB'
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Empresas'
      Caption = 'Empresas'
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
      'FROM VIS_GLO_EMPRESAS'
      'WHERE CONS_EMPRESA <> 0'
      'ORDER BY CONS_EMPRESA')
    object consultaCONS_EMPRESA: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_EMPRESA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.CONS_EMPRESA'
    end
    object consultaCODI_EMPRESA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_EMPRESA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.CODI_EMPRESA'
      Size = 12
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.USUA_SISTEMA'
    end
    object consultaNOMB_EMPRESA: TStringField
      DisplayLabel = 'Razón social'
      FieldName = 'NOMB_EMPRESA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.NOMB_EMPRESA'
      Size = 60
    end
    object consultaNUME_IDENTIFICACION: TStringField
      DisplayLabel = 'Número identificación'
      FieldName = 'NUME_IDENTIFICACION'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.NUME_IDENTIFICACION'
    end
    object consultaACTI_PRINCIPAL: TStringField
      DisplayLabel = 'Actividad principal'
      FieldName = 'ACTI_PRINCIPAL'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.ACTI_PRINCIPAL'
      Size = 60
    end
    object consultaREPR_LEGAL: TStringField
      DisplayLabel = 'Representante Legal'
      FieldName = 'REPR_LEGAL'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.REPR_LEGAL'
      Size = 60
    end
    object consultaCONS_PAIS: TIntegerField
      DisplayLabel = 'No. país'
      FieldName = 'CONS_PAIS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.CONS_CIUDAD'
    end
    object consultaCODI_PAIS: TStringField
      DisplayLabel = 'Cód. país'
      FieldName = 'CODI_PAIS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.CODI_CIUDAD'
      Size = 12
    end
    object consultaNOMB_PAIS: TStringField
      DisplayLabel = 'País'
      FieldName = 'NOMB_PAIS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.NOMB_CIUDAD'
      Size = 60
    end
    object consultaCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'No. departamento'
      FieldName = 'CONS_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.CONS_DEPARTAMENTO'
    end
    object consultaCODI_DEPARTAMENTO: TStringField
      DisplayLabel = 'Cód. departamento'
      FieldName = 'CODI_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.CODI_DEPARTAMENTO'
      Size = 12
    end
    object consultaNOMB_DEPARTAMENTO: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'NOMB_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.NOMB_DEPARTAMENTO'
      Size = 60
    end
    object consultaCONS_CIUDAD: TIntegerField
      DisplayLabel = 'No. ciudad'
      FieldName = 'CONS_CIUDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.CONS_PAIS'
    end
    object consultaCODI_CIUDAD: TStringField
      DisplayLabel = 'Cód. ciudad'
      FieldName = 'CODI_CIUDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.CODI_PAIS'
      Size = 12
    end
    object consultaNOMB_CIUDAD: TStringField
      DisplayLabel = 'Ciudad'
      FieldName = 'NOMB_CIUDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.NOMB_PAIS'
      Size = 60
    end
    object consultaDIRECCION: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRECCION'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.DIRECCION'
      Size = 240
    end
    object consultaTELE_1: TStringField
      DisplayLabel = 'Teléfono'
      FieldName = 'TELE_1'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.TELE_1'
      Size = 30
    end
    object consultaTELE_2: TStringField
      DisplayLabel = 'Teléfono (2)'
      FieldName = 'TELE_2'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.TELE_2'
      Size = 30
    end
    object consultaTELE_FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'TELE_FAX'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.TELE_FAX'
      Size = 30
    end
    object consultaTELE_MOVIL: TStringField
      DisplayLabel = 'Teléfono móvil'
      FieldName = 'TELE_MOVIL'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.TELE_MOVIL'
      Size = 30
    end
    object consultaCORR_ELECTRONICO: TStringField
      DisplayLabel = 'Correo electrónico'
      FieldName = 'CORR_ELECTRONICO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.CORR_ELECTRONICO'
      Size = 60
    end
    object consultaPAGI_WEB: TStringField
      DisplayLabel = 'Página WEB'
      FieldName = 'PAGI_WEB'
      Origin = 'DATA_BASE_PCP.VIS_GLO_EMPRESAS.PAGI_WEB'
      Size = 60
    end
  end
  inherited padr_popu_vist_actual: TTBXPopupMenu
    inherited vent_list_boto_todos: TTBXItem
      OnClick = nil
    end
    inherited vent_list_Ocultar_todos: TTBXItem
      OnClick = nil
    end
    inherited vent_list_Invertir_seleccion: TTBXItem
      OnClick = nil
    end
  end
  inherited Eliminar: TQuery
    SQL.Strings = (
      'DELETE FROM GLO_EMPRESAS'
      'WHERE CODI_EMPRESA = :CODI_EMPRESA')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODI_EMPRESA'
        ParamType = ptUnknown
      end>
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_EMPRESA'
    NombreAMostrar = 'Empresa'
    CamposDeBusqueda = 'CONS_EMPRESA'
    TipoGenero = geLa
    TablaMaestra = 'GLO_EMPRESAS'
  end
end

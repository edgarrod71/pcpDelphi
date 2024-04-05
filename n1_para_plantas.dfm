inherited fn1_para_plantas: Tfn1_para_plantas
  Left = 226
  Top = 156
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_PLANTA'
          Filter.Criteria = {00000000}
          object padr_gridCONS_PLANTA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 42
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PLANTA'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object padr_gridCONS_EMPRESA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 45
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_EMPRESA'
          end
          object padr_gridCODI_EMPRESA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 52
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_EMPRESA'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 79
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 84
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
          object padr_gridCODI_PLANTA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PLANTA'
          end
          object padr_gridNOMB_PLANTA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 174
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PLANTA'
          end
          object padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 166
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_EMPRESA'
          end
          object padr_gridCONS_PAIS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 42
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PAIS'
          end
          object padr_gridCODI_PAIS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 52
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PAIS'
          end
          object padr_gridNOMB_PAIS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 105
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PAIS'
          end
          object padr_gridCONS_DEPARTAMENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 63
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_DEPARTAMENTO'
          end
          object padr_gridCODI_DEPARTAMENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_DEPARTAMENTO'
          end
          object padr_gridNOMB_DEPARTAMENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 114
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_DEPARTAMENTO'
          end
          object padr_gridCONS_CIUDAD: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 42
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_CIUDAD'
          end
          object padr_gridCODI_CIUDAD: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 52
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_CIUDAD'
          end
          object padr_gridNOMB_CIUDAD: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_CIUDAD'
          end
          object padr_gridTELE_1: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELE_1'
          end
          object padr_gridTELE_2: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 91
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELE_2'
          end
          object padr_gridDIRECCION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 288
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DIRECCION'
          end
          object padr_gridTELE_FAX: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 114
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELE_FAX'
          end
          object padr_gridTELE_MOVIL: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELE_MOVIL'
          end
          object padr_gridNOMB_RESPONSABLE: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 195
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RESPONSABLE'
          end
          object padr_gridNOMB_SUPERVISOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 174
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_SUPERVISOR'
          end
          object padr_gridTIPO_PLANTA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 54
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIPO_PLANTA'
          end
          object padr_gridNOMB_TIPO_PLANTA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 128
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_TIPO_PLANTA'
          end
          object padr_gridDESCRIPCION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 254
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESCRIPCION'
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    Caption = 'Plantas'
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Plantas'
      Caption = 'Plantas'
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
      'FROM VIS_GLO_PLANTAS'
      'WHERE CONS_PLANTA <> 0'
      'ORDER BY CONS_PLANTA')
    object consultaCONS_PLANTA: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_PLANTA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.CONS_PLANTA'
    end
    object consultaCONS_EMPRESA: TIntegerField
      DisplayLabel = 'No. empresa'
      FieldName = 'CONS_EMPRESA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.CONS_EMPRESA'
    end
    object consultaCODI_EMPRESA: TStringField
      DisplayLabel = 'Cód. empresa'
      FieldName = 'CODI_EMPRESA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.CODI_EMPRESA'
      Size = 12
    end
    object consultaNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.NOMB_EMPRESA'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.USUA_SISTEMA'
    end
    object consultaCODI_PLANTA: TStringField
      DisplayLabel = 'Cód. planta'
      FieldName = 'CODI_PLANTA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.CODI_PLANTA'
      Size = 12
    end
    object consultaNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta'
      FieldName = 'NOMB_PLANTA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.NOMB_PLANTA'
      Size = 60
    end
    object consultaCONS_PAIS: TIntegerField
      DisplayLabel = 'No. país'
      FieldName = 'CONS_PAIS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.CONS_PAIS'
    end
    object consultaCODI_PAIS: TStringField
      DisplayLabel = 'Cód. país'
      FieldName = 'CODI_PAIS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.CODI_PAIS'
      Size = 12
    end
    object consultaNOMB_PAIS: TStringField
      DisplayLabel = 'País'
      FieldName = 'NOMB_PAIS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.NOMB_PAIS'
      Size = 60
    end
    object consultaCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'No. departamento'
      FieldName = 'CONS_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.CONS_DEPARTAMENTO'
    end
    object consultaCODI_DEPARTAMENTO: TStringField
      DisplayLabel = 'Cód. departamento'
      FieldName = 'CODI_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.CODI_DEPARTAMENTO'
      Size = 12
    end
    object consultaNOMB_DEPARTAMENTO: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'NOMB_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.NOMB_DEPARTAMENTO'
      Size = 60
    end
    object consultaCONS_CIUDAD: TIntegerField
      DisplayLabel = 'No. ciudad'
      FieldName = 'CONS_CIUDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.CONS_CIUDAD'
    end
    object consultaCODI_CIUDAD: TStringField
      DisplayLabel = 'Cód. ciudad'
      FieldName = 'CODI_CIUDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.CODI_CIUDAD'
      Size = 12
    end
    object consultaNOMB_CIUDAD: TStringField
      DisplayLabel = 'Ciudad'
      FieldName = 'NOMB_CIUDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.NOMB_CIUDAD'
      Size = 60
    end
    object consultaDIRECCION: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRECCION'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.DIRECCION'
      Size = 240
    end
    object consultaTELE_1: TStringField
      DisplayLabel = 'Teléfono 1'
      FieldName = 'TELE_1'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.TELE_1'
      Size = 30
    end
    object consultaTELE_2: TStringField
      DisplayLabel = 'Teléfono 2'
      FieldName = 'TELE_2'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.TELE_2'
      Size = 30
    end
    object consultaTELE_FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'TELE_FAX'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.TELE_FAX'
      Size = 30
    end
    object consultaTELE_MOVIL: TStringField
      DisplayLabel = 'Móvil'
      FieldName = 'TELE_MOVIL'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.TELE_MOVIL'
      Size = 30
    end
    object consultaNOMB_RESPONSABLE: TStringField
      DisplayLabel = 'Responsable'
      FieldName = 'NOMB_RESPONSABLE'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.NOMB_RESPONSABLE'
      Size = 60
    end
    object consultaNOMB_SUPERVISOR: TStringField
      DisplayLabel = 'Supervisor'
      FieldName = 'NOMB_SUPERVISOR'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.NOMB_SUPERVISOR'
      Size = 60
    end
    object consultaTIPO_PLANTA: TIntegerField
      DisplayLabel = 'Cód. tipo planta'
      FieldName = 'TIPO_PLANTA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.TIPO_PLANTA'
    end
    object consultaNOMB_TIPO_PLANTA: TStringField
      DisplayLabel = 'Tipo planta'
      FieldName = 'NOMB_TIPO_PLANTA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.DESCRIPCION'
      FixedChar = True
      Size = 11
    end
    object consultaDESCRIPCION: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESCRIPCION'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLANTAS.DESCRIPCION'
      Size = 240
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_PLANTA'
    NombreAMostrar = 'Planta'
    CamposDeBusqueda = 'CONS_PLANTA'
    TipoGenero = geLa
    TablaMaestra = 'GLO_PLANTAS'
  end
end

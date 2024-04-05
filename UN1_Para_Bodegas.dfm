inherited FN1_Para_Bodegas: TFN1_Para_Bodegas
  Left = 237
  Top = 155
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_BODEGA'
          Filter.Criteria = {00000000}
          object padr_gridCONS_BODEGA: TdxDBGridMaskColumn
            Visible = False
            Width = 59
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_BODEGA'
          end
          object padr_gridCODI_BODEGA: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_BODEGA'
          end
          object padr_gridNOMB_BODEGA: TdxDBGridMaskColumn
            Width = 185
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_BODEGA'
          end
          object padr_gridDIRECCION: TdxDBGridMaskColumn
            Width = 269
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DIRECCION'
          end
          object padr_gridTELE_1: TdxDBGridMaskColumn
            Width = 98
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELE_1'
          end
          object padr_gridTELE_2: TdxDBGridMaskColumn
            Width = 98
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELE_2'
          end
          object padr_gridFAX: TdxDBGridMaskColumn
            Width = 98
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAX'
          end
          object padr_gridTELE_MOVIL: TdxDBGridMaskColumn
            Width = 98
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELE_MOVIL'
          end
          object padr_gridRESPONSABLE: TdxDBGridMaskColumn
            Width = 199
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RESPONSABLE'
          end
          object padr_gridDESCRIPCION: TdxDBGridMaskColumn
            Width = 269
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESCRIPCION'
          end
          object padr_gridCONS_EMPRESA: TdxDBGridMaskColumn
            Visible = False
            Width = 61
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
            Width = 202
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_EMPRESA'
          end
          object padr_gridCONS_PAIS: TdxDBGridMaskColumn
            Visible = False
            Width = 59
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PAIS'
          end
          object padr_gridCODI_PAIS: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PAIS'
          end
          object padr_gridNOMB_PAIS: TdxDBGridMaskColumn
            Width = 202
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PAIS'
          end
          object padr_gridCONS_DEPARTAMENTO: TdxDBGridMaskColumn
            Visible = False
            Width = 59
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_DEPARTAMENTO'
          end
          object padr_gridCODI_DEPARTAMENTO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_DEPARTAMENTO'
          end
          object padr_gridNOMB_DEPARTAMENTO: TdxDBGridMaskColumn
            Width = 202
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_DEPARTAMENTO'
          end
          object padr_gridCONS_CIUDAD: TdxDBGridMaskColumn
            Visible = False
            Width = 59
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_CIUDAD'
          end
          object padr_gridCODI_CIUDAD: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_CIUDAD'
          end
          object padr_gridNOMB_CIUDAD: TdxDBGridMaskColumn
            Width = 202
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_CIUDAD'
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
      LabelCaption = 'Bodegas'
      Caption = 'Bodegas'
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
      'FROM VIS_GLO_BODEGAS'
      'WHERE CONS_BODEGA > 0'
      'ORDER BY CONS_BODEGA')
    object consultaCONS_BODEGA: TIntegerField
      DisplayLabel = 'No. Bodega'
      FieldName = 'CONS_BODEGA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.CONS_BODEGA'
    end
    object consultaCODI_BODEGA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_BODEGA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.CODI_BODEGA'
      Size = 12
    end
    object consultaNOMB_BODEGA: TStringField
      DisplayLabel = 'Bodega'
      FieldName = 'NOMB_BODEGA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.NOMB_BODEGA'
      Size = 60
    end
    object consultaDIRECCION: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRECCION'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.DIRECCION'
      Size = 254
    end
    object consultaTELE_1: TStringField
      DisplayLabel = 'Teléfono 1'
      FieldName = 'TELE_1'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.TELE_1'
      Size = 30
    end
    object consultaTELE_2: TStringField
      DisplayLabel = 'Teléfono 2'
      FieldName = 'TELE_2'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.TELE_2'
      Size = 30
    end
    object consultaFAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.FAX'
      Size = 30
    end
    object consultaTELE_MOVIL: TStringField
      DisplayLabel = 'Movil'
      FieldName = 'TELE_MOVIL'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.TELE_MOVIL'
      Size = 30
    end
    object consultaRESPONSABLE: TStringField
      DisplayLabel = 'Responsable'
      FieldName = 'RESPONSABLE'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.RESPONSABLE'
      Size = 60
    end
    object consultaDESCRIPCION: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESCRIPCION'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.DESCRIPCION'
      Size = 240
    end
    object consultaCONS_EMPRESA: TIntegerField
      DisplayLabel = 'No. Empresa'
      FieldName = 'CONS_EMPRESA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.CONS_EMPRESA'
    end
    object consultaCODI_EMPRESA: TStringField
      DisplayLabel = 'Cód. Empresa'
      FieldName = 'CODI_EMPRESA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.CONS_EMPRESA1'
      Size = 12
    end
    object consultaNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.NOMB_EMPRESA'
      Size = 60
    end
    object consultaCONS_PAIS: TIntegerField
      DisplayLabel = 'No. País'
      FieldName = 'CONS_PAIS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.CONS_PAIS'
    end
    object consultaCODI_PAIS: TStringField
      DisplayLabel = 'Cód. País'
      FieldName = 'CODI_PAIS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.NOMB_DEPARTAMENTO'
      Size = 12
    end
    object consultaNOMB_PAIS: TStringField
      DisplayLabel = 'País'
      FieldName = 'NOMB_PAIS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.NOMB_PAIS'
      Size = 60
    end
    object consultaCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'No. Dpto.'
      FieldName = 'CONS_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.CONS_DEPARTAMENTO'
    end
    object consultaCODI_DEPARTAMENTO: TStringField
      DisplayLabel = 'Cód. Dpto.'
      FieldName = 'CODI_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.NOMB_DEPARTAMENTO'
      Size = 12
    end
    object consultaNOMB_DEPARTAMENTO: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'NOMB_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.NOMB_DEPARTAMENTO'
      Size = 60
    end
    object consultaCONS_CIUDAD: TIntegerField
      DisplayLabel = 'No. Ciudad'
      FieldName = 'CONS_CIUDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.CONS_CIUDAD'
    end
    object consultaCODI_CIUDAD: TStringField
      DisplayLabel = 'Cód Ciudad'
      FieldName = 'CODI_CIUDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.NOMB_DEPARTAMENTO'
      Size = 12
    end
    object consultaNOMB_CIUDAD: TStringField
      DisplayLabel = 'Ciudad'
      FieldName = 'NOMB_CIUDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.NOMB_CIUDAD'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_BODEGAS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_BODEGA'
    NombreAMostrar = 'Bodega'
    CamposDeBusqueda = 'CONS_BODEGA'
    TipoGenero = geLa
    TablaMaestra = 'GLO_BODEGAS'
  end
end

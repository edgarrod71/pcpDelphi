inherited fn2_come_comp_envio: Tfn2_come_comp_envio
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_COMP_ENVIO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_COMP_ENVIO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 123
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COMP_ENVIO'
          end
          object padr_gridCODI_COMP_ENVIO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COMP_ENVIO'
            SummaryFooterType = cstCount
            SummaryFooterField = 'CONS_COMP_ENVIO'
            SummaryFooterFormat = '0'
          end
          object padr_gridNOMB_COMP_ENVIO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 190
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COMP_ENVIO'
          end
          object padr_gridCONS_PAIS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 82
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PAIS'
          end
          object padr_gridNOMB_PAIS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 91
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PAIS'
          end
          object padr_gridCONS_DEPARTAMENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 130
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_DEPARTAMENTO'
          end
          object padr_gridNOMB_DEPARTAMENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 107
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_DEPARTAMENTO'
          end
          object padr_gridCONS_CIUDAD: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 88
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_CIUDAD'
          end
          object padr_gridNOMB_CIUDAD: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 97
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_CIUDAD'
          end
          object padr_gridDIRECCION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DIRECCION'
          end
          object padr_gridTELEFONO1: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELEFONO1'
          end
          object padr_gridTELEFONO2: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 159
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELEFONO2'
          end
          object padr_gridFAX: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAX'
          end
          object padr_gridCELULAR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CELULAR'
          end
          object padr_gridCORR_ELECTRONICO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 179
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CORR_ELECTRONICO'
          end
          object padr_gridPAGI_WEB: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 1852
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PAGI_WEB'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
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
      LabelCaption = 'Compañías de transporte'
      Caption = 'Compañías de transporte'
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
      'Select *'
      'from vis_glo_come_comp_envio'
      'order by cons_comp_envio')
    object consultaCONS_COMP_ENVIO: TIntegerField
      DisplayLabel = 'Cons. comp. envío'
      FieldName = 'CONS_COMP_ENVIO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_COMP_ENVIO.CONS_COMP_ENVIO'
    end
    object consultaCODI_COMP_ENVIO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_COMP_ENVIO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_COMP_ENVIO.CODI_COMP_ENVIO'
      Size = 12
    end
    object consultaNOMB_COMP_ENVIO: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMB_COMP_ENVIO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_COMP_ENVIO.NOMB_COMP_ENVIO'
      Size = 60
    end
    object consultaCONS_PAIS: TIntegerField
      DisplayLabel = 'Cons. país'
      FieldName = 'CONS_PAIS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_COMP_ENVIO.CONS_PAIS'
    end
    object consultaNOMB_PAIS: TStringField
      DisplayLabel = 'País'
      FieldName = 'NOMB_PAIS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_COMP_ENVIO.NOMB_PAIS'
      Size = 60
    end
    object consultaCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'Cons. departamento'
      FieldName = 'CONS_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_COMP_ENVIO.CONS_DEPARTAMENTO'
    end
    object obs: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'NOMB_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_COMP_ENVIO.NOMB_DEPARTAMENTO'
      Size = 60
    end
    object consultaCONS_CIUDAD: TIntegerField
      DisplayLabel = 'Cons. ciudad'
      FieldName = 'CONS_CIUDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_COMP_ENVIO.CONS_CIUDAD'
    end
    object consultaNOMB_CIUDAD: TStringField
      DisplayLabel = 'Ciudad'
      FieldName = 'NOMB_CIUDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_COMP_ENVIO.NOMB_CIUDAD'
      Size = 60
    end
    object consultaDIRECCION: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRECCION'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_COMP_ENVIO.DIRECCION'
      Size = 240
    end
    object consultaTELEFONO1: TStringField
      DisplayLabel = 'Teléfono'
      FieldName = 'TELEFONO1'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_COMP_ENVIO.TELEFONO1'
    end
    object consultaTELEFONO2: TStringField
      DisplayLabel = 'Teléfono (2)'
      FieldName = 'TELEFONO2'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_COMP_ENVIO.TELEFONO2'
    end
    object consultaFAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_COMP_ENVIO.FAX'
    end
    object consultaCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_COMP_ENVIO.CELULAR'
    end
    object consultaCORR_ELECTRONICO: TStringField
      DisplayLabel = 'Correo electrónico'
      FieldName = 'CORR_ELECTRONICO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_COMP_ENVIO.CORR_ELECTRONICO'
      Size = 240
    end
    object consultaPAGI_WEB: TStringField
      DisplayLabel = 'Página Web'
      FieldName = 'PAGI_WEB'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_COMP_ENVIO.PAGI_WEB'
      Size = 240
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_COMP_ENVIO.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_COMP_ENVIO.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_COMP_ENVIO'
    NombreAMostrar = 'Compañía de transporte'
    CamposDeBusqueda = 'CONS_COMP_ENVIO'
    TablaMaestra = 'GLO_COME_COMP_ENVIO'
  end
end

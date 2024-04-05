inherited fn1_pers_dise_carne: Tfn1_pers_dise_carne
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_PERS_FORM_IDENTIFICACION'
          Filter.Criteria = {00000000}
          object padr_gridCONS_PERS_FORM_IDENTIFICACION: TdxDBGridMaskColumn
            Visible = False
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_FORM_IDENTIFICACION'
          end
          object padr_gridCODI_PERS_FORM_IDENTIFICACION: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERS_FORM_IDENTIFICACION'
          end
          object padr_gridNOMB_PERS_FORM_IDENTIFICACION: TdxDBGridMaskColumn
            Width = 207
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_FORM_IDENTIFICACION'
          end
          object padr_gridColumn7: TdxDBGridCheckColumn
            Width = 66
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACTIVO'
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object padr_gridDESC_PERS_FORM_IDENTIFICACIN: TdxDBGridMaskColumn
            Width = 255
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESC_PERS_FORM_IDENTIFICACIN'
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
        inherited padr_dock_arriba: TTBXDock
          inherited padr_barra: TTBXToolbar
            inherited padr_boto_vinculos: TTBXSubmenuItem
              LinkSubitems = _fMDI.menu_personal
              Visible = True
            end
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Diseño de carné'
      Caption = 'Diseño de carné'
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
      
        'SELECT CONS_PERS_FORM_IDENTIFICACION, CODI_PERS_FORM_IDENTIFICAC' +
        'ION,'
      'NOMB_PERS_FORM_IDENTIFICACION, DESC_PERS_FORM_IDENTIFICACIN,'
      'FECH_SISTEMA, USUA_SISTEMA, ACTIVO'
      'FROM GLO_PERS_FORM_IDENTIFICACION'
      'ORDER BY CONS_PERS_FORM_IDENTIFICACION')
    object consultaCONS_PERS_FORM_IDENTIFICACION: TIntegerField
      DisplayLabel = 'Consecutivo'
      FieldName = 'CONS_PERS_FORM_IDENTIFICACION'
      Origin = 
        'DATA_BASE_PCP.GLO_PERS_FORM_IDENTIFICACION.CONS_PERS_FORM_IDENTI' +
        'FICACION'
    end
    object consultaCODI_PERS_FORM_IDENTIFICACION: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERS_FORM_IDENTIFICACION'
      Origin = 
        'DATA_BASE_PCP.GLO_PERS_FORM_IDENTIFICACION.CODI_PERS_FORM_IDENTI' +
        'FICACION'
      Size = 12
    end
    object consultaNOMB_PERS_FORM_IDENTIFICACION: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMB_PERS_FORM_IDENTIFICACION'
      Origin = 
        'DATA_BASE_PCP.GLO_PERS_FORM_IDENTIFICACION.NOMB_PERS_FORM_IDENTI' +
        'FICACION'
      Size = 60
    end
    object consultaDESC_PERS_FORM_IDENTIFICACIN: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESC_PERS_FORM_IDENTIFICACIN'
      Origin = 
        'DATA_BASE_PCP.GLO_PERS_FORM_IDENTIFICACION.DESC_PERS_FORM_IDENTI' +
        'FICACIN'
      Size = 240
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_FORM_IDENTIFICACION.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_FORM_IDENTIFICACION.USUA_SISTEMA'
    end
    object consultaACTIVO: TIntegerField
      DisplayLabel = 'Activo'
      FieldName = 'ACTIVO'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'CODI_PERS_FORM_IDENTIFICACION'
    NombreAMostrar = 'Carné de personal'
    CamposDeBusqueda = 'CONS_PERS_FORM_IDENTIFICACION'
    TipoGenero = geEl
    TablaMaestra = 'GLO_PERS_FORM_IDENTIFICACION'
  end
end

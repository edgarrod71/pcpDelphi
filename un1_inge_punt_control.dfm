inherited fn1_inge_punt_control: Tfn1_inge_punt_control
  Left = 224
  Top = 34
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_PUNT_CONTROL'
          Filter.Criteria = {00000000}
          object padr_gridCONS_PUNT_CONTROL: TdxDBGridMaskColumn
            Visible = False
            Width = 72
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PUNT_CONTROL'
          end
          object padr_gridCODI_PUNT_CONTROL: TdxDBGridMaskColumn
            Width = 105
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PUNT_CONTROL'
          end
          object padr_gridNOMB_PUNT_CONTROL: TdxDBGridMaskColumn
            Width = 127
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PUNT_CONTROL'
          end
          object padr_gridACTIVO: TdxDBGridCheckColumn
            Width = 45
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACTIVO'
            ValueChecked = '1'
            ValueUnchecked = '-1'
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
      LabelCaption = 'Puntos de control'
      Caption = 'Puntos de control'
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
      'FROM PCP_PUNT_CONTROL'
      'ORDER BY CONS_PUNT_CONTROL')
    object consultaCONS_PUNT_CONTROL: TIntegerField
      DisplayLabel = 'Consecutivo'
      FieldName = 'CONS_PUNT_CONTROL'
      Origin = 'DATA_BASE_PCP.PCP_PUNT_CONTROL.CONS_PUNT_CONTROL'
    end
    object consultaCODI_PUNT_CONTROL: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PUNT_CONTROL'
      Origin = 'DATA_BASE_PCP.PCP_PUNT_CONTROL.CODI_PUNT_CONTROL'
      Size = 12
    end
    object consultaNOMB_PUNT_CONTROL: TStringField
      DisplayLabel = 'Punto de control'
      FieldName = 'NOMB_PUNT_CONTROL'
      Origin = 'DATA_BASE_PCP.PCP_PUNT_CONTROL.NOMB_PUNT_CONTROL'
      Size = 60
    end
    object consultaACTIVO: TIntegerField
      DisplayLabel = 'Activo'
      FieldName = 'ACTIVO'
      Origin = 'DATA_BASE_PCP.PCP_PUNT_CONTROL.ACTIVO'
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.PCP_PUNT_CONTROL.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.PCP_PUNT_CONTROL.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_PUNT_CONTROL'
    NombreAMostrar = 'Punto de control'
    CamposDeBusqueda = 'CONS_PUNT_CONTROL'
    TipoGenero = geEl
    TablaMaestra = 'PCP_PUNT_CONTROL'
  end
end

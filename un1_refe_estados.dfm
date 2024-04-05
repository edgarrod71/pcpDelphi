inherited fn1_refe_estados: Tfn1_refe_estados
  Left = 42
  Top = 47
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_REFE_ESTADO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_REFE_ESTADO: TdxDBGridMaskColumn
            Caption = 'No.'
            HeaderAlignment = taCenter
            Visible = False
            Width = 53
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_ESTADO'
          end
          object padr_gridCODI_REFE_ESTADO: TdxDBGridMaskColumn
            Caption = 'Código'
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_ESTADO'
          end
          object padr_gridNOMB_REFE_ESTADO: TdxDBGridMaskColumn
            Caption = 'Estado'
            HeaderAlignment = taCenter
            Width = 246
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_ESTADO'
          end
          object padr_gridEDIT_MAESTRO1: TdxDBGridCheckColumn
            Caption = 'Maestro'
            HeaderAlignment = taCenter
            MinWidth = 20
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EDIT_MAESTRO'
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object padr_gridMOST_METODOS1: TdxDBGridCheckColumn
            Caption = 'Métodos'
            HeaderAlignment = taCenter
            MinWidth = 20
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MOST_METODOS'
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object padr_gridMOST_ORDE_TRABAJO1: TdxDBGridCheckColumn
            Caption = 'O.T.'
            HeaderAlignment = taCenter
            MinWidth = 20
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MOST_ORDE_TRABAJO'
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object padr_gridMOST_INVE_MATERIALES1: TdxDBGridCheckColumn
            Caption = 'Inventario'
            HeaderAlignment = taCenter
            MinWidth = 20
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MOST_INVE_MATERIALES'
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            Caption = 'Fecha'
            HeaderAlignment = taCenter
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            Caption = 'Usuario'
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
      LabelCaption = 'Estados de productos'
      Caption = 'Estados de productos'
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
      'Select * from GLO_REFE_ESTADOS'
      'where cons_Refe_estado>0'
      'Order by nomb_refe_estado')
    object consultaCONS_REFE_ESTADO: TIntegerField
      FieldName = 'CONS_REFE_ESTADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTADOS.CONS_REFE_ESTADO'
    end
    object consultaCODI_REFE_ESTADO: TStringField
      FieldName = 'CODI_REFE_ESTADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTADOS.CODI_REFE_ESTADO'
      Size = 12
    end
    object consultaNOMB_REFE_ESTADO: TStringField
      FieldName = 'NOMB_REFE_ESTADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTADOS.NOMB_REFE_ESTADO'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTADOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTADOS.USUA_SISTEMA'
    end
    object consultaEDIT_MAESTRO: TIntegerField
      FieldName = 'EDIT_MAESTRO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTADOS.EDIT_MAESTRO'
    end
    object consultaMOST_METODOS: TIntegerField
      FieldName = 'MOST_METODOS'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTADOS.MOST_METODOS'
    end
    object consultaMOST_ORDE_TRABAJO: TIntegerField
      FieldName = 'MOST_ORDE_TRABAJO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTADOS.MOST_ORDE_TRABAJO'
    end
    object consultaMOST_INVE_MATERIALES: TIntegerField
      FieldName = 'MOST_INVE_MATERIALES'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTADOS.MOST_INVE_MATERIALES'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_REFE_ESTADO'
    NombreAMostrar = 'Estado de producto'
    CamposDeBusqueda = 'CONS_REFE_ESTADO'
    TipoGenero = geEl
    TablaMaestra = 'GLO_REFE_ESTADOS'
  end
end

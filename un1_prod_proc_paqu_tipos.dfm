inherited fn1_prod_proc_paqu_tipos: Tfn1_prod_proc_paqu_tipos
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Filter.Criteria = {00000000}
          object padr_gridNOMB_PROD_PAQU_TIPO: TdxDBGridColumn [4]
            HeaderAlignment = taCenter
            Width = 128
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PROD_PAQU_TIPO'
          end
          object padr_gridCONS_PROD_PAQU_TIPO: TdxDBGridColumn
            Caption = 'Cons. tipo distribución'
            HeaderAlignment = taCenter
            Visible = False
            Width = 113
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PROD_PAQU_TIPO'
          end
        end
        inherited padr_pane_sepa_2: TPanel
          TabOrder = 1
        end
        inherited page: TSCLPageControl
          FixedDimension = 19
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Tipo de distribución por proceso'
      Caption = 'Tipo de distribución por proceso'
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
  inherited padr_acciones: TActionList
    inherited padr_acti_nuevo: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'Select * from PCP_PROCESOS'
      'Where cons_proceso > 12')
    object consultaCONS_PROD_PAQU_TIPO: TIntegerField
      FieldName = 'CONS_PROD_PAQU_TIPO'
      Origin = 'DATA_BASE_PCP.PCP_PROCESOS.CONS_PROD_PAQU_TIPO'
    end
    object consultaNOMB_PROD_PAQU_TIPO: TStringField
      DisplayLabel = 'Tipo distribución'
      FieldKind = fkLookup
      FieldName = 'NOMB_PROD_PAQU_TIPO'
      LookupDataSet = quer_prod_paqu_tipos
      LookupKeyFields = 'CONS_PROD_PAQU_TIPO'
      LookupResultField = 'NOMB_PROD_PAQU_TIPO'
      KeyFields = 'CONS_PROD_PAQU_TIPO'
      Size = 60
      Lookup = True
    end
  end
  inherited Variables: TSCLPropiedadesForm
    NombreAMostrar = 'Tipo de distribución por proceso'
  end
  object quer_prod_paqu_tipos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_prod_paqu_tipo, nomb_prod_paqu_tipo'
      'from pcp_prod_paqu_tipos'
      'order by cons_prod_paqu_tipo')
    Left = 32
    Top = 157
    object quer_prod_paqu_tiposCONS_PROD_PAQU_TIPO: TIntegerField
      FieldName = 'CONS_PROD_PAQU_TIPO'
    end
    object quer_prod_paqu_tiposNOMB_PROD_PAQU_TIPO: TStringField
      FieldName = 'NOMB_PROD_PAQU_TIPO'
      Size = 60
    end
  end
end

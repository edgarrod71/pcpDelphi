inherited fn1_prod_dise_tiquetes: Tfn1_prod_dise_tiquetes
  Top = 139
  Width = 812
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Width = 804
  end
  inherited padr_pane_1: TPanel
    Width = 578
    inherited padr_pagina: TdxPageControl
      Width = 568
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Width = 178
          KeyField = 'CONS_USUA_INFORME'
          Filter.Criteria = {00000000}
          object padr_gridCONS_USUA_INFORME: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_USUA_INFORME'
          end
          object padr_gridNOMB_USUA_INFORME: TdxDBGridMaskColumn
            Width = 168
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_USUA_INFORME'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            Width = 155
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
          Width = 568
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 568
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 568
          inherited padr_sepa_new: TShape
            Width = 562
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 373
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    Width = 804
    inherited padr_pane_2: TPanel
      Left = 733
    end
    inherited padr_pane_cerrar: TPanel
      Left = 751
    end
    inherited padr_pane_titulo: TPCPTituloGradiente
      Width = 733
      LabelCaption = 'Diseño tiquetes de control producción'
      Caption = 'Diseño tiquetes de control producción'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 596
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
  inherited padr_dock_top: TTBXDock
    Width = 804
  end
  inherited padr_dock_bottom: TTBXDock
    Width = 804
  end
  inherited padr_dock_right: TTBXDock
    Left = 587
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_USUA_INFORMES'
      'WHERE IDEN_VENTANA = 220500')
    object consultaCONS_USUA_INFORME: TIntegerField
      DisplayLabel = 'Cons.'
      FieldName = 'CONS_USUA_INFORME'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.CONS_USUA_INFORME'
    end
    object consultaNOMB_USUA_INFORME: TStringField
      DisplayLabel = 'Nombre formato'
      FieldName = 'NOMB_USUA_INFORME'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.NOMB_USUA_INFORME'
      Size = 100
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'nomb_usua_informe'
    NombreAMostrar = 'Tiquete de control (producción)'
    CamposDeBusqueda = 'cons_usua_informe'
    TablaMaestra = 'SIS_USUA_INFORMES'
  end
end

inherited FN1_para_informes: TFN1_para_informes
  Left = 269
  Top = 179
  HorzScrollBar.Range = 0
  VertScrollBar.Range = 0
  BorderStyle = bsSingle
  OldCreateOrder = True
  WindowState = wsNormal
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_USUA_INFORME'
          Filter.Criteria = {00000000}
          object padr_gridUSUARIO: TdxDBGridMaskColumn
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUARIO'
          end
          object padr_gridCONS_USUA_INFORME: TdxDBGridMaskColumn
            Visible = False
            Width = 48
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_USUA_INFORME'
          end
          object padr_gridNOMB_USUA_INFORME: TdxDBGridMaskColumn
            Width = 289
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_USUA_INFORME'
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
      LabelCaption = 'Informes'
      Caption = 'Informes'
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
    inherited padr_acti_imprimir: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_nuevo: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_modificar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_eliminar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_aceptar: TAction
      Visible = True
    end
    inherited padr_acti_consultar: TAction
      Enabled = False
      Visible = False
    end
    inherited Padr_Acti_Opci_Impresion: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT U.USUARIO, I.CONS_USUA_INFORME, I.NOMB_USUA_INFORME,'
      ' I.FECH_SISTEMA, I.USUA_SISTEMA'
      'FROM SIS_USUA_MODULOS U, SIS_USUA_INFORMES I'
      'WHERE U.CONS_USUA_MODULO = I.CONS_USUA_MODULO'
      'ORDER BY I.NOMB_USUA_INFORME')
    object consultaUSUARIO: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUARIO'
      Origin = 'DATA_BASE_PCP.SIS_USUA_MODULOS.USUARIO'
    end
    object consultaCONS_USUA_INFORME: TIntegerField
      DisplayLabel = 'Cons. Informe'
      FieldName = 'CONS_USUA_INFORME'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.CONS_USUA_INFORME'
    end
    object consultaNOMB_USUA_INFORME: TStringField
      DisplayLabel = 'Informe'
      FieldName = 'NOMB_USUA_INFORME'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.NOMB_USUA_INFORME'
      Size = 100
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_USUA_INFORME'
    NombreAMostrar = 'Informe'
    CamposDeBusqueda = 'CONS_USUA_INFORME'
    TipoGenero = geEl
    TablaMaestra = 'SIS_USUA_INFORME'
  end
end

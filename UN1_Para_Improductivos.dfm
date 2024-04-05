inherited FN1_Para_Improductivos: TFN1_Para_Improductivos
  Left = 194
  Top = 89
  Width = 812
  Height = 602
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 574
    Width = 804
  end
  inherited padr_pane_1: TPanel
    Width = 578
    Height = 532
    inherited padr_pagina: TdxPageControl
      Width = 568
      Height = 522
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Width = 178
          Height = 446
          KeyField = 'CONS_IMPRODUCTIVO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_IMPRODUCTIVO: TdxDBGridMaskColumn
            Visible = False
            Width = 55
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_IMPRODUCTIVO'
          end
          object padr_gridCODI_IMPRODUCTIVO: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_IMPRODUCTIVO'
          end
          object padr_gridNOMB_IMPRODUCTIVO: TdxDBGridMaskColumn
            Width = 187
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_IMPRODUCTIVO'
          end
          object padr_gridCODI_IMPR_FAMILIA: TdxDBGridMaskColumn
            Visible = False
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_IMPR_FAMILIA'
          end
          object padr_gridNOMB_IMPR_FAMILIA: TdxDBGridMaskColumn
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_IMPR_FAMILIA'
          end
          object padr_gridPORCENTAJE: TdxDBGridColumn
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PORCENTAJE'
          end
          object padr_gridACTIVO1: TdxDBGridCheckColumn
            MinWidth = 20
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACTIVO'
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object padr_gridEFICIENCIA: TdxDBGridCheckColumn
            MinWidth = 20
            Width = 83
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESC_EFICIENCIA'
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object padr_gridINCENTIVOS: TdxDBGridCheckColumn
            MinWidth = 20
            Width = 86
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESC_INCENTIVOS'
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object padr_gridCONS_IMPR_FAMILIA: TdxDBGridMaskColumn
            Visible = False
            Width = 55
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_IMPR_FAMILIA'
          end
          object padr_gridADICIONAL_1: TdxDBGridColumn
            Width = 84
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ADICIONAL_1'
          end
          object padr_gridCONS_VALO_HORA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_VALO_HORA'
          end
          object padr_gridNOMB_FORM_PAGO_VALO_HORA: TdxDBGridMaskColumn
            Width = 127
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_FORM_PAGO_VALO_HORA'
          end
          object padr_gridVALO_HORA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_HORA'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            Width = 184
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
        inherited padr_dock_izqu_grid: TTBXDock
          Height = 446
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 424
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 373
          Height = 446
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 424
              inherited padr_prio_impresion: TdxTreeList
                Height = 198
              end
            end
          end
        end
      end
    end
  end
  inherited padr_dock_izquierda: TTBXDock
    Height = 532
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
      LabelCaption = 'Improductivos'
      Caption = 'Improductivos'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 596
    Height = 532
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
    Top = 565
    Width = 804
  end
  inherited padr_dock_right: TTBXDock
    Left = 587
    Height = 532
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM VIS_GLO_IMPRODUCTIVOS'
      'WHERE CONS_IMPRODUCTIVO <> 0'
      'ORDER BY CONS_IMPRODUCTIVO')
    object consultaCONS_IMPRODUCTIVO: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_IMPRODUCTIVO'
    end
    object consultaCODI_IMPRODUCTIVO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_IMPRODUCTIVO'
      Size = 12
    end
    object consultaNOMB_IMPRODUCTIVO: TStringField
      DisplayLabel = 'Improductivo'
      FieldName = 'NOMB_IMPRODUCTIVO'
      Size = 60
    end
    object consultaCONS_IMPR_FAMILIA: TIntegerField
      DisplayLabel = 'No. Familia'
      FieldName = 'CONS_IMPR_FAMILIA'
    end
    object consultaCODI_IMPR_FAMILIA: TStringField
      DisplayLabel = 'Cód. Familia'
      FieldName = 'CODI_IMPR_FAMILIA'
      Size = 12
    end
    object consultaNOMB_IMPR_FAMILIA: TStringField
      DisplayLabel = 'Familia'
      FieldName = 'NOMB_IMPR_FAMILIA'
      Size = 60
    end
    object consultaACTIVO: TIntegerField
      DisplayLabel = 'Activo'
      FieldName = 'ACTIVO'
      Origin = 'DATA_BASE_PCP.GLO_IMPRODUCTIVOS.ACTIVO'
    end
    object consultaADICIONAL_1: TStringField
      DisplayLabel = 'Código equivalente'
      FieldName = 'ADICIONAL_1'
      Origin = 'DATA_BASE_PCP.GLO_IMPRODUCTIVOS.ADICIONAL_1'
      Size = 12
    end
    object consultaDESC_INCENTIVOS: TIntegerField
      DisplayLabel = 'Desc. incentivos'
      FieldName = 'DESC_INCENTIVOS'
      Origin = 'DATA_BASE_PCP.GLO_IMPRODUCTIVOS.DESC_INCENTIVOS'
    end
    object consultaDESC_EFICIENCIA: TIntegerField
      DisplayLabel = 'Desc. eficiencia'
      FieldName = 'DESC_EFICIENCIA'
      Origin = 'DATA_BASE_PCP.GLO_IMPRODUCTIVOS.DESC_EFICIENCIA'
    end
    object consultaPORCENTAJE: TFloatField
      DisplayLabel = 'Porcentaje'
      FieldName = 'PORCENTAJE'
      DisplayFormat = ',0.00 %'
    end
    object consultaCONS_VALO_HORA: TIntegerField
      DisplayLabel = 'Cons. valor hora producción'
      FieldName = 'CONS_VALO_HORA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_IMPRODUCTIVOS.CONS_VALO_HORA'
    end
    object consultaNOMB_FORM_PAGO_VALO_HORA: TStringField
      DisplayLabel = 'Valor hora producción'
      FieldName = 'NOMB_FORM_PAGO_VALO_HORA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_IMPRODUCTIVOS.NOMB_FORM_PAGO_VALO_HORA'
      Size = 60
    end
    object consultaVALO_HORA: TFloatField
      DisplayLabel = 'Valor hora producción ($)'
      FieldName = 'VALO_HORA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_IMPRODUCTIVOS.VALO_HORA'
      DisplayFormat = ',0.000'
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_IMPRODUCTIVO'
    NombreAMostrar = 'Improductivo'
    CamposDeBusqueda = 'CONS_IMPRODUCTIVO'
    TipoGenero = geEl
    TablaMaestra = 'GLO_IMPRODUCTIVOS'
  end
end

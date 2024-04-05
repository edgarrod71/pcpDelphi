inherited fn1_meto_procesos: Tfn1_meto_procesos
  Left = 67
  Top = 90
  Width = 812
  Height = 560
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 532
    Width = 804
  end
  inherited padr_pane_1: TPanel
    Width = 578
    Height = 490
    inherited padr_pagina: TdxPageControl
      Width = 568
      Height = 480
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Top = 104
          Width = 178
          Height = 352
          KeyField = 'CONS_PROCESO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_PROCESO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 97
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PROCESO'
          end
          object padr_gridCODI_PROCESO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 88
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PROCESO'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object padr_gridNOMB_PROCESO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 146
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PROCESO'
          end
          object padr_gridNOMB_GRUP_PROCESO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_GRUP_PROCESO'
          end
          object padr_gridOBSERVACIONES: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 254
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBSERVACIONES'
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
        object canv: TScrollBox [1]
          Left = 195
          Top = 104
          Width = 178
          Height = 352
          Align = alClient
          Color = clWhite
          ParentColor = False
          TabOrder = 7
          Visible = False
        end
        inherited padr_dock_arriba: TTBXDock
          Width = 568
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 568
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 568
          inherited padr_beve_sepa: TBevel
            Width = 945
          end
          inherited padr_sepa_new: TShape
            Width = 562
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 104
          Height = 352
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 330
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 373
          Top = 104
          Height = 352
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 330
              inherited padr_prio_impresion: TdxTreeList
                Height = 104
              end
            end
          end
        end
        object page: TSCLPageControl
          Left = 0
          Top = 52
          Width = 568
          Height = 52
          ActivePage = page_dependencia
          Align = alTop
          BoldCurrentTab = True
          Color = 16578290
          FlatColor = 10435335
          Margin = 5
          ParentColor = False
          TabColors.Shadow = 15582631
          TabColors.Unselected = 16578290
          TabOrder = 6
          Transparent = True
          OnChange = pageChange
          FixedDimension = 19
          object page_lista: TSCLTabSheet
            Color = 16578290
            Caption = 'Lista de procesos'
          end
          object page_dependencia: TSCLTabSheet
            Color = 16578290
            TabVisible = False
            Caption = 'Diagrama de dependencia'
            Enabled = False
            OnShow = page_dependenciaShow
          end
        end
      end
    end
  end
  inherited padr_dock_izquierda: TTBXDock
    Height = 490
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
      LabelCaption = 'Procesos'
      Caption = 'Procesos'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 596
    Height = 490
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
    Top = 523
    Width = 804
  end
  inherited padr_dock_right: TTBXDock
    Left = 587
    Height = 490
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'Select P.*, G.NOMB_GRUP_PROCESO'
      'from PCP_PROCESOS P, SIS_PCP_GRUP_PROCESOS G'
      'Where P.CONS_GRUP_PROCESO = G.CONS_GRUP_PROCESO'
      ' AND P.cons_proceso > 0')
    object consultaCONS_PROCESO: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_PROCESO'
      Origin = 'DATA_BASE_PCP.PCP_PROCESOS.CONS_PROCESO'
    end
    object consultaCODI_PROCESO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PROCESO'
      Origin = 'DATA_BASE_PCP.PCP_PROCESOS.CODI_PROCESO'
      Size = 12
    end
    object consultaNOMB_PROCESO: TStringField
      DisplayLabel = 'Proceso'
      FieldName = 'NOMB_PROCESO'
      Origin = 'DATA_BASE_PCP.PCP_PROCESOS.NOMB_PROCESO'
      Size = 60
    end
    object consultaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Origin = 'DATA_BASE_PCP.PCP_PROCESOS.OBSERVACIONES'
      Size = 250
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.PCP_PROCESOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.PCP_PROCESOS.USUA_SISTEMA'
    end
    object consultaIZQUIERDA: TIntegerField
      FieldName = 'IZQUIERDA'
      Origin = 'DATA_BASE_PCP.PCP_PROCESOS.IZQUIERDA'
    end
    object consultaARRIBA: TIntegerField
      FieldName = 'ARRIBA'
      Origin = 'DATA_BASE_PCP.PCP_PROCESOS.ARRIBA'
    end
    object consultaCONS_PROC_SIGUIENTE: TIntegerField
      FieldName = 'CONS_PROC_SIGUIENTE'
      Origin = 'DATA_BASE_PCP.PCP_PROCESOS.CONS_PROC_SIGUIENTE'
    end
    object consultaNOMB_GRUP_PROCESO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_GRUP_PROCESO'
      Origin = 'DATA_BASE_PCP.SIS_PCP_GRUP_PROCESOS.NOMB_GRUP_PROCESO'
      Size = 60
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'nomb_proceso'
    NombreAMostrar = 'Proceso'
    CamposDeBusqueda = 'cons_proceso'
    TipoGenero = geEl
    TablaMaestra = 'PCP_PROCESOS'
  end
  object tabl_procesos: TTable
    AfterOpen = doGenerarGrafica
    AfterRefresh = doGenerarGrafica
    DatabaseName = 'data_base_pcp'
    Filter = 'cons_proceso>0'
    Filtered = True
    TableName = 'PCP_PROCESOS'
    Left = 890
    Top = 2
  end
end

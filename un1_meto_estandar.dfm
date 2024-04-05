inherited fn1_meto_estandar: Tfn1_meto_estandar
  Left = -50
  Top = 106
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          DefaultLayout = False
          KeyField = 'CONS_OPER_COSTURA'
          SummaryGroups = <
            item
              DefaultGroup = False
              SummaryItems = <>
              Name = 'padr_summary_grid'
            end
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  ColumnName = 'padr_gridCONS_OPER_COSTURA'
                  SummaryFormat = '0'
                  SummaryType = cstCount
                end>
              Name = 'padr_gridSummaryGroup2'
            end>
          Filter.Criteria = {00000000}
          object padr_gridTIEN_METODO: TdxDBGridImageColumn
            Alignment = taRightJustify
            Caption = 'C'
            HeaderAlignment = taCenter
            MinWidth = 16
            Width = 31
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIEM_CRONOMETRO'
            Images = _fMDI.imag_varias
            ImageIndexes.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10'
              '11'
              '12'
              '13'
              '14'
              '15'
              '16'
              '17'
              '18'
              '19'
              '20'
              '21')
            Values.Strings = (
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              '1')
            DisableFilter = True
          end
          object padr_gridCONS_OPER_COSTURA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 51
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_OPER_COSTURA'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object padr_gridCODI_OPER_COSTURA: TdxDBGridColumn
            HeaderAlignment = taCenter
            Width = 89
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_OPER_COSTURA'
          end
          object padr_gridNOMB_OPER_COSTURA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 175
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_OPER_COSTURA'
          end
          object padr_gridCONS_PROCESO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 62
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PROCESO'
          end
          object padr_gridCODI_PROCESO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PROCESO'
          end
          object padr_gridNOMB_PROCESO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 105
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PROCESO'
          end
          object padr_gridCONS_OPER_COST_TIPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 93
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_OPER_COST_TIPO'
          end
          object padr_gridCODI_OPER_COST_TIPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 98
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_OPER_COST_TIPO'
          end
          object padr_gridNOMB_OPER_COST_TIPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 126
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_OPER_COST_TIPO'
          end
          object padr_gridCONS_COMP_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COMP_GRUPO'
          end
          object padr_gridCODI_COMP_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COMP_GRUPO'
          end
          object padr_gridNOMB_COMP_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 143
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COMP_GRUPO'
          end
          object padr_gridTIEM_ASIGNADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIEM_ASIGNADO'
          end
          object padr_gridTIEM_2: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIEM_2'
          end
          object padr_gridIMAGEN: TdxDBGridBlobColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'IMAGEN'
            BlobKind = bkPict
          end
          object padr_gridCOST_OPERACION: TdxDBGridColumn
            HeaderAlignment = taCenter
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COST_OPERACION'
          end
          object padr_gridDESCRIPCION: TdxDBGridBlobColumn
            HeaderAlignment = taCenter
            Width = 724
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESCRIPCION'
            BlobKind = bkMemo
          end
          object padr_gridPUNT_POR_CENTIMETRO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PUNT_POR_CENTIMETRO'
          end
          object padr_gridSUPL_CONSTANTE: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SUPL_CONSTANTE'
          end
          object padr_gridSUPL_VARIABLE: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SUPL_VARIABLE'
          end
          object padr_gridLARG_COSTURA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LARG_COSTURA'
          end
          object padr_gridCOMP_LARG_COSTURA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 105
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COMP_LARG_COSTURA'
          end
          object padr_gridCONS_RECU_FAMILIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 98
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_FAMILIA'
          end
          object padr_gridCODI_RECU_FAMILIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 103
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_FAMILIA'
          end
          object padr_gridNOMB_RECU_FAMILIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 113
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_FAMILIA'
          end
          object padr_gridREVO_POR_MINUTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REVO_POR_MINUTO'
          end
          object padr_gridSUPL_MAQUINA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SUPL_MAQUINA'
          end
          object padr_gridCONS_ACCE_FAMILIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 107
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_ACCE_FAMILIA'
          end
          object padr_gridMODI_PUES_TRABAJO: TdxDBGridBlobColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 1431
            BandIndex = 0
            RowIndex = 0
            HeaderMaxLineCount = 0
            FieldName = 'MODI_PUES_TRABAJO'
            BlobKind = bkMemo
          end
          object padr_gridIMAG_PUES_TRABAJO: TdxDBGridBlobColumn
            Alignment = taLeftJustify
            HeaderAlignment = taCenter
            MinWidth = 16
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'IMAG_PUES_TRABAJO'
            BlobKind = bkPict
          end
          object padr_gridAJUS_IMAG_PUES_TRABAJO: TdxDBGridCheckColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AJUS_IMAG_PUES_TRABAJO'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object padr_gridIMAG_DIST_PUES_TRABAJO: TdxDBGridBlobColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 131
            BandIndex = 0
            RowIndex = 0
            HeaderMaxLineCount = 0
            FieldName = 'IMAG_DIST_PUES_TRABAJO'
            BlobKind = bkMemo
          end
          object padr_gridSECU_MOVIMIENTOS: TdxDBGridBlobColumn
            HeaderAlignment = taCenter
            Width = 120
            BandIndex = 0
            RowIndex = 0
            HeaderMaxLineCount = 0
            FieldName = 'SECU_MOVIMIENTOS'
            BlobKind = bkMemo
          end
          object padr_gridAJUS_IMAG_DIST_PUES_TRABAJO: TdxDBGridCheckColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AJUS_IMAG_DIST_PUES_TRABAJO'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
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
        inherited padr_dock_impresion: TTBXDock
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_fram_opci_impresion: TPCPFrame
              Left = 152
              Top = 72
            end
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Creación de operaciones'
      Caption = 'Creación de operaciones'
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
    OnCalcFields = consultaCalcFields
    SQL.Strings = (
      'Select * from'
      'VIS_PCP_OPER_COSTURA'
      'order by cons_oper_costura')
    object consultaCONS_OPER_COSTURA: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_OPER_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_OPER_COSTURA'
    end
    object consultaNOMB_OPER_COSTURA: TStringField
      DisplayLabel = 'Nombre operación'
      FieldName = 'NOMB_OPER_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_OPER_COSTURA'
      Size = 30
    end
    object consultaCONS_PROCESO: TIntegerField
      DisplayLabel = 'No. proceso'
      FieldName = 'CONS_PROCESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_PROCESO'
    end
    object consultaCODI_PROCESO: TStringField
      DisplayLabel = 'Cód. proceso'
      FieldName = 'CODI_PROCESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_PROCESO'
      Size = 12
    end
    object consultaNOMB_PROCESO: TStringField
      DisplayLabel = 'Proceso'
      FieldName = 'NOMB_PROCESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_PROCESO'
      Size = 60
    end
    object consultaCONS_OPER_COST_TIPO: TIntegerField
      DisplayLabel = 'No. tipo operación'
      FieldName = 'CONS_OPER_COST_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_OPER_COST_TIPO'
    end
    object consultaCODI_OPER_COST_TIPO: TStringField
      DisplayLabel = 'Cód. tipo operación'
      FieldName = 'CODI_OPER_COST_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_OPER_COST_TIPO'
      Size = 12
    end
    object consultaNOMB_OPER_COST_TIPO: TStringField
      DisplayLabel = 'Tipo operación'
      FieldName = 'NOMB_OPER_COST_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_OPER_COST_TIPO'
      Size = 60
    end
    object consultaCONS_COMP_GRUPO: TIntegerField
      DisplayLabel = 'No. grupo componente'
      FieldName = 'CONS_COMP_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_COMP_GRUPO'
    end
    object consultaCODI_COMP_GRUPO: TStringField
      DisplayLabel = 'Cód. grupo componente'
      FieldName = 'CODI_COMP_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_COMP_GRUPO'
      Size = 12
    end
    object consultaNOMB_COMP_GRUPO: TStringField
      DisplayLabel = 'Grupo componente'
      FieldName = 'NOMB_COMP_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_COMP_GRUPO'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.USUA_SISTEMA'
    end
    object consultaPUNT_POR_CENTIMETRO: TFloatField
      DisplayLabel = 'P.P.C.'
      FieldName = 'PUNT_POR_CENTIMETRO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.PUNT_POR_CENTIMETRO'
      DisplayFormat = ',0.00'
    end
    object consultaSUPL_CONSTANTE: TSmallintField
      DisplayLabel = '% SuplC'
      FieldName = 'SUPL_CONSTANTE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.SUPL_CONSTANTE'
    end
    object consultaSUPL_VARIABLE: TSmallintField
      DisplayLabel = '% SuplV'
      FieldName = 'SUPL_VARIABLE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.SUPL_VARIABLE'
    end
    object consultaLARG_COSTURA: TIntegerField
      DisplayLabel = 'L.C.'
      FieldName = 'LARG_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.LARG_COSTURA'
      DisplayFormat = ',0.00'
    end
    object consultaCOMP_LARG_COSTURA: TStringField
      DisplayLabel = 'Composición L.C.'
      FieldName = 'COMP_LARG_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.COMP_LARG_COSTURA'
      Size = 60
    end
    object consultaCONS_RECU_FAMILIA: TIntegerField
      DisplayLabel = 'No. familia máquina'
      FieldName = 'CONS_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_RECU_FAMILIA'
    end
    object consultaCODI_RECU_FAMILIA: TStringField
      DisplayLabel = 'Cód. familia máquina'
      FieldName = 'CODI_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_RECU_FAMILIA'
      Size = 12
    end
    object consultaNOMB_RECU_FAMILIA: TStringField
      DisplayLabel = 'Familia de máquina'
      FieldName = 'NOMB_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_RECU_FAMILIA'
      Size = 60
    end
    object consultaREVO_POR_MINUTO: TIntegerField
      DisplayLabel = 'R.P.M.'
      FieldName = 'REVO_POR_MINUTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.REVO_POR_MINUTO'
    end
    object consultaSUPL_MAQUINA: TSmallintField
      DisplayLabel = '% SuplM'
      FieldName = 'SUPL_MAQUINA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.SUPL_MAQUINA'
    end
    object consultaCONS_ACCE_FAMILIA: TIntegerField
      DisplayLabel = 'No. Familia accesorio'
      FieldName = 'CONS_ACCE_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_ACCE_FAMILIA'
    end
    object consultaIMAG_PUES_TRABAJO: TBlobField
      DisplayLabel = 'Puesto trabajo'
      FieldName = 'IMAG_PUES_TRABAJO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.IMAG_PUES_TRABAJO'
      BlobType = ftBlob
      Size = 1
    end
    object consultaAJUS_IMAG_PUES_TRABAJO: TIntegerField
      DisplayLabel = 'Ajustar puesto trabajo'
      FieldName = 'AJUS_IMAG_PUES_TRABAJO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.AJUS_IMAG_PUES_TRABAJO'
    end
    object consultaIMAG_DIST_PUES_TRABAJO: TBlobField
      DisplayLabel = 'Distribución puesto trabajo'
      FieldName = 'IMAG_DIST_PUES_TRABAJO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.IMAG_DIST_PUES_TRABAJO'
      BlobType = ftBlob
      Size = 1
    end
    object consultaAJUS_IMAG_DIST_PUES_TRABAJO: TIntegerField
      DisplayLabel = 'Ajustar distr. puesto trabajo'
      FieldName = 'AJUS_IMAG_DIST_PUES_TRABAJO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.AJUS_IMAG_DIST_PUES_TRABAJO'
    end
    object consultaTIEM_CRONOMETRO: TIntegerField
      DisplayLabel = 'Método'
      FieldName = 'TIEM_CRONOMETRO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.TIEM_CRONOMETRO'
    end
    object consultaTIEM_2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TIEM_2'
      Calculated = True
    end
    object consultaTIEM_ASIGNADO: TFloatField
      DisplayLabel = 'TMU'
      FieldName = 'TIEM_ASIGNADO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.TIEM_ASIGNADO'
    end
    object consultaCODI_OPER_COSTURA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_OPER_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_OPER_COSTURA'
      Size = 12
    end
    object consultaCOST_OPERACION: TFloatField
      DisplayLabel = 'Valor hora producción'
      FieldName = 'COST_OPERACION'
      DisplayFormat = ',0.00'
    end
    object consultaDESCRIPCION: TMemoField
      DisplayLabel = 'Descripción'
      DisplayWidth = 5000
      FieldName = 'DESCRIPCION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.DESCRIPCION'
      BlobType = ftBlob
      Size = 5000
    end
    object consultaMODI_PUES_TRABAJO: TMemoField
      DisplayLabel = 'Modificaciones Puesto trabajo'
      FieldName = 'MODI_PUES_TRABAJO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.MODI_PUES_TRABAJO'
      BlobType = ftMemo
      Size = 5000
    end
    object consultaSECU_MOVIMIENTOS: TMemoField
      DisplayLabel = 'Secuencia movimientos'
      FieldName = 'SECU_MOVIMIENTOS'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.SECU_MOVIMIENTOS'
      BlobType = ftMemo
      Size = 5000
    end
    object consultaIMAGEN: TBlobField
      DisplayLabel = 'Imágen'
      FieldName = 'IMAGEN'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'nomb_oper_costura'
    NombreAMostrar = 'Operación de costura'
    CamposDeBusqueda = 'cons_oper_costura'
    TipoGenero = geLa
    TablaMaestra = 'PCP_OPER_COSTURA'
  end
end

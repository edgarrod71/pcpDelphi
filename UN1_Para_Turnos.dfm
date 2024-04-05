inherited FN1_Para_Turnos: TFN1_Para_Turnos
  Left = 188
  Top = 152
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          DefaultLayout = False
          KeyField = 'CONS_TURNO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_TURNO: TdxDBGridMaskColumn
            Visible = False
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_TURNO'
          end
          object padr_gridCODI_TURNO: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_TURNO'
          end
          object padr_gridTIPO: TdxDBGridMaskColumn
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIPO'
          end
          object padr_gridDESCRIPCION: TdxDBGridMaskColumn
            Width = 249
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESCRIPCION'
          end
          object padr_gridLUNES: TdxDBGridColumn
            Width = 250
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LUNES'
          end
          object padr_gridMARTES: TdxDBGridColumn
            Width = 250
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MARTES'
          end
          object padr_gridMIERCOLES: TdxDBGridColumn
            Width = 250
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MIERCOLES'
          end
          object padr_gridJUEVES: TdxDBGridColumn
            Width = 250
            BandIndex = 0
            RowIndex = 0
            FieldName = 'JUEVES'
          end
          object padr_gridVIERNES: TdxDBGridColumn
            Width = 250
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VIERNES'
          end
          object padr_gridSABADO: TdxDBGridColumn
            Width = 250
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SABADO'
          end
          object padr_gridDOMINGO: TdxDBGridColumn
            Width = 250
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DOMINGO'
          end
          object padr_gridCONTRATADOS: TdxDBGridColumn
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONTRATADOS'
          end
          object padr_gridDISPONIBLES: TdxDBGridColumn
            Width = 66
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DISPONIBLES'
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
      LabelCaption = 'Turnos'
      Caption = 'Turnos'
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
      'SELECT T.*, '
      '  CASE T.TIPO_TURNO'
      '     WHEN 0 THEN "Completo"'
      '     WHEN 1 THEN "Mañana"'
      '     WHEN 2 THEN "Tarde"'
      '     WHEN 3 THEN "Noche"'
      '     ELSE "Desconocido"'
      '  End AS TIPO'
      'FROM GLO_TURNOS T'
      'ORDER BY T.CONS_TURNO')
    object consultaCONS_TURNO: TIntegerField
      DisplayLabel = 'No. Turno'
      FieldName = 'CONS_TURNO'
      Origin = 'DATA_BASE_PCP.GLO_TURNOS.CONS_TURNO'
    end
    object consultaCODI_TURNO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_TURNO'
      Origin = 'DATA_BASE_PCP.GLO_TURNOS.CODI_TURNO'
      Size = 12
    end
    object consultaTIPO: TStringField
      DisplayLabel = 'Tipo Turno'
      FieldName = 'TIPO'
      FixedChar = True
      Size = 11
    end
    object consultaDESCRIPCION: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESCRIPCION'
      Origin = 'DATA_BASE_PCP.GLO_TURNOS.DESCRIPCION'
      Size = 240
    end
    object consultaLUNES: TStringField
      DisplayLabel = 'Lunes'
      FieldKind = fkCalculated
      FieldName = 'LUNES'
      Size = 60
      Calculated = True
    end
    object consultaMARTES: TStringField
      DisplayLabel = 'Martes'
      FieldKind = fkCalculated
      FieldName = 'MARTES'
      Size = 60
      Calculated = True
    end
    object consultaMIERCOLES: TStringField
      DisplayLabel = 'Miercoles'
      FieldKind = fkCalculated
      FieldName = 'MIERCOLES'
      Size = 60
      Calculated = True
    end
    object consultaJUEVES: TStringField
      DisplayLabel = 'Jueves'
      FieldKind = fkCalculated
      FieldName = 'JUEVES'
      Size = 60
      Calculated = True
    end
    object consultaVIERNES: TStringField
      DisplayLabel = 'Viernes'
      FieldKind = fkCalculated
      FieldName = 'VIERNES'
      Size = 60
      Calculated = True
    end
    object consultaSABADO: TStringField
      DisplayLabel = 'Sábado'
      FieldKind = fkCalculated
      FieldName = 'SABADO'
      Size = 60
      Calculated = True
    end
    object consultaDOMINGO: TStringField
      DisplayLabel = 'Domingo'
      FieldKind = fkCalculated
      FieldName = 'DOMINGO'
      Size = 60
      Calculated = True
    end
    object consultaCONTRATADOS: TIntegerField
      DisplayLabel = 'Total Con.'
      FieldKind = fkCalculated
      FieldName = 'CONTRATADOS'
      DisplayFormat = ',0'
      Calculated = True
    end
    object consultaDISPONIBLES: TIntegerField
      DisplayLabel = 'Total Disp.'
      FieldKind = fkCalculated
      FieldName = 'DISPONIBLES'
      DisplayFormat = ',0'
      Calculated = True
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_TURNOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_TURNOS.USUA_SISTEMA'
    end
    object consultaTIPO_TURNO: TIntegerField
      FieldName = 'TIPO_TURNO'
    end
    object consultaLUNE_DESD_1: TDateTimeField
      FieldName = 'LUNE_DESD_1'
    end
    object consultaLUNE_HAST_1: TDateTimeField
      FieldName = 'LUNE_HAST_1'
    end
    object consultaLUNE_DESD_2: TDateTimeField
      FieldName = 'LUNE_DESD_2'
    end
    object consultaLUNE_HAST_2: TDateTimeField
      FieldName = 'LUNE_HAST_2'
    end
    object consultaLUNE_MINUTOS: TIntegerField
      FieldName = 'LUNE_MINUTOS'
    end
    object consultaMART_DESD_1: TDateTimeField
      FieldName = 'MART_DESD_1'
    end
    object consultaMART_HAST_1: TDateTimeField
      FieldName = 'MART_HAST_1'
    end
    object consultaMART_DESD_2: TDateTimeField
      FieldName = 'MART_DESD_2'
    end
    object consultaMART_HAST_2: TDateTimeField
      FieldName = 'MART_HAST_2'
    end
    object consultaMART_MINUTOS: TIntegerField
      FieldName = 'MART_MINUTOS'
    end
    object consultaMIER_DESD_1: TDateTimeField
      FieldName = 'MIER_DESD_1'
    end
    object consultaMIER_HAST_1: TDateTimeField
      FieldName = 'MIER_HAST_1'
    end
    object consultaMIER_DESD_2: TDateTimeField
      FieldName = 'MIER_DESD_2'
    end
    object consultaMIER_HAST_2: TDateTimeField
      FieldName = 'MIER_HAST_2'
    end
    object consultaMIER_MINUTOS: TIntegerField
      FieldName = 'MIER_MINUTOS'
    end
    object consultaJUEV_DESD_1: TDateTimeField
      FieldName = 'JUEV_DESD_1'
    end
    object consultaJUEV_HAST_1: TDateTimeField
      FieldName = 'JUEV_HAST_1'
    end
    object consultaJUEV_DESD_2: TDateTimeField
      FieldName = 'JUEV_DESD_2'
    end
    object consultaJUEV_HAST_2: TDateTimeField
      FieldName = 'JUEV_HAST_2'
    end
    object consultaJUEV_MINUTOS: TIntegerField
      FieldName = 'JUEV_MINUTOS'
    end
    object consultaVIER_DESD_1: TDateTimeField
      FieldName = 'VIER_DESD_1'
    end
    object consultaVIER_HAST_1: TDateTimeField
      FieldName = 'VIER_HAST_1'
    end
    object consultaVIER_DESD_2: TDateTimeField
      FieldName = 'VIER_DESD_2'
    end
    object consultaVIER_HAST_2: TDateTimeField
      FieldName = 'VIER_HAST_2'
    end
    object consultaVIER_MINUTOS: TIntegerField
      FieldName = 'VIER_MINUTOS'
    end
    object consultaSABA_DESD_1: TDateTimeField
      FieldName = 'SABA_DESD_1'
    end
    object consultaSABA_HAST_1: TDateTimeField
      FieldName = 'SABA_HAST_1'
    end
    object consultaSABA_DESD_2: TDateTimeField
      FieldName = 'SABA_DESD_2'
    end
    object consultaSABA_HAST_2: TDateTimeField
      FieldName = 'SABA_HAST_2'
    end
    object consultaSABA_MINUTOS: TIntegerField
      FieldName = 'SABA_MINUTOS'
    end
    object consultaDOMI_DESD_1: TDateTimeField
      FieldName = 'DOMI_DESD_1'
    end
    object consultaDOMI_HAST_1: TDateTimeField
      FieldName = 'DOMI_HAST_1'
    end
    object consultaDOMI_DESD_2: TDateTimeField
      FieldName = 'DOMI_DESD_2'
    end
    object consultaDOMI_HAST_2: TDateTimeField
      FieldName = 'DOMI_HAST_2'
    end
    object consultaDOMI_MINUTOS: TIntegerField
      FieldName = 'DOMI_MINUTOS'
    end
    object consultaPRIM_DESCANSO: TIntegerField
      FieldName = 'PRIM_DESCANSO'
    end
    object consultaSEGU_DESCANSO: TIntegerField
      FieldName = 'SEGU_DESCANSO'
    end
    object consultaLUNE_DISPONIBLES: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'LUNE_DISPONIBLES'
      Calculated = True
    end
    object consultaMART_DISPONIBLES: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'MART_DISPONIBLES'
      Calculated = True
    end
    object consultaMIER_DISPONIBLES: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'MIER_DISPONIBLES'
      Calculated = True
    end
    object consultaJUEV_DISPONIBLES: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'JUEV_DISPONIBLES'
      Calculated = True
    end
    object consultaVIER_DISPONIBLES: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'VIER_DISPONIBLES'
      Calculated = True
    end
    object consultaSABA_DISPONIBLES: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'SABA_DISPONIBLES'
      Calculated = True
    end
    object consultaDOMI_DISPONIBLES: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'DOMI_DISPONIBLES'
      Calculated = True
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'CODI_TURNO'
    NombreAMostrar = 'Turno'
    CamposDeBusqueda = 'CONS_TURNO'
    TipoGenero = geEl
    TablaMaestra = 'GLO_TURNOS'
  end
end

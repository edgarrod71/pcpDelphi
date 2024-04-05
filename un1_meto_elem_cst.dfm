inherited fn1_meto_elem_cst: Tfn1_meto_elem_cst
  Left = 60
  Top = 75
  Caption = 'fn1_meto_elem_cst'
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CODI_ELEM_CST'
          SummaryGroups = <
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  SummaryFormat = '0'
                  SummaryType = cstCount
                end>
              Name = 'padr_gridSummaryGroup1'
            end>
          Filter.Criteria = {00000000}
          object padr_gridCODI_ELEM_CST: TdxDBGridMaskColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 101
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_ELEM_CST'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object padr_gridNOMB_ELEM_CST: TdxDBGridMaskColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 186
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_ELEM_CST'
          end
          object padr_gridCONS_CST_DIFICULTAD: TdxDBGridMaskColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Visible = False
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_CST_DIFICULTAD'
          end
          object padr_gridCODI_CST_DIFICULTAD: TdxDBGridMaskColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Visible = False
            Width = 89
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_CST_DIFICULTAD'
          end
          object padr_gridNOMB_CST_DIFICULTAD: TdxDBGridMaskColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 95
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_CST_DIFICULTAD'
          end
          object padr_gridCONS_CST_DISTANCIA: TdxDBGridMaskColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Visible = False
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_CST_DISTANCIA'
          end
          object padr_gridCODI_CST_DISTANCIA: TdxDBGridMaskColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Visible = False
            Width = 89
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_CST_DISTANCIA'
          end
          object padr_gridNOMB_CST_DISTANCIA: TdxDBGridMaskColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 93
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_CST_DISTANCIA'
          end
          object padr_gridCONS_CST_POSICIONAMIENTO: TdxDBGridMaskColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Visible = False
            Width = 119
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_CST_POSICIONAMIENTO'
          end
          object padr_gridCODI_CST_POSICIONAMIENTO: TdxDBGridMaskColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Visible = False
            Width = 125
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_CST_POSICIONAMIENTO'
          end
          object padr_gridNOMB_CST_POSICIONAMIENTO: TdxDBGridMaskColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_CST_POSICIONAMIENTO'
          end
          object padr_gridCONS_CST_PESO: TdxDBGridColumn
            Visible = False
            Width = 63
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_CST_PESO'
          end
          object padr_gridCODI_CST_PESO: TdxDBGridColumn
            Visible = False
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_CST_PESO'
          end
          object padr_gridNOMB_CST_PESO: TdxDBGridColumn
            Width = 104
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_CST_PESO'
          end
          object padr_gridTIEM_CST: TdxDBGridMaskColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 79
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIEM_CST'
          end
          object padr_gridTIEM_CST_2: TdxDBGridColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIEM_CST_2'
          end
          object padr_gridIMAGEN: TdxDBGridBlobColumn
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'IMAGEN'
          end
          object padr_gridNOMB_ANALISTA: TdxDBGridMaskColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 165
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_ANALISTA'
          end
          object padr_gridDESCRIPCION: TdxDBGridMaskColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 195
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESCRIPCION'
          end
          object padr_gridFECH_MODIFICACION: TdxDBGridDateColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_MODIFICACION'
          end
          object padr_gridUSUA_MODIFICACION: TdxDBGridMaskColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Visible = False
            Width = 144
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_MODIFICACION'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Creación de elementos C.S.T.'
      Caption = 'Creación de elementos C.S.T.'
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
      'Select * from '
      'VIS_PCP_ELEM_CST'
      'Where Softconf = -1'
      'Order by codi_elem_cst')
    object consultaCODI_ELEM_CST: TStringField
      DisplayLabel = 'Código CST'
      FieldName = 'CODI_ELEM_CST'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.CODI_ELEM_CST'
      Size = 12
    end
    object consultaNOMB_ELEM_CST: TStringField
      DisplayLabel = 'Nombre elemento'
      FieldName = 'NOMB_ELEM_CST'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.NOMB_ELEM_CST'
      Size = 60
    end
    object consultaCONS_CST_DIFICULTAD: TIntegerField
      DisplayLabel = 'No. dificultad'
      FieldName = 'CONS_CST_DIFICULTAD'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.CONS_CST_DIFICULTAD'
    end
    object consultaCODI_CST_DIFICULTAD: TStringField
      DisplayLabel = 'Cód. dificultad'
      FieldName = 'CODI_CST_DIFICULTAD'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.CODI_CST_DIFICULTAD'
      Size = 12
    end
    object consultaNOMB_CST_DIFICULTAD: TStringField
      DisplayLabel = 'Dificultad'
      FieldName = 'NOMB_CST_DIFICULTAD'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.NOMB_CST_DIFICULTAD'
      Size = 60
    end
    object consultaCONS_CST_DISTANCIA: TIntegerField
      DisplayLabel = 'No. distancia'
      FieldName = 'CONS_CST_DISTANCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.CONS_CST_DISTANCIA'
    end
    object consultaCODI_CST_DISTANCIA: TStringField
      DisplayLabel = 'Cód. distancia'
      FieldName = 'CODI_CST_DISTANCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.CODI_CST_DISTANCIA'
      Size = 12
    end
    object consultaNOMB_CST_DISTANCIA: TStringField
      DisplayLabel = 'Distancia'
      FieldName = 'NOMB_CST_DISTANCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.NOMB_CST_DISTANCIA'
      Size = 60
    end
    object consultaCONS_CST_POSICIONAMIENTO: TIntegerField
      DisplayLabel = 'No. posicionamiento'
      FieldName = 'CONS_CST_POSICIONAMIENTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.CONS_CST_POSICIONAMIENTO'
    end
    object consultaCODI_CST_POSICIONAMIENTO: TStringField
      DisplayLabel = 'Cód. posicionamiento'
      FieldName = 'CODI_CST_POSICIONAMIENTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.CODI_CST_POSICIONAMIENTO'
      Size = 12
    end
    object consultaNOMB_CST_POSICIONAMIENTO: TStringField
      DisplayLabel = 'Posicionamiento'
      FieldName = 'NOMB_CST_POSICIONAMIENTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.NOMB_CST_POSICIONAMIENTO'
      Size = 60
    end
    object consultaCONS_CST_PESO: TIntegerField
      DisplayLabel = 'No. peso'
      FieldName = 'CONS_CST_PESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.CONS_CST_PESO'
    end
    object consultaCODI_CST_PESO: TStringField
      DisplayLabel = 'Cód. peso'
      FieldName = 'CODI_CST_PESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.CODI_CST_PESO'
      Size = 12
    end
    object consultaNOMB_CST_PESO: TStringField
      DisplayLabel = 'Peso/esfuerzo'
      FieldName = 'NOMB_CST_PESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.NOMB_CST_PESO'
      Size = 60
    end
    object consultaTIEM_CST: TFloatField
      DisplayLabel = 'Tiempo TMU'
      FieldName = 'TIEM_CST'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.TIEM_CST'
    end
    object consultaNOMB_ANALISTA: TStringField
      DisplayLabel = 'Analista'
      FieldName = 'NOMB_ANALISTA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.NOMB_ANALISTA'
      Size = 60
    end
    object consultaDESCRIPCION: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESCRIPCION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.DESCRIPCION'
      Size = 240
    end
    object consultaFECH_MODIFICACION: TDateTimeField
      DisplayLabel = 'Fecha Modificación'
      FieldName = 'FECH_MODIFICACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.FECH_MODIFICACION'
    end
    object consultaUSUA_MODIFICACION: TStringField
      DisplayLabel = 'Usuario modificación'
      FieldName = 'USUA_MODIFICACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.USUA_MODIFICACION'
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.USUA_SISTEMA'
    end
    object consultaTIEM_CST_2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TIEM_CST_2'
      DisplayFormat = ',0.000'
      Calculated = True
    end
    object consultaIMAGEN: TBlobField
      DisplayLabel = 'Imágen gesto'
      FieldName = 'IMAGEN'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'nomb_elem_cst'
    NombreAMostrar = 'Elemento CST'
    CamposDeBusqueda = 'codi_elem_cst'
    TablaMaestra = 'PCP_ELEM_CST'
  end
end

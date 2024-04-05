inherited fn1_referencias: Tfn1_referencias
  Left = 104
  Top = 56
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_REFERENCIA'
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
                  ColumnName = 'padr_gridCODI_REFERENCIA'
                  SummaryFormat = '0'
                  SummaryType = cstCount
                end>
              Name = 'padr_gridSummaryGroup2'
            end>
          Filter.Criteria = {00000000}
          OnCustomDrawCell = padr_gridCustomDrawCell
          object padr_gridCONS_REFERENCIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFERENCIA'
          end
          object padr_gridCODI_REFERENCIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 92
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFERENCIA'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object padr_gridCONS_REFE_TEMPORADA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_TEMPORADA'
          end
          object padr_gridCODI_REFE_TEMPORADA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_TEMPORADA'
          end
          object padr_gridNOMB_REFE_TEMPORADA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_TEMPORADA'
          end
          object padr_gridMOLDE: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 87
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MOLDE'
          end
          object padr_gridCODI_INTE_REFERENCIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 95
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_INTE_REFERENCIA'
          end
          object padr_gridNOMB_REFERENCIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 169
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFERENCIA'
          end
          object padr_gridCODI_BARRAS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_BARRAS'
          end
          object padr_gridCONS_REFE_MARCA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_MARCA'
          end
          object padr_gridCODI_REFE_MARCA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_MARCA'
          end
          object padr_gridNOMB_REFE_MARCA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 83
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_MARCA'
          end
          object padr_gridCONS_REFE_LINEA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_LINEA'
          end
          object padr_gridCODI_REFE_LINEA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_LINEA'
          end
          object padr_gridNOMB_REFE_LINEA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 101
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_LINEA'
          end
          object padr_gridCONS_REFE_EDAD: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_EDAD'
          end
          object padr_gridCODI_REFE_EDAD: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_EDAD'
          end
          object padr_gridNOMB_REFE_EDAD: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 97
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_EDAD'
          end
          object padr_gridCONS_REFE_ESTILO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_ESTILO'
          end
          object padr_gridCODI_REFE_ESTILO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_ESTILO'
          end
          object padr_gridNOMB_REFE_ESTILO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_ESTILO'
          end
          object padr_gridCONS_REFE_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_GRUPO'
          end
          object padr_gridCODI_REFE_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_GRUPO'
          end
          object padr_gridNOMB_REFE_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_GRUPO'
          end
          object padr_gridCONS_REFE_SEXO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_SEXO'
          end
          object padr_gridCODI_SEXO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_SEXO'
          end
          object padr_gridNOMB_SEXO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 114
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_SEXO'
          end
          object padr_gridCONS_REFE_LAVADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_LAVADO'
          end
          object padr_gridCODI_REFE_LAVADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_LAVADO'
          end
          object padr_gridNOMB_REFE_LAVADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 104
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_LAVADO'
          end
          object padr_gridCONS_REFE_BORDADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_BORDADO'
          end
          object padr_gridCODI_REFE_BORDADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_BORDADO'
          end
          object padr_gridNOMB_REFE_BORDADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 89
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_BORDADO'
          end
          object padr_gridCONS_REFE_ESTAMPADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_ESTAMPADO'
          end
          object padr_gridCODI_REFE_ESTAMPADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_ESTAMPADO'
          end
          object padr_gridNOMB_REFE_ESTAMPADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 108
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_ESTAMPADO'
          end
          object padr_gridCONS_REFE_GRUP_TALLAS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_GRUP_TALLAS'
          end
          object padr_gridCODI_GRUP_TALLAS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_GRUP_TALLAS'
          end
          object padr_gridNOMB_GRUP_TALLAS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_GRUP_TALLAS'
          end
          object padr_gridCONS_REFE_ESTADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_ESTADO'
          end
          object padr_gridCODI_REFE_ESTADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_ESTADO'
          end
          object padr_gridNOMB_REFE_ESTADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 114
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_ESTADO'
          end
          object padr_gridDESCRIPCION: TdxDBGridMemoColumn
            HeaderAlignment = taCenter
            Width = 197
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESCRIPCION'
          end
          object padr_gridIMAGEN: TdxDBGridBlobColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            HeaderMaxLineCount = 0
            FieldName = 'IMAGEN'
          end
          object padr_gridAJUS_IMAGEN: TdxDBGridCheckColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AJUS_IMAGEN'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 128
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
          object padr_gridColumn48: TdxDBGridCheckColumn
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ESTA_EDIT_MAESTRO'
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          inherited padr_barra: TTBXToolbar
            inherited padr_boto_vinculos: TTBXSubmenuItem
              LinkSubitems = _fMDI.menu_referencias
              Visible = True
            end
            object TBXItem22: TTBXItem [7]
              Action = acti_duplicar
              ImageIndex = 16
              Images = padr_imagenes
            end
            object TBXItem23: TTBXItem [8]
              Action = acti_impo_prototipo
              ImageIndex = 16
              Images = _fMDI.imag_grandes
            end
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Referencias de productos'
      Caption = 'Referencias de productos'
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
      'SELECT *'
      'FROM VIS_GLO_REFERENCIAS'
      'Where cons_referencia>0'
      'ORDER BY CODI_REFERENCIA')
    object consultaCONS_REFERENCIA: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFERENCIA'
    end
    object consultaCODI_REFERENCIA: TStringField
      DisplayLabel = 'Cód. referencia'
      FieldName = 'CODI_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFERENCIA'
      Size = 12
    end
    object consultaCONS_REFE_TEMPORADA: TIntegerField
      DisplayLabel = 'Cons. temporada'
      FieldName = 'CONS_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_TEMPORADA'
    end
    object consultaCODI_REFE_TEMPORADA: TStringField
      DisplayLabel = 'Cód. temporada'
      FieldName = 'CODI_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFE_TEMPORADA'
      Size = 12
    end
    object consultaNOMB_REFE_TEMPORADA: TStringField
      DisplayLabel = 'Temporada'
      FieldName = 'NOMB_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFE_TEMPORADA'
      Size = 60
    end
    object consultaMOLDE: TStringField
      DisplayLabel = 'Molde'
      FieldName = 'MOLDE'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.MOLDE'
      Size = 12
    end
    object consultaCODI_INTE_REFERENCIA: TStringField
      DisplayLabel = 'C.I.R.'
      FieldName = 'CODI_INTE_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_INTE_REFERENCIA'
      Size = 12
    end
    object consultaNOMB_REFERENCIA: TStringField
      DisplayLabel = 'Nombre referencia'
      FieldName = 'NOMB_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFERENCIA'
      Size = 60
    end
    object consultaCODI_BARRAS: TStringField
      DisplayLabel = 'Cód. barras'
      FieldName = 'CODI_BARRAS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_BARRAS'
      Size = 30
    end
    object consultaCONS_REFE_MARCA: TIntegerField
      DisplayLabel = 'Cons. marca'
      FieldName = 'CONS_REFE_MARCA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_MARCA'
    end
    object consultaCODI_REFE_MARCA: TStringField
      DisplayLabel = 'Cód. marca'
      FieldName = 'CODI_REFE_MARCA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFE_MARCA'
      Size = 12
    end
    object consultaNOMB_REFE_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOMB_REFE_MARCA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFE_MARCA'
      Size = 60
    end
    object consultaCONS_REFE_LINEA: TIntegerField
      DisplayLabel = 'Cons. línea'
      FieldName = 'CONS_REFE_LINEA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_LINEA'
    end
    object consultaCODI_REFE_LINEA: TStringField
      DisplayLabel = 'Cód. línea'
      FieldName = 'CODI_REFE_LINEA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFE_LINEA'
      Size = 12
    end
    object consultaNOMB_REFE_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldName = 'NOMB_REFE_LINEA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFE_LINEA'
      Size = 60
    end
    object consultaCONS_REFE_EDAD: TIntegerField
      DisplayLabel = 'Cons. edad'
      FieldName = 'CONS_REFE_EDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_EDAD'
    end
    object consultaCODI_REFE_EDAD: TStringField
      DisplayLabel = 'Cód. edad'
      FieldName = 'CODI_REFE_EDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFE_EDAD'
      Size = 12
    end
    object consultaNOMB_REFE_EDAD: TStringField
      DisplayLabel = 'Edad'
      FieldName = 'NOMB_REFE_EDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFE_EDAD'
      Size = 60
    end
    object consultaCONS_REFE_ESTILO: TIntegerField
      DisplayLabel = 'Cons. estilo'
      FieldName = 'CONS_REFE_ESTILO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_ESTILO'
    end
    object consultaCODI_REFE_ESTILO: TStringField
      DisplayLabel = 'Cód. estilo'
      FieldName = 'CODI_REFE_ESTILO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFE_ESTILO'
      Size = 12
    end
    object consultaNOMB_REFE_ESTILO: TStringField
      DisplayLabel = 'Estilo'
      FieldName = 'NOMB_REFE_ESTILO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFE_ESTILO'
      Size = 60
    end
    object consultaCONS_REFE_GRUPO: TIntegerField
      DisplayLabel = 'Cons. grupo'
      FieldName = 'CONS_REFE_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_GRUPO'
    end
    object consultaCODI_REFE_GRUPO: TStringField
      DisplayLabel = 'Cód. grupo'
      FieldName = 'CODI_REFE_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFE_GRUPO'
      Size = 12
    end
    object consultaNOMB_REFE_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_REFE_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFE_GRUPO'
      Size = 60
    end
    object consultaCONS_REFE_SEXO: TIntegerField
      DisplayLabel = 'Cons. sexo'
      FieldName = 'CONS_REFE_SEXO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_SEXO'
    end
    object consultaCODI_SEXO: TStringField
      DisplayLabel = 'Cód. sexo'
      FieldName = 'CODI_SEXO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_SEXO'
      Size = 12
    end
    object consultaNOMB_SEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'NOMB_SEXO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_SEXO'
      Size = 60
    end
    object consultaCONS_REFE_LAVADO: TIntegerField
      DisplayLabel = 'Cons. lavado'
      FieldName = 'CONS_REFE_LAVADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_LAVADO'
    end
    object consultaCODI_REFE_LAVADO: TStringField
      DisplayLabel = 'Cód. lavado'
      FieldName = 'CODI_REFE_LAVADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFE_LAVADO'
      Size = 12
    end
    object consultaNOMB_REFE_LAVADO: TStringField
      DisplayLabel = 'Lavado'
      FieldName = 'NOMB_REFE_LAVADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFE_LAVADO'
      Size = 60
    end
    object consultaCONS_REFE_BORDADO: TIntegerField
      DisplayLabel = 'Cons. bordado'
      FieldName = 'CONS_REFE_BORDADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_BORDADO'
    end
    object consultaCODI_REFE_BORDADO: TStringField
      DisplayLabel = 'Cód. bordado'
      FieldName = 'CODI_REFE_BORDADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFE_BORDADO'
      Size = 12
    end
    object consultaNOMB_REFE_BORDADO: TStringField
      DisplayLabel = 'Bordado'
      FieldName = 'NOMB_REFE_BORDADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFE_BORDADO'
      Size = 60
    end
    object consultaCONS_REFE_ESTAMPADO: TIntegerField
      DisplayLabel = 'Cons. estampado'
      FieldName = 'CONS_REFE_ESTAMPADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_ESTAMPADO'
    end
    object consultaCODI_REFE_ESTAMPADO: TStringField
      DisplayLabel = 'Cód. estampado'
      FieldName = 'CODI_REFE_ESTAMPADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFE_ESTAMPADO'
      Size = 12
    end
    object consultaNOMB_REFE_ESTAMPADO: TStringField
      DisplayLabel = 'Estampado'
      FieldName = 'NOMB_REFE_ESTAMPADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFE_ESTAMPADO'
      Size = 60
    end
    object consultaCONS_REFE_GRUP_TALLAS: TIntegerField
      DisplayLabel = 'Cons. tallas'
      FieldName = 'CONS_REFE_GRUP_TALLAS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_GRUP_TALLAS'
    end
    object consultaCODI_GRUP_TALLAS: TStringField
      DisplayLabel = 'Cód. tallas'
      FieldName = 'CODI_GRUP_TALLAS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_GRUP_TALLAS'
      Size = 12
    end
    object consultaNOMB_GRUP_TALLAS: TStringField
      DisplayLabel = 'Tallas'
      FieldName = 'NOMB_GRUP_TALLAS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_GRUP_TALLAS'
      Size = 60
    end
    object consultaCONS_REFE_ESTADO: TIntegerField
      DisplayLabel = 'Cons. estado'
      FieldName = 'CONS_REFE_ESTADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_ESTADO'
    end
    object consultaCODI_REFE_ESTADO: TStringField
      DisplayLabel = 'Cód. estado'
      FieldName = 'CODI_REFE_ESTADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFE_ESTADO'
      Size = 12
    end
    object consultaNOMB_REFE_ESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'NOMB_REFE_ESTADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFE_ESTADO'
      Size = 60
    end
    object consultaIMAGEN: TBlobField
      DisplayLabel = 'Imágen'
      FieldName = 'IMAGEN'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object consultaAJUS_IMAGEN: TIntegerField
      DisplayLabel = 'Ajustar imágen'
      FieldName = 'AJUS_IMAGEN'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.AJUS_IMAGEN'
    end
    object consultaDESCRIPCION: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESCRIPCION'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.DESCRIPCION'
      Size = 240
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.USUA_SISTEMA'
    end
    object consultaESTA_EDIT_MAESTRO: TIntegerField
      DisplayLabel = 'Editable'
      FieldName = 'ESTA_EDIT_MAESTRO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFERENCIAS.EDITABLE'
    end
    object consultaESTA_MOST_METODOS: TIntegerField
      FieldName = 'ESTA_MOST_METODOS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFERENCIAS.IMAGEN'
    end
    object consultaESTA_MOST_ORDE_TRABAJO: TIntegerField
      FieldName = 'ESTA_MOST_ORDE_TRABAJO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFERENCIAS.AJUS_IMAGEN'
    end
    object consultaESTA_MOST_INVE_MATERIALES: TIntegerField
      FieldName = 'ESTA_MOST_INVE_MATERIALES'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFERENCIAS.DESCRIPCION'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'codi_referencia'
    NombreAMostrar = 'Referencia de producto'
    CamposDeBusqueda = 'cons_referencia'
    TipoGenero = geLa
    TablaMaestra = 'GLO_REFERENCIAS'
  end
  inherited padr_pop_grid: TTBXPopupMenu
    object TBXItem21: TTBXItem [0]
      Action = acti_estados_ir
      Images = _fMDI.imag_pequenas
    end
    object TBXSeparatorItem8: TTBXSeparatorItem [1]
    end
  end
  object acti_ventana: TActionList
    Images = _fMDI.imag_pequenas
    OnUpdate = acti_ventanaUpdate
    Left = 400
    Top = 5
    object acti_estados_ir: TAction
      Caption = 'Cambiar estado de la referencia'
      ImageIndex = 34
      OnExecute = acti_estados_irExecute
      OnUpdate = acti_estados_irUpdate
    end
    object acti_duplicar: TAction
      Caption = 'Duplicar'
      OnExecute = acti_duplicarExecute
    end
    object acti_impo_prototipo: TAction
      Caption = 'Importar prototipo'
      OnExecute = acti_impo_prototipoExecute
    end
  end
  object quer_duplicar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Execute procedure '
      'PRO_GLO_REFE_DUPLICAR'
      '(:cons_referencia, :codi_referencia, :es_prototipo)')
    Left = 78
    Top = 396
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_referencia'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codi_referencia'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'es_prototipo'
        ParamType = ptInput
      end>
  end
  object quer_impo_prototipo: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Execute procedure'
      'pro_glo_refe_impo_prototipo(:cons_prototipo)')
    Left = 238
    Top = 332
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prototipo'
        ParamType = ptInput
      end>
  end
end

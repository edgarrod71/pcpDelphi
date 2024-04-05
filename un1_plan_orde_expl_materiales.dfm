inherited fn1_plan_orde_expl_materiales: Tfn1_plan_orde_expl_materiales
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'TIPO'
          Filter.Criteria = {00000000}
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
          object padr_gridTIPO: TdxDBGridImageColumn
            Alignment = taLeftJustify
            MinWidth = 16
            Width = 48
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIPO'
            Images = _fMDI.imag_list_materiales
            ImageIndexes.Strings = (
              '0'
              '1'
              '2'
              '3')
            Values.Strings = (
              '1'
              '2'
              '3'
              '4')
          end
          object padr_gridCONS_REFE_MATERIAL: TdxDBGridMaskColumn
            Visible = False
            Width = 134
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_MATERIAL'
          end
          object padr_gridCONS_MATE_REFERENCIA: TdxDBGridMaskColumn
            Visible = False
            Width = 108
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_MATE_REFERENCIA'
          end
          object padr_gridCODI_MATE_REFERENCIA: TdxDBGridMaskColumn
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_MATE_REFERENCIA'
          end
          object padr_gridNOMB_MATE_REFERENCIA: TdxDBGridMaskColumn
            Width = 222
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MATE_REFERENCIA'
          end
          object padr_gridCONS_MATE_GRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_MATE_GRUPO'
          end
          object padr_gridCODI_MATE_GRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_MATE_GRUPO'
          end
          object padr_gridNOMB_MATE_GRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 324
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MATE_GRUPO'
          end
          object padr_gridCONS_MATE_SUBGRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 71
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_MATE_SUBGRUPO'
          end
          object padr_gridCODI_MATE_SUBGRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_MATE_SUBGRUPO'
          end
          object padr_gridNOMB_MATE_SUBGRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 324
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MATE_SUBGRUPO'
          end
          object padr_gridCONS_PROVEEDOR: TdxDBGridMaskColumn
            Visible = False
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PROVEEDOR'
          end
          object padr_gridCODI_PROVEEDOR: TdxDBGridMaskColumn
            Visible = False
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PROVEEDOR'
          end
          object padr_gridNOMB_PROVEEDOR: TdxDBGridMaskColumn
            Visible = False
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PROVEEDOR'
          end
          object padr_gridCONS_COLOR: TdxDBGridMaskColumn
            Visible = False
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COLOR'
          end
          object padr_gridCODI_COLOR: TdxDBGridMaskColumn
            Visible = False
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COLOR'
          end
          object padr_gridNOMB_COLOR: TdxDBGridMaskColumn
            Width = 364
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COLOR'
          end
          object padr_gridNOMB_UNID_MEDIDA: TdxDBGridMaskColumn
            Width = 364
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_UNID_MEDIDA'
          end
          object padr_gridCONS_UNIDAD: TdxDBGridMaskColumn
            Width = 86
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_UNIDAD'
          end
          object padr_gridCONS_TOTAL: TdxDBGridMaskColumn
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_TOTAL'
          end
          object padr_gridCOST_UNIDAD: TdxDBGridMaskColumn
            Visible = False
            Width = 62
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COST_UNIDAD'
          end
          object padr_gridCOST_TOTAL: TdxDBGridMaskColumn
            Visible = False
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COST_TOTAL'
          end
          object padr_gridEXISTENTE: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EXISTENTE'
          end
          object padr_gridDISPONIBLE: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DISPONIBLE'
          end
          object padr_gridENTREGADO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ENTREGADO'
          end
          object padr_gridDIFERENCIA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DIFERENCIA'
          end
        end
        inherited padr_fram_informacion: TPCPFrame
          Tag = -1
          inherited padr_pane_unidades: TPanel
            inherited dxDBEdit1: TdxDBEdit
              StoredValues = 1
            end
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Explosión de materiales por orden de producción'
      Caption = 'Explosión de materiales por orden de producción'
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
  inherited data_ventana: TDataSource
    Tag = -1
    DataSet = consulta
  end
  inherited consulta: TQuery
    DataSource = padr_data_ordenes
    SQL.Strings = (
      'SELECT TIPO,CONS_REFE_MATERIAL,'
      
        '    CONS_MATE_REFERENCIA, CODI_MATE_REFERENCIA, NOMB_MATE_REFERE' +
        'NCIA,'
      '    CONS_MATE_GRUPO, CODI_MATE_GRUPO, NOMB_MATE_GRUPO,'
      '    CONS_MATE_SUBGRUPO, CODI_MATE_SUBGRUPO, NOMB_MATE_SUBGRUPO,'
      '    CONS_PROVEEDOR, CODI_PROVEEDOR, NOMB_PROVEEDOR,'
      '    CONS_COLOR, CODI_COLOR, NOMB_COLOR,'
      '    NOMB_UNID_MEDIDA,'
      '    AVG(CONS_UNIDAD) CONS_UNIDAD,'
      '    SUM(CONS_TOTAL) CONS_TOTAL,'
      '    AVG(COST_UNIDAD) COST_UNIDAD,'
      '    SUM(COST_TOTAL) COST_TOTAL,'
      '    AVG(EXISTENTE) EXISTENTE,'
      '    AVG(DISPONIBLE) DISPONIBLE,'
      '    AVG(ENTREGADO) ENTREGADO,'
      '    SUM(DIFERENCIA) DIFERENCIA'
      'FROM CON_PCP_PROD_EXPL_COMPLETO(:CONS_PROD_ORDEN)'
      'GROUP BY TIPO,CONS_REFE_MATERIAL,'
      
        '    CONS_MATE_REFERENCIA, CODI_MATE_REFERENCIA, NOMB_MATE_REFERE' +
        'NCIA,'
      '    CONS_MATE_GRUPO, CODI_MATE_GRUPO, NOMB_MATE_GRUPO,'
      '    CONS_MATE_SUBGRUPO, CODI_MATE_SUBGRUPO, NOMB_MATE_SUBGRUPO,'
      '    CONS_PROVEEDOR, CODI_PROVEEDOR, NOMB_PROVEEDOR,'
      '    CONS_COLOR, CODI_COLOR, NOMB_COLOR, NOMB_UNID_MEDIDA')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_ORDEN'
        ParamType = ptUnknown
      end>
    object consultaTIPO: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
    end
    object consultaCONS_REFE_MATERIAL: TIntegerField
      DisplayLabel = 'Cons. material en la referencia'
      FieldName = 'CONS_REFE_MATERIAL'
    end
    object consultaCONS_MATE_REFERENCIA: TIntegerField
      DisplayLabel = 'Cons. referencia material'
      FieldName = 'CONS_MATE_REFERENCIA'
    end
    object consultaCODI_MATE_REFERENCIA: TStringField
      DisplayLabel = 'Cód. material'
      FieldName = 'CODI_MATE_REFERENCIA'
      Size = 12
    end
    object consultaNOMB_MATE_REFERENCIA: TStringField
      DisplayLabel = 'Nombre material'
      FieldName = 'NOMB_MATE_REFERENCIA'
      Size = 60
    end
    object consultaCONS_MATE_GRUPO: TIntegerField
      DisplayLabel = 'Cons. grupo'
      FieldName = 'CONS_MATE_GRUPO'
    end
    object consultaCODI_MATE_GRUPO: TStringField
      DisplayLabel = 'Cód. grupo'
      FieldName = 'CODI_MATE_GRUPO'
      Size = 12
    end
    object consultaNOMB_MATE_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_MATE_GRUPO'
      Size = 60
    end
    object consultaCONS_MATE_SUBGRUPO: TIntegerField
      DisplayLabel = 'Cons. subgrupo'
      FieldName = 'CONS_MATE_SUBGRUPO'
    end
    object consultaCODI_MATE_SUBGRUPO: TStringField
      DisplayLabel = 'Cód. subgrupo'
      FieldName = 'CODI_MATE_SUBGRUPO'
      Size = 12
    end
    object consultaNOMB_MATE_SUBGRUPO: TStringField
      DisplayLabel = 'Subgrupo'
      FieldName = 'NOMB_MATE_SUBGRUPO'
      Size = 60
    end
    object consultaCONS_PROVEEDOR: TIntegerField
      DisplayLabel = 'Cons. proveedor'
      FieldName = 'CONS_PROVEEDOR'
    end
    object consultaCODI_PROVEEDOR: TIntegerField
      DisplayLabel = 'Cód. proveedor'
      FieldName = 'CODI_PROVEEDOR'
    end
    object consultaNOMB_PROVEEDOR: TIntegerField
      DisplayLabel = 'Proveedor'
      FieldName = 'NOMB_PROVEEDOR'
    end
    object consultaCONS_COLOR: TIntegerField
      DisplayLabel = 'Cons. color'
      FieldName = 'CONS_COLOR'
    end
    object consultaCODI_COLOR: TStringField
      DisplayLabel = 'Cód. color'
      FieldName = 'CODI_COLOR'
      Size = 12
    end
    object consultaNOMB_COLOR: TStringField
      DisplayLabel = 'Color'
      FieldName = 'NOMB_COLOR'
      Size = 60
    end
    object consultaNOMB_UNID_MEDIDA: TStringField
      DisplayLabel = 'U. medida'
      FieldName = 'NOMB_UNID_MEDIDA'
      Size = 60
    end
    object consultaCONS_UNIDAD: TFloatField
      DisplayLabel = 'Consumo prenda'
      FieldName = 'CONS_UNIDAD'
      DisplayFormat = ',0.00000'
    end
    object consultaCONS_TOTAL: TFloatField
      DisplayLabel = 'Consumo total'
      FieldName = 'CONS_TOTAL'
      DisplayFormat = ',0.00000'
    end
    object consultaCOST_UNIDAD: TFloatField
      DisplayLabel = 'Costo unitario'
      FieldName = 'COST_UNIDAD'
      DisplayFormat = ',0.00'
    end
    object consultaCOST_TOTAL: TFloatField
      DisplayLabel = 'Costo total'
      FieldName = 'COST_TOTAL'
      DisplayFormat = ',0.00'
    end
    object consultaEXISTENTE: TFloatField
      DisplayLabel = 'Existente'
      FieldName = 'EXISTENTE'
      DisplayFormat = ',0.00000'
    end
    object consultaDISPONIBLE: TFloatField
      DisplayLabel = 'Disponible'
      FieldName = 'DISPONIBLE'
      DisplayFormat = ',0.00000'
    end
    object consultaENTREGADO: TFloatField
      DisplayLabel = 'Entregado'
      FieldName = 'ENTREGADO'
      DisplayFormat = ',0.00000'
    end
    object consultaDIFERENCIA: TFloatField
      DisplayLabel = 'Diferencia'
      FieldName = 'DIFERENCIA'
      DisplayFormat = ',0.00000'
    end
  end
  inherited padr_quer_ordenes: TQuery
    FilterOptions = [foCaseInsensitive]
  end
end

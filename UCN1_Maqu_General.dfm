inherited CN1_Maqu_General: TCN1_Maqu_General
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_RECURSO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_RECURSO: TdxDBGridMaskColumn
            Visible = False
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECURSO'
          end
          object padr_gridCODI_RECURSO: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECURSO'
          end
          object padr_gridCODI_INTE_RECURSO: TdxDBGridMaskColumn
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_INTE_RECURSO'
          end
          object padr_gridESTADO: TdxDBGridMaskColumn
            Width = 138
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ESTADO'
          end
          object padr_gridCONS_RECU_GRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 66
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_GRUPO'
          end
          object padr_gridCODI_RECU_GRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_GRUPO'
          end
          object padr_gridNOMB_RECU_GRUPO: TdxDBGridMaskColumn
            Width = 183
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_GRUPO'
          end
          object padr_gridCONS_RECU_TIPO: TdxDBGridMaskColumn
            Visible = False
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_TIPO'
          end
          object padr_gridCODI_RECU_TIPO: TdxDBGridMaskColumn
            Visible = False
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_TIPO'
          end
          object padr_gridNOMB_RECU_TIPO: TdxDBGridMaskColumn
            Width = 183
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_TIPO'
          end
          object padr_gridCONS_RECU_FAMILIA: TdxDBGridMaskColumn
            Visible = False
            Width = 69
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_FAMILIA'
          end
          object padr_gridCODI_RECU_FAMILIA: TdxDBGridMaskColumn
            Visible = False
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_FAMILIA'
          end
          object padr_gridNOMB_RECU_FAMILIA: TdxDBGridMaskColumn
            Width = 183
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_FAMILIA'
          end
          object padr_gridCONS_RECU_MARCA: TdxDBGridMaskColumn
            Visible = False
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_MARCA'
          end
          object padr_gridCODI_RECU_MARCA: TdxDBGridMaskColumn
            Visible = False
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_MARCA'
          end
          object padr_gridNOMB_RECU_MARCA: TdxDBGridMaskColumn
            Width = 183
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_MARCA'
          end
          object padr_gridFECH_INGRESO: TdxDBGridDateColumn
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_INGRESO'
          end
          object padr_gridANTIGUEDAD: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ANTIGUEDAD'
          end
          object padr_gridCONS_TIPO_DOCUMENTO: TdxDBGridMaskColumn
            Visible = False
            Width = 117
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_TIPO_DOCUMENTO'
          end
          object padr_gridCODI_TIPO_DOCUMENTO: TdxDBGridMaskColumn
            Visible = False
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_TIPO_DOCUMENTO'
          end
          object padr_gridNOMB_TIPO_DOCUMENTO: TdxDBGridMaskColumn
            Width = 183
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_TIPO_DOCUMENTO'
          end
          object padr_gridNUME_DOCUMENTO: TdxDBGridMaskColumn
            Width = 183
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_DOCUMENTO'
          end
          object padr_gridCLASE: TdxDBGridMaskColumn
            Width = 183
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLASE'
          end
          object padr_gridNUME_SERIE: TdxDBGridMaskColumn
            Width = 183
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_SERIE'
          end
          object padr_gridCONS_EMPRESA: TdxDBGridMaskColumn
            Visible = False
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_EMPRESA'
          end
          object padr_gridCODI_EMPRESA: TdxDBGridMaskColumn
            Visible = False
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_EMPRESA'
          end
          object padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn
            Width = 183
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_EMPRESA'
          end
          object padr_gridCONS_AREA: TdxDBGridMaskColumn
            Visible = False
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_AREA'
          end
          object padr_gridCODI_AREA: TdxDBGridMaskColumn
            Visible = False
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_AREA'
          end
          object padr_gridNOMB_AREA: TdxDBGridMaskColumn
            Width = 183
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_AREA'
          end
          object padr_gridCONS_PLANTA: TdxDBGridMaskColumn
            Visible = False
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PLANTA'
          end
          object padr_gridCODI_PLANTA: TdxDBGridMaskColumn
            Visible = False
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PLANTA'
          end
          object padr_gridNOMB_PLANTA: TdxDBGridMaskColumn
            Width = 183
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PLANTA'
          end
          object padr_gridCONS_LINEA: TdxDBGridMaskColumn
            Visible = False
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_LINEA'
          end
          object padr_gridCODI_LINEA: TdxDBGridMaskColumn
            Visible = False
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_LINEA'
          end
          object padr_gridNOMB_LINEA: TdxDBGridMaskColumn
            Width = 183
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_LINEA'
          end
          object padr_gridCONS_SECCION: TdxDBGridMaskColumn
            Visible = False
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_SECCION'
          end
          object padr_gridCODI_SECCION: TdxDBGridMaskColumn
            Visible = False
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_SECCION'
          end
          object padr_gridNOMB_SECCION: TdxDBGridMaskColumn
            Width = 183
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_SECCION'
          end
          object padr_gridCONS_BODEGA: TdxDBGridMaskColumn
            Visible = False
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_BODEGA'
          end
          object padr_gridCODI_BODEGA: TdxDBGridMaskColumn
            Visible = False
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_BODEGA'
          end
          object padr_gridNOMB_BODEGA: TdxDBGridMaskColumn
            Width = 183
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_BODEGA'
          end
          object padr_gridOTRA_UBICACION: TdxDBGridMaskColumn
            Width = 183
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OTRA_UBICACION'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          inherited padr_barra: TTBXToolbar
            inherited BImprimir: TTBXSubmenuItem
              object TBXItem21: TTBXItem
                Action = Acti_fich_tecnica
              end
            end
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Consulta General de Recursos'
      Caption = 'Consulta General de Recursos'
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
    inherited padr_acti_modificar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_eliminar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_consultar: TAction
      Enabled = False
      Visible = False
    end
    object Acti_fich_tecnica: TAction
      Caption = 'Ficha Técnica'
      OnExecute = Acti_fich_tecnicaExecute
    end
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_RECU_INFO_GENERAL')
    object consultaCONS_RECURSO: TIntegerField
      DisplayLabel = 'Cons. Recurso'
      FieldName = 'CONS_RECURSO'
    end
    object consultaCODI_RECURSO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_RECURSO'
      Size = 12
    end
    object consultaCODI_INTE_RECURSO: TStringField
      DisplayLabel = 'Cód. Interno'
      FieldName = 'CODI_INTE_RECURSO'
    end
    object consultaESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      Size = 60
    end
    object consultaCONS_RECU_GRUPO: TIntegerField
      DisplayLabel = 'Cons. Grupo'
      FieldName = 'CONS_RECU_GRUPO'
    end
    object consultaCODI_RECU_GRUPO: TStringField
      DisplayLabel = 'Cód. Grupo'
      FieldName = 'CODI_RECU_GRUPO'
      Size = 12
    end
    object consultaNOMB_RECU_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_RECU_GRUPO'
      Size = 60
    end
    object consultaCONS_RECU_TIPO: TIntegerField
      DisplayLabel = 'Cons. Tipo'
      FieldName = 'CONS_RECU_TIPO'
    end
    object consultaCODI_RECU_TIPO: TStringField
      DisplayLabel = 'Cód. Tipo'
      FieldName = 'CODI_RECU_TIPO'
      Size = 12
    end
    object consultaNOMB_RECU_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'NOMB_RECU_TIPO'
      Size = 60
    end
    object consultaCONS_RECU_FAMILIA: TIntegerField
      DisplayLabel = 'Cons. Familia'
      FieldName = 'CONS_RECU_FAMILIA'
    end
    object consultaCODI_RECU_FAMILIA: TStringField
      DisplayLabel = 'Cód. Familia'
      FieldName = 'CODI_RECU_FAMILIA'
      Size = 12
    end
    object consultaNOMB_RECU_FAMILIA: TStringField
      DisplayLabel = 'Familia'
      FieldName = 'NOMB_RECU_FAMILIA'
      Size = 60
    end
    object consultaCONS_RECU_MARCA: TIntegerField
      DisplayLabel = 'Cons. Marca'
      FieldName = 'CONS_RECU_MARCA'
    end
    object consultaCODI_RECU_MARCA: TStringField
      DisplayLabel = 'Cód. Marca'
      FieldName = 'CODI_RECU_MARCA'
      Size = 12
    end
    object consultaNOMB_RECU_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOMB_RECU_MARCA'
      Size = 60
    end
    object consultaFECH_INGRESO: TDateTimeField
      DisplayLabel = 'Fecha Ingreso'
      FieldName = 'FECH_INGRESO'
    end
    object consultaANTIGUEDAD: TIntegerField
      DisplayLabel = 'Antiguedad'
      FieldName = 'ANTIGUEDAD'
    end
    object consultaCONS_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'Cons. Tipo Documento'
      FieldName = 'CONS_TIPO_DOCUMENTO'
    end
    object consultaCODI_TIPO_DOCUMENTO: TStringField
      DisplayLabel = 'Cód. Tipo Documento'
      FieldName = 'CODI_TIPO_DOCUMENTO'
      Size = 12
    end
    object consultaNOMB_TIPO_DOCUMENTO: TStringField
      DisplayLabel = 'Tipo Documento'
      FieldName = 'NOMB_TIPO_DOCUMENTO'
      Size = 60
    end
    object consultaNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Número Documento'
      FieldName = 'NUME_DOCUMENTO'
    end
    object consultaCLASE: TStringField
      DisplayLabel = 'Clase'
      FieldName = 'CLASE'
      Size = 60
    end
    object consultaNUME_SERIE: TStringField
      DisplayLabel = 'Número Serie'
      FieldName = 'NUME_SERIE'
    end
    object consultaCONS_EMPRESA: TIntegerField
      DisplayLabel = 'Cons. Empresa'
      FieldName = 'CONS_EMPRESA'
    end
    object consultaCODI_EMPRESA: TStringField
      DisplayLabel = 'Cód. Empresa'
      FieldName = 'CODI_EMPRESA'
      Size = 12
    end
    object consultaNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Size = 60
    end
    object consultaCONS_AREA: TIntegerField
      DisplayLabel = 'Cons. Area'
      FieldName = 'CONS_AREA'
    end
    object consultaCODI_AREA: TStringField
      DisplayLabel = 'Cód. Area'
      FieldName = 'CODI_AREA'
      Size = 12
    end
    object consultaNOMB_AREA: TStringField
      DisplayLabel = 'Area'
      FieldName = 'NOMB_AREA'
      Size = 60
    end
    object consultaCONS_PLANTA: TIntegerField
      DisplayLabel = 'Cons. Planta'
      FieldName = 'CONS_PLANTA'
    end
    object consultaCODI_PLANTA: TStringField
      DisplayLabel = 'Cód. Planta'
      FieldName = 'CODI_PLANTA'
      Size = 12
    end
    object consultaNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta'
      FieldName = 'NOMB_PLANTA'
      Size = 60
    end
    object consultaCONS_LINEA: TIntegerField
      DisplayLabel = 'Cons. Línea'
      FieldName = 'CONS_LINEA'
    end
    object consultaCODI_LINEA: TStringField
      DisplayLabel = 'Cód. Línea'
      FieldName = 'CODI_LINEA'
      Size = 12
    end
    object consultaNOMB_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldName = 'NOMB_LINEA'
      Size = 60
    end
    object consultaCONS_SECCION: TIntegerField
      DisplayLabel = 'Cons. Sección'
      FieldName = 'CONS_SECCION'
    end
    object consultaCODI_SECCION: TStringField
      DisplayLabel = 'Cód. Sección'
      FieldName = 'CODI_SECCION'
      Size = 12
    end
    object consultaNOMB_SECCION: TStringField
      DisplayLabel = 'Sección'
      FieldName = 'NOMB_SECCION'
      Size = 60
    end
    object consultaCONS_BODEGA: TIntegerField
      DisplayLabel = 'Cons. Bodega'
      FieldName = 'CONS_BODEGA'
    end
    object consultaCODI_BODEGA: TStringField
      DisplayLabel = 'Cód. Bodega'
      FieldName = 'CODI_BODEGA'
      Size = 12
    end
    object consultaNOMB_BODEGA: TStringField
      DisplayLabel = 'Bodega'
      FieldName = 'NOMB_BODEGA'
      Size = 60
    end
    object consultaOTRA_UBICACION: TStringField
      DisplayLabel = 'Otra Ubicación'
      FieldName = 'OTRA_UBICACION'
      Size = 60
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'CODI_RECURSO'
    NombreAMostrar = 'Recurso'
    CamposDeBusqueda = 'CONS_RECURSO'
    TipoGenero = geEl
    TablaMaestra = 'CON_GLO_RECU_INFO_GENERAL'
  end
end

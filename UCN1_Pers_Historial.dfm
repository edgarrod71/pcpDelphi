inherited CN1_Pers_Historial: TCN1_Pers_Historial
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_PERSONAL'
          Filter.Criteria = {00000000}
          object padr_gridCONS_PERSONAL: TdxDBGridMaskColumn
            Visible = False
            Width = 79
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERSONAL'
          end
          object padr_gridCODI_PERSONAL: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERSONAL'
          end
          object padr_gridNOMBRES: TdxDBGridMaskColumn
            Width = 160
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMBRES'
          end
          object padr_gridAPELLIDOS: TdxDBGridMaskColumn
            Width = 160
            BandIndex = 0
            RowIndex = 0
            FieldName = 'APELLIDOS'
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
          object padr_gridULTI_SALARIO: TdxDBGridMaskColumn
            Width = 103
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ULTI_SALARIO'
          end
          object padr_gridCONS_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn
            Visible = False
            Width = 101
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_TIPO_CONTRATO'
          end
          object padr_gridCODI_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn
            Visible = False
            Width = 92
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERS_TIPO_CONTRATO'
          end
          object padr_gridNOMB_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn
            Width = 187
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_TIPO_CONTRATO'
          end
          object padr_gridDURACION: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DURACION'
          end
          object padr_gridFECH_VENCIMIENTO: TdxDBGridDateColumn
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_VENCIMIENTO'
          end
          object padr_gridCONS_EMPRESA: TdxDBGridMaskColumn
            Visible = False
            Width = 79
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_EMPRESA'
          end
          object padr_gridCODI_EMPRESA: TdxDBGridMaskColumn
            Visible = False
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_EMPRESA'
          end
          object padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn
            Width = 187
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_EMPRESA'
          end
          object padr_gridCONS_AREA: TdxDBGridMaskColumn
            Visible = False
            Width = 66
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_AREA'
          end
          object padr_gridCODI_AREA: TdxDBGridMaskColumn
            Visible = False
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_AREA'
          end
          object padr_gridNOMB_AREA: TdxDBGridMaskColumn
            Width = 187
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_AREA'
          end
          object padr_gridCONS_PLANTA: TdxDBGridMaskColumn
            Visible = False
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PLANTA'
          end
          object padr_gridCODI_PLANTA: TdxDBGridMaskColumn
            Visible = False
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PLANTA'
          end
          object padr_gridNOMB_PLANTA: TdxDBGridMaskColumn
            Width = 187
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PLANTA'
          end
          object padr_gridCONS_LINEA: TdxDBGridMaskColumn
            Visible = False
            Width = 66
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_LINEA'
          end
          object padr_gridCODI_LINEA: TdxDBGridMaskColumn
            Visible = False
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_LINEA'
          end
          object padr_gridNOMB_LINEA: TdxDBGridMaskColumn
            Width = 187
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_LINEA'
          end
          object padr_gridCONS_SECCION: TdxDBGridMaskColumn
            Visible = False
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_SECCION'
          end
          object padr_gridCODI_SECCION: TdxDBGridMaskColumn
            Visible = False
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_SECCION'
          end
          object padr_gridNOMB_SECCION: TdxDBGridMaskColumn
            Width = 187
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_SECCION'
          end
          object padr_gridCONS_BODEGA: TdxDBGridMaskColumn
            Visible = False
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_BODEGA'
          end
          object padr_gridCODI_BODEGA: TdxDBGridMaskColumn
            Visible = False
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_BODEGA'
          end
          object padr_gridNOMB_BODEGA: TdxDBGridMaskColumn
            Width = 187
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_BODEGA'
          end
          object padr_gridOTRA_UBICACION: TdxDBGridMaskColumn
            Width = 187
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OTRA_UBICACION'
          end
          object padr_gridCONS_PERS_CARGO: TdxDBGridMaskColumn
            Visible = False
            Width = 66
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_CARGO'
          end
          object padr_gridCODI_PERS_CARGO: TdxDBGridMaskColumn
            Visible = False
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERS_CARGO'
          end
          object padr_gridNOMB_PERS_CARGO: TdxDBGridMaskColumn
            Width = 187
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_CARGO'
          end
          object padr_gridIMAGEN: TdxDBGridBlobColumn
            Alignment = taLeftJustify
            MinWidth = 16
            Width = 55
            BandIndex = 0
            RowIndex = 0
            FieldName = 'IMAGEN'
            BlobKind = bkPict
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Información Personal (Historial)'
      Caption = 'Información Personal (Historial)'
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
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_PERS_INFO_HISTORIAL')
    object consultaCONS_PERSONAL: TIntegerField
      DisplayLabel = 'Cons. Personal'
      FieldName = 'CONS_PERSONAL'
    end
    object consultaCODI_PERSONAL: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERSONAL'
      Size = 12
    end
    object consultaNOMBRES: TStringField
      DisplayLabel = 'Nombres'
      FieldName = 'NOMBRES'
      Size = 40
    end
    object consultaAPELLIDOS: TStringField
      DisplayLabel = 'Apellidos'
      FieldName = 'APELLIDOS'
      Size = 61
    end
    object consultaFECH_INGRESO: TDateTimeField
      DisplayLabel = 'Fecha Ingreso'
      FieldName = 'FECH_INGRESO'
    end
    object consultaANTIGUEDAD: TIntegerField
      DisplayLabel = 'Antiguedad'
      FieldName = 'ANTIGUEDAD'
    end
    object consultaULTI_SALARIO: TIntegerField
      DisplayLabel = 'Ultimo Salario'
      FieldName = 'ULTI_SALARIO'
      DisplayFormat = ',0.00 $'
    end
    object consultaCONS_PERS_TIPO_CONTRATO: TIntegerField
      DisplayLabel = 'Cons. Tipo Contrato'
      FieldName = 'CONS_PERS_TIPO_CONTRATO'
    end
    object consultaCODI_PERS_TIPO_CONTRATO: TStringField
      DisplayLabel = 'Cód. tipo Contrato'
      FieldName = 'CODI_PERS_TIPO_CONTRATO'
      Size = 12
    end
    object consultaNOMB_PERS_TIPO_CONTRATO: TStringField
      DisplayLabel = 'Tipo Contrato'
      FieldName = 'NOMB_PERS_TIPO_CONTRATO'
      Size = 60
    end
    object consultaDURACION: TIntegerField
      DisplayLabel = 'Duración'
      FieldName = 'DURACION'
    end
    object consultaFECH_VENCIMIENTO: TDateTimeField
      DisplayLabel = 'Fecha Vto.'
      FieldName = 'FECH_VENCIMIENTO'
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
    object consultaCONS_PERS_CARGO: TIntegerField
      DisplayLabel = 'Cons. Cargo'
      FieldName = 'CONS_PERS_CARGO'
    end
    object consultaCODI_PERS_CARGO: TStringField
      DisplayLabel = 'Cód. Cargo'
      FieldName = 'CODI_PERS_CARGO'
      Size = 12
    end
    object consultaNOMB_PERS_CARGO: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'NOMB_PERS_CARGO'
      Size = 60
    end
    object consultaIMAGEN: TBlobField
      DisplayLabel = 'Imagen'
      FieldName = 'IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'CODI_PERSONAL'
    NombreAMostrar = 'Personal'
    CamposDeBusqueda = 'CONS_PERSONAL'
    TipoGenero = geEl
    TablaMaestra = 'CON_GLO_PERS_INFO_HISTORIAL'
  end
end

inherited CN1_Pers_General: TCN1_Pers_General
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_PERSONAL'
          OnDblClick = nil
          Filter.Criteria = {00000000}
          object padr_gridCONS_PERSONAL: TdxDBGridMaskColumn
            Visible = False
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
          object padr_gridPRIM_APELLIDO: TdxDBGridMaskColumn
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRIM_APELLIDO'
          end
          object padr_gridSEGU_APELLIDO: TdxDBGridMaskColumn
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SEGU_APELLIDO'
          end
          object padr_gridNOMBRES: TdxDBGridMaskColumn
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMBRES'
          end
          object padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn
            Width = 266
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COMPLETO'
          end
          object padr_gridFECH_INGRESO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_INGRESO'
          end
          object padr_gridTIEMPO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIEMPO'
          end
          object padr_gridANTIGUEDAD: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ANTIGUEDAD'
          end
          object padr_gridDURACION: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DURACION'
          end
          object padr_gridFECH_VENCIMIENTO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_VENCIMIENTO'
          end
          object padr_gridDIAS_VENCIMIENTO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DIAS_VENCIMIENTO'
          end
          object padr_gridCONS_EMPRESA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_EMPRESA'
          end
          object padr_gridCODI_EMPRESA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_EMPRESA'
          end
          object padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_EMPRESA'
          end
          object padr_gridCONS_AREA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_AREA'
          end
          object padr_gridCODI_AREA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_AREA'
          end
          object padr_gridNOMB_AREA: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_AREA'
          end
          object padr_gridCONS_PLANTA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PLANTA'
          end
          object padr_gridCODI_PLANTA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PLANTA'
          end
          object padr_gridNOMB_PLANTA: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PLANTA'
          end
          object padr_gridCONS_LINEA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_LINEA'
          end
          object padr_gridCODI_LINEA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_LINEA'
          end
          object padr_gridNOMB_LINEA: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_LINEA'
          end
          object padr_gridCONS_SECCION: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_SECCION'
          end
          object padr_gridCODI_SECCION: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_SECCION'
          end
          object padr_gridNOMB_SECCION: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_SECCION'
          end
          object padr_gridCONS_BODEGA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_BODEGA'
          end
          object padr_gridCODI_BODEGA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_BODEGA'
          end
          object padr_gridNOMB_BODEGA: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_BODEGA'
          end
          object padr_gridOTRA_UBICACION: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OTRA_UBICACION'
          end
          object padr_gridCONS_PERS_CARGO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_CARGO'
          end
          object padr_gridCODI_PERS_CARGO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERS_CARGO'
          end
          object padr_gridNOMB_PERS_CARGO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_CARGO'
          end
          object padr_gridCONS_PERS_CENT_COSTO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_CENT_COSTO'
          end
          object padr_gridCODI_PERS_CENT_COSTO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERS_CENT_COSTO'
          end
          object padr_gridNOMB_PERS_CENT_COSTO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_CENT_COSTO'
          end
          object padr_gridCONS_COST_GRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 144
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COST_GRUPO'
          end
          object padr_gridCODI_COST_GRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 139
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COST_GRUPO'
          end
          object padr_gridNOMB_COST_GRUPO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COST_GRUPO'
          end
          object padr_gridCONS_PERS_NIVE_SALARIAL: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_NIVE_SALARIAL'
          end
          object padr_gridCODI_PERS_NIVE_SALARIAL: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERS_NIVE_SALARIAL'
          end
          object padr_gridNOMB_PERS_NIVE_SALARIAL: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_NIVE_SALARIAL'
          end
          object padr_gridCONS_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_TIPO_CONTRATO'
          end
          object padr_gridCODI_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERS_TIPO_CONTRATO'
          end
          object padr_gridNOMB_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_TIPO_CONTRATO'
          end
          object padr_gridNUME_CONTRATO: TdxDBGridMaskColumn
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_CONTRATO'
          end
          object padr_gridCONS_PERI_PAGO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERI_PAGO'
          end
          object padr_gridCODI_PERI_PAGO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERI_PAGO'
          end
          object padr_gridNOMB_PERI_PAGO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERI_PAGO'
          end
          object padr_gridVALO_SALARIO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_SALARIO'
          end
          object padr_gridAUXI_TRANSPORTE: TdxDBGridMaskColumn
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AUXI_TRANSPORTE'
          end
          object padr_gridAUXI_SALARIAL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AUXI_SALARIAL'
          end
          object padr_gridAPLI_INCENTIVO: TdxDBGridMaskColumn
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'APLI_INCENTIVO'
          end
          object padr_gridESTADO: TdxDBGridMaskColumn
            Width = 364
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ESTADO'
          end
          object padr_gridNOMB_PERS_TIPO_MOVIMIENTO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_TIPO_MOVIMIENTO'
          end
          object padr_gridCONS_TURNO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_TURNO'
          end
          object padr_gridCODI_TURNO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_TURNO'
          end
          object padr_gridTIPO_TURNO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIPO_TURNO'
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Consulta General de Personal'
      Caption = 'Consulta General de Personal'
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
      'FROM CON_GLO_PERS_INFO_GENERAL')
    object consultaCONS_PERSONAL: TIntegerField
      DisplayLabel = 'Cons. Personal'
      FieldName = 'CONS_PERSONAL'
    end
    object consultaCODI_PERSONAL: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERSONAL'
      Size = 12
    end
    object consultaPRIM_APELLIDO: TStringField
      DisplayLabel = 'Primer Apellido'
      FieldName = 'PRIM_APELLIDO'
    end
    object consultaSEGU_APELLIDO: TStringField
      DisplayLabel = 'Segundo Apellido'
      FieldName = 'SEGU_APELLIDO'
    end
    object consultaNOMBRES: TStringField
      DisplayLabel = 'Nombres'
      FieldName = 'NOMBRES'
      Size = 40
    end
    object consultaNOMB_COMPLETO: TStringField
      DisplayLabel = 'Nombre Completo'
      FieldName = 'NOMB_COMPLETO'
      Size = 102
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
    object consultaCONS_PERS_CENT_COSTO: TIntegerField
      DisplayLabel = 'Cons. Cent. Costo'
      FieldName = 'CONS_PERS_CENT_COSTO'
    end
    object consultaCODI_PERS_CENT_COSTO: TStringField
      DisplayLabel = 'Cód. Cent. Costo'
      FieldName = 'CODI_PERS_CENT_COSTO'
      Size = 12
    end
    object consultaNOMB_PERS_CENT_COSTO: TStringField
      DisplayLabel = 'Cent. Costo'
      FieldName = 'NOMB_PERS_CENT_COSTO'
      Size = 60
    end
    object consultaCONS_COST_GRUPO: TIntegerField
      DisplayLabel = 'Cons. Sub-Grupo Cent. Cost.'
      FieldName = 'CONS_COST_GRUPO'
    end
    object consultaCODI_COST_GRUPO: TStringField
      DisplayLabel = 'Cód. Sub-Grupo Cent. Cost.'
      FieldName = 'CODI_COST_GRUPO'
      Size = 12
    end
    object consultaNOMB_COST_GRUPO: TStringField
      DisplayLabel = 'Sub-Grupo Cent. Cost.'
      FieldName = 'NOMB_COST_GRUPO'
      Size = 60
    end
    object consultaCONS_PERS_NIVE_SALARIAL: TIntegerField
      DisplayLabel = 'Cons. Nivel Salrial'
      FieldName = 'CONS_PERS_NIVE_SALARIAL'
    end
    object consultaCODI_PERS_NIVE_SALARIAL: TStringField
      DisplayLabel = 'Cód. Nivel Salrial'
      FieldName = 'CODI_PERS_NIVE_SALARIAL'
      Size = 12
    end
    object consultaNOMB_PERS_NIVE_SALARIAL: TStringField
      DisplayLabel = 'Nivel Salrial'
      FieldName = 'NOMB_PERS_NIVE_SALARIAL'
      Size = 60
    end
    object consultaCONS_PERS_TIPO_CONTRATO: TIntegerField
      DisplayLabel = 'Cons. Tipo Contrato'
      FieldName = 'CONS_PERS_TIPO_CONTRATO'
    end
    object consultaCODI_PERS_TIPO_CONTRATO: TStringField
      DisplayLabel = 'Cód. Tipo Contrato'
      FieldName = 'CODI_PERS_TIPO_CONTRATO'
      Size = 12
    end
    object consultaNOMB_PERS_TIPO_CONTRATO: TStringField
      DisplayLabel = 'Tipo Contrato'
      FieldName = 'NOMB_PERS_TIPO_CONTRATO'
      Size = 60
    end
    object consultaNUME_CONTRATO: TStringField
      DisplayLabel = 'Nro. Contrato'
      FieldName = 'NUME_CONTRATO'
    end
    object consultaCONS_PERI_PAGO: TIntegerField
      DisplayLabel = 'Cons. Peri. Pago'
      FieldName = 'CONS_PERI_PAGO'
    end
    object consultaCODI_PERI_PAGO: TStringField
      DisplayLabel = 'Cód. Peri. Pago'
      FieldName = 'CODI_PERI_PAGO'
      Size = 12
    end
    object consultaNOMB_PERI_PAGO: TStringField
      DisplayLabel = 'Peri. Pago'
      FieldName = 'NOMB_PERI_PAGO'
      Size = 60
    end
    object consultaVALO_SALARIO: TIntegerField
      DisplayLabel = 'Salario'
      FieldName = 'VALO_SALARIO'
      DisplayFormat = ',0.00 $'
    end
    object consultaAUXI_TRANSPORTE: TIntegerField
      DisplayLabel = 'Aux. Transporte'
      FieldName = 'AUXI_TRANSPORTE'
    end
    object consultaAUXI_SALARIAL: TIntegerField
      DisplayLabel = 'Aux. Salarial'
      FieldName = 'AUXI_SALARIAL'
    end
    object consultaAPLI_INCENTIVO: TStringField
      DisplayLabel = 'Aplica Incentivo'
      FieldName = 'APLI_INCENTIVO'
    end
    object consultaESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      Size = 60
    end
    object consultaCONS_TURNO: TIntegerField
      DisplayLabel = 'Cons. Turno'
      FieldName = 'CONS_TURNO'
    end
    object consultaCODI_TURNO: TStringField
      DisplayLabel = 'Cód. Turno'
      FieldName = 'CODI_TURNO'
      Size = 12
    end
    object consultaTIPO_TURNO: TStringField
      DisplayLabel = 'Tipo Turno'
      FieldName = 'TIPO_TURNO'
    end
    object consultaANTIGUEDAD: TIntegerField
      DisplayLabel = 'Antiguedad'
      FieldName = 'ANTIGUEDAD'
    end
    object consultaFECH_INGRESO: TDateTimeField
      DisplayLabel = 'Fecha Ingreso'
      FieldName = 'FECH_INGRESO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object consultaDURACION: TFloatField
      DisplayLabel = 'Duración Cont.'
      FieldName = 'DURACION'
    end
    object consultaDIAS_VENCIMIENTO: TIntegerField
      DisplayLabel = 'Días Vto. Cont.'
      FieldName = 'DIAS_VENCIMIENTO'
    end
    object consultaFECH_VENCIMIENTO: TDateTimeField
      DisplayLabel = 'Fecha Vto. Cont.'
      FieldName = 'FECH_VENCIMIENTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object consultaNOMB_PERS_TIPO_MOVIMIENTO: TStringField
      DisplayLabel = 'Tipo Movimiento'
      FieldName = 'NOMB_PERS_TIPO_MOVIMIENTO'
      Size = 60
    end
    object consultaTIEMPO: TStringField
      DisplayLabel = 'Tiempo'
      FieldName = 'TIEMPO'
      Size = 12
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'CONS_PERSONAL'
    NombreAMostrar = 'Personal'
    CamposDeBusqueda = 'NOMB_COMPLETO'
    TipoGenero = geEl
    TablaMaestra = 'CON_GLO_PERS_INFO_GENERAL'
  end
end

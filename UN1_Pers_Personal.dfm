inherited FN1_Pers_Personal: TFN1_Pers_Personal
  Left = 230
  Top = 149
  Width = 734
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 726
  end
  inherited padr_shap_xp_down: TShape
    Width = 726
  end
  inherited padr_pane_1: TPanel
    Width = 500
    inherited padr_pagina: TdxPageControl
      Width = 490
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Width = 100
          KeyField = 'CONS_PERSONAL'
          Filter.Criteria = {00000000}
          object padr_gridCONS_PERSONAL: TdxDBGridMaskColumn
            Visible = False
            Width = 62
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
            Visible = False
            Width = 176
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRIM_APELLIDO'
          end
          object padr_gridSEGU_APELLIDO: TdxDBGridMaskColumn
            Visible = False
            Width = 176
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SEGU_APELLIDO'
          end
          object padr_gridNOMBRES: TdxDBGridMaskColumn
            Visible = False
            Width = 235
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMBRES'
          end
          object padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn
            Width = 288
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COMPLETO'
          end
          object padr_gridCODI_PERS_CARGO: TdxDBGridColumn
            Visible = False
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERS_CARGO'
          end
          object padr_gridNOMB_PERS_CARGO: TdxDBGridColumn
            Width = 180
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_CARGO'
          end
          object padr_gridNOMB_UBIC_TIPO: TdxDBGridMaskColumn
            Width = 180
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_UBIC_TIPO'
          end
          object padr_gridCODI_EMPRESA: TdxDBGridMaskColumn
            Visible = False
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_EMPRESA'
          end
          object padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn
            Width = 288
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_EMPRESA'
          end
          object padr_gridCODI_AREA: TdxDBGridMaskColumn
            Visible = False
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_AREA'
          end
          object padr_gridNOMB_AREA: TdxDBGridMaskColumn
            Width = 180
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_AREA'
          end
          object padr_gridCODI_PLANTA: TdxDBGridMaskColumn
            Visible = False
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PLANTA'
          end
          object padr_gridNOMB_PLANTA: TdxDBGridMaskColumn
            Width = 180
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PLANTA'
          end
          object padr_gridCODI_LINEA: TdxDBGridMaskColumn
            Visible = False
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_LINEA'
          end
          object padr_gridNOMB_LINEA: TdxDBGridMaskColumn
            Width = 180
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_LINEA'
          end
          object padr_gridCODI_SECCION: TdxDBGridMaskColumn
            Visible = False
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_SECCION'
          end
          object padr_gridNOMB_SECCION: TdxDBGridMaskColumn
            Width = 180
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_SECCION'
          end
          object padr_gridCODI_BODEGA: TdxDBGridMaskColumn
            Visible = False
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_BODEGA'
          end
          object padr_gridNOMB_BODEGA: TdxDBGridMaskColumn
            Width = 180
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_BODEGA'
          end
          object padr_gridCODI_TURNO: TdxDBGridMaskColumn
            Visible = False
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_TURNO'
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
        inherited padr_dock_arriba: TTBXDock
          Width = 490
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 490
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 490
          inherited padr_beve_sepa: TBevel
            Width = 701
          end
          inherited padr_sepa_new: TShape
            Width = 484
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 295
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    Width = 726
    inherited padr_pane_2: TPanel
      Left = 655
    end
    inherited padr_pane_cerrar: TPanel
      Left = 673
    end
    inherited padr_pane_titulo: TPCPTituloGradiente
      Width = 655
      LabelCaption = 'Datos Generales de Personal'
      Caption = 'Datos Generales de Personal'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 518
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
    Width = 726
  end
  inherited padr_dock_bottom: TTBXDock
    Width = 726
  end
  inherited padr_dock_right: TTBXDock
    Left = 509
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_PERS_GENERAL')
    object consultaCONS_PERSONAL: TIntegerField
      DisplayLabel = 'No.'
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
      Size = 30
    end
    object consultaSEGU_APELLIDO: TStringField
      DisplayLabel = 'Segundo Apellido'
      FieldName = 'SEGU_APELLIDO'
      Size = 30
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
    object consultaNOMB_UBIC_TIPO: TStringField
      DisplayLabel = 'Ubicación'
      FieldName = 'NOMB_UBIC_TIPO'
      Size = 60
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
    object consultaCODI_TURNO: TStringField
      DisplayLabel = 'Turno'
      FieldName = 'CODI_TURNO'
      Size = 12
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
    CampoAMostrar = 'NOMB_COMPLETO'
    NombreAMostrar = 'Personal'
    CamposDeBusqueda = 'CONS_PERSONAL'
    TipoGenero = geEl
    TablaMaestra = 'GLO_PERSONAL'
  end
end

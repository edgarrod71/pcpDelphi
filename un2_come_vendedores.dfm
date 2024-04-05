inherited fn2_come_vendedores: Tfn2_come_vendedores
  Left = 97
  Width = 646
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 638
  end
  inherited padr_shap_xp_down: TShape
    Width = 638
  end
  inherited padr_pane_1: TPanel
    Width = 412
    inherited padr_pagina: TdxPageControl
      Width = 402
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Width = 12
          KeyField = 'CONS_COME_VENDEDOR'
          Filter.Criteria = {00000000}
          object padr_gridCONS_COME_VENDEDOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 119
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COME_VENDEDOR'
          end
          object padr_gridCODI_COME_VENDEDOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 84
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COME_VENDEDOR'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object padr_gridIDEN_COME_VENDEDOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'IDEN_COME_VENDEDOR'
          end
          object padr_gridNOMB_COME_VENDEDOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 203
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COME_VENDEDOR'
          end
          object padr_gridCONS_PAIS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 94
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PAIS'
          end
          object padr_gridNOMB_PAIS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 105
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PAIS'
          end
          object padr_gridCONS_DEPARTAMENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 151
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_DEPARTAMENTO'
          end
          object padr_gridNOMB_DEPARTAMENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 108
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_DEPARTAMENTO'
          end
          object padr_gridCONS_CIUDAD: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_CIUDAD'
          end
          object padr_gridNOMB_CIUDAD: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 117
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_CIUDAD'
          end
          object padr_gridDIRECCION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 278
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DIRECCION'
          end
          object padr_gridAPAR_AEREO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'APAR_AEREO'
          end
          object padr_gridTELEFONO1: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELEFONO1'
          end
          object padr_gridTELEFONO2: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 184
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELEFONO2'
          end
          object padr_gridTELEFONO3: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 184
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELEFONO3'
          end
          object padr_gridTELE_FAX: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELE_FAX'
          end
          object padr_gridTELE_MOVIL: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELE_MOVIL'
          end
          object padr_gridCORR_ELECTRONICO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 109
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CORR_ELECTRONICO'
          end
          object padr_gridPAGI_WEB: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PAGI_WEB'
          end
          object padr_gridOBSERVACIONES: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 380
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBSERVACIONES'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 176
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
        inherited padr_dock_arriba: TTBXDock
          Width = 402
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 402
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 402
          inherited padr_beve_sepa: TBevel
            Width = 613
          end
          inherited padr_sepa_new: TShape
            Width = 396
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 207
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    Width = 638
    inherited padr_pane_2: TPanel
      Left = 567
    end
    inherited padr_pane_cerrar: TPanel
      Left = 585
    end
    inherited padr_pane_titulo: TPCPTituloGradiente
      Width = 567
      LabelCaption = 'Vendedores'
      Caption = 'Vendedores'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 430
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
    Width = 638
  end
  inherited padr_dock_bottom: TTBXDock
    Width = 638
  end
  inherited padr_dock_right: TTBXDock
    Left = 421
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'Select * '
      'from vis_glo_come_vendedores'
      'where cons_come_vendedor>0'
      'order by cons_come_vendedor')
    object consultaCONS_COME_VENDEDOR: TIntegerField
      DisplayLabel = 'Cons. vendedor'
      FieldName = 'CONS_COME_VENDEDOR'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.CONS_COME_VENDEDOR'
    end
    object consultaCODI_COME_VENDEDOR: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_COME_VENDEDOR'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.CODI_COME_VENDEDOR'
      Size = 12
    end
    object consultaIDEN_COME_VENDEDOR: TStringField
      DisplayLabel = 'Identificación'
      FieldName = 'IDEN_COME_VENDEDOR'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.IDEN_COME_VENDEDOR'
    end
    object consultaNOMB_COME_VENDEDOR: TStringField
      DisplayLabel = 'Nombre vendedor'
      FieldName = 'NOMB_COME_VENDEDOR'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.NOMB_COME_VENDEDOR'
      Size = 60
    end
    object consultaCONS_PAIS: TIntegerField
      DisplayLabel = 'Cons. país'
      FieldName = 'CONS_PAIS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.CONS_PAIS'
    end
    object consultaNOMB_PAIS: TStringField
      DisplayLabel = 'País'
      FieldName = 'NOMB_PAIS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.NOMB_PAIS'
      Size = 60
    end
    object consultaCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'Cons. departamento'
      FieldName = 'CONS_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.CONS_DEPARTAMENTO'
    end
    object consultaNOMB_DEPARTAMENTO: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'NOMB_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.NOMB_DEPARTAMENTO'
      Size = 60
    end
    object consultaCONS_CIUDAD: TIntegerField
      DisplayLabel = 'Cons. ciudad'
      FieldName = 'CONS_CIUDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.CONS_CIUDAD'
    end
    object consultaNOMB_CIUDAD: TStringField
      DisplayLabel = 'Ciudad'
      FieldName = 'NOMB_CIUDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.NOMB_CIUDAD'
      Size = 60
    end
    object consultaDIRECCION: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRECCION'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.DIRECCION'
      Size = 240
    end
    object consultaAPAR_AEREO: TStringField
      DisplayLabel = 'A.A.'
      FieldName = 'APAR_AEREO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.APAR_AEREO'
    end
    object consultaTELEFONO1: TStringField
      DisplayLabel = 'Teléfono'
      FieldName = 'TELEFONO1'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.TELEFONO1'
    end
    object consultaTELEFONO2: TStringField
      DisplayLabel = 'Teléfono (2)'
      FieldName = 'TELEFONO2'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.TELEFONO2'
    end
    object consultaTELEFONO3: TStringField
      DisplayLabel = 'Teléfono (3)'
      FieldName = 'TELEFONO3'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.TELEFONO3'
    end
    object consultaTELE_FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'TELE_FAX'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.TELE_FAX'
    end
    object consultaTELE_MOVIL: TStringField
      DisplayLabel = 'Teléfono Móvil'
      FieldName = 'TELE_MOVIL'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.TELE_MOVIL'
    end
    object consultaCORR_ELECTRONICO: TStringField
      DisplayLabel = 'Correo electrónico'
      FieldName = 'CORR_ELECTRONICO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.CORR_ELECTRONICO'
      Size = 120
    end
    object consultaPAGI_WEB: TStringField
      DisplayLabel = 'Página en Internet'
      FieldName = 'PAGI_WEB'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.PAGI_WEB'
      Size = 120
    end
    object consultaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.OBSERVACIONES'
      Size = 240
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_VENDEDORES.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'nomb_come_vendedor'
    NombreAMostrar = 'Vendedor'
    CamposDeBusqueda = 'cons_come_vendedor'
    TipoGenero = geEl
    TablaMaestra = 'GLO_COME_VENDEDORES'
  end
end

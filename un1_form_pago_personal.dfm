inherited fn1_form_pago_personal: Tfn1_form_pago_personal
  Top = 125
  Height = 556
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 519
  end
  inherited padr_pane_1: TPanel
    Height = 486
    inherited padr_pagina: TdxPageControl
      Height = 476
      inherited fram_pagi_lista: TdxTabSheet
        inherited dfsSplitter1: TdfsSplitter
          Top = 75
          Height = 377
        end
        inherited padr_grid: TSCLDBGrid
          Top = 75
          Height = 377
          Filter.Criteria = {00000000}
          inherited padr_gridCONS_PERSONAL: TdxDBGridMaskColumn
            Width = 58
          end
          inherited padr_gridCODI_PERSONAL: TdxDBGridMaskColumn
            Sorted = csNone
          end
          inherited padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn
            Sorted = csUp
          end
          object padr_gridColumn33: TdxDBGridColumn [3]
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_HORA_MINI_GARANTIZADO'
          end
          object padr_gridColumn29: TdxDBGridColumn [4]
            Width = 101
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_HORA_PRODUCCION'
          end
          object padr_gridColumn31: TdxDBGridColumn [5]
            Width = 201
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_SIS_FORM_PAGO'
          end
          object padr_gridColumn30: TdxDBGridColumn [6]
            Visible = False
            Width = 89
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_SIS_FORM_PAGO'
          end
          object padr_gridColumn32: TdxDBGridColumn [7]
            Width = 364
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PARA_1'
          end
          inherited padr_gridCONS_UBIC_TIPO: TdxDBGridMaskColumn
            Width = 92
          end
          inherited padr_gridCONS_EMPRESA: TdxDBGridMaskColumn
            Width = 69
          end
          inherited padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn
            Width = 167
          end
          inherited padr_gridCONS_AREA: TdxDBGridMaskColumn
            Width = 58
          end
          inherited padr_gridCONS_PLANTA: TdxDBGridMaskColumn
            Width = 60
          end
          inherited padr_gridCONS_PLAN_LINEA: TdxDBGridMaskColumn
            Width = 58
          end
          inherited padr_gridCONS_LINE_SECCION: TdxDBGridMaskColumn
            Width = 68
          end
          inherited padr_gridCONS_BODEGA: TdxDBGridMaskColumn
            Width = 64
          end
          inherited padr_gridCONS_TURNO: TdxDBGridMaskColumn
            Width = 58
          end
          inherited padr_gridCONS_PERS_CARGO: TdxDBGridMaskColumn
            Width = 58
          end
          inherited padr_gridCONS_PERS_CENT_COSTO: TdxDBGridMaskColumn
            Width = 90
          end
          inherited padr_gridCONS_COST_GRUPO: TdxDBGridMaskColumn
            Width = 87
          end
        end
        inherited padr_dock_arriba: TTBXDock
          inherited padr_barra: TTBXToolbar
            inherited padr_boto_vinculos: TTBXSubmenuItem
              LinkSubitems = _fMDI.menu_form_pago
              Visible = True
            end
            object TBXItem1: TTBXItem [1]
              Action = acti_modi_form_pago
              DisplayMode = nbdmImageAndText
              ImageIndex = 3
              Images = _fMDI.imag_general32
            end
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 75
          Height = 377
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 355
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Top = 75
          Height = 377
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 355
              inherited padr_prio_impresion: TdxTreeList
                Height = 129
              end
            end
          end
        end
        inherited PCPFrame1: TPCPFrame
          Height = 23
          Titulo_Comprimido = True
          inherited Panel1: TPanel
            inherited fram_filtro: Tffra_maqu_ubicacion
              inherited pane_ubic_propia: TPanel
                inherited SCLButton7: TTBXButton
                  Top = -1
                end
              end
              inherited pane_ubic_otra: TPanel
                inherited edit_ubic_otra_ubicacion: TdxDBEdit
                  StyleController = padr_estilo
                end
              end
            end
            inherited Panel2: TPanel
              inherited edit_fecha: TdxDateEdit
                StoredValues = 4
              end
            end
          end
        end
      end
    end
  end
  inherited padr_dock_izquierda: TTBXDock
    Height = 486
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Asignación de forma de pago por grupos'
      Caption = 'Asignación de forma de pago por grupos'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Height = 486
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
  inherited padr_dock_bottom: TTBXDock
    Top = 520
  end
  inherited padr_dock_right: TTBXDock
    Height = 486
  end
  inherited data_ventana: TDataSource
    Top = 22
  end
  inherited padr_acciones: TActionList
    object acti_modi_form_pago: TAction
      Caption = 'Modificar forma de pago'
      OnExecute = acti_modi_form_pagoExecute
    end
  end
  inherited padr_popu_buscar: TTBXPopupMenu
    Left = 160
    Top = 26
  end
  inherited padr_imagenes: TImageList
    Left = 169
    Top = 52
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM CON_PCP_FORM_PAGO_PERS_FECHA(:pe_fecha)')
    Top = 50
    object consultaVALO_HORA_MINI_GARANTIZADO: TFloatField
      DisplayLabel = 'Vlr. hora garantizado'
      FieldName = 'VALO_HORA_MINI_GARANTIZADO'
      DisplayFormat = ',0.000'
    end
    object consultaVALO_HORA_PRODUCCION: TFloatField
      DisplayLabel = 'Vlr. hora producción'
      FieldName = 'VALO_HORA_PRODUCCION'
      DisplayFormat = ',0.000'
    end
    object consultaCONS_SIS_FORM_PAGO: TIntegerField
      DisplayLabel = 'Cons. forma pago'
      FieldName = 'CONS_SIS_FORM_PAGO'
    end
    object consultaNOMB_SIS_FORM_PAGO: TStringField
      DisplayLabel = 'Forma de pago'
      FieldName = 'NOMB_SIS_FORM_PAGO'
      Size = 60
    end
    object consultaPARA_1: TStringField
      DisplayLabel = 'Parámetro'
      FieldName = 'PARA_1'
      Size = 60
    end
  end
  inherited Imagenes24: TTBImageList
    Top = 26
  end
  inherited padr_pop_grid: TTBXPopupMenu
    object TBXItem2: TTBXItem [0]
      Action = acti_modi_form_pago
    end
  end
end

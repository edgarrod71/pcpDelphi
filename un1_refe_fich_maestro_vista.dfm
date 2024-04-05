inherited fn1_refe_fich_maestro_vista: Tfn1_refe_fich_maestro_vista
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          PopupMenu = pop_fichas
          OnDblClick = doDobleClick
          OnKeyDown = doKeyDown
          Filter.Criteria = {00000000}
        end
        inherited padr_dock_arriba: TTBXDock
          inherited padr_barra: TTBXToolbar
            inherited padr_boto_vinculos: TTBXSubmenuItem
              LinkSubitems = _fMDI.menu_referencias
              Visible = True
            end
            object TBXItem14: TTBXItem [17]
              Action = padr_acti_gene_vistas
              ImageIndex = 54
              Images = _fMDI.imag_grandes
            end
          end
        end
        inherited pane_filtros: TPCPFrame
          inherited pane_fechas: TPanel
            inherited comb_crea_desde: TdxDateEdit
              StoredValues = 4
            end
            inherited comb_crea_hasta: TdxDateEdit
              StoredValues = 4
            end
            inherited comb_modi_desde: TdxDateEdit
              StoredValues = 4
            end
            inherited comb_modi_hasta: TdxDateEdit
              StoredValues = 4
            end
          end
        end
        inherited padr_page_seleccion: TSCLPageControl
          FixedDimension = 17
        end
        inherited pane_imagenes: TPCPFrame
          inherited Vistas: TThumbnailList
            ParentColor = True
            PopupMenu = pop_fichas
            OnDblClick = doDobleClick
            OnKeyDown = doKeyDown
            OnMouseDown = VistasMouseDown
          end
          inherited padr_pane_tamano: TPanel
            inherited padr_pane_tama_thumbs: TPanel
              inherited padr_tama_thumbs: TJvTracker
                ThumbWidth = 10
                ThumbHeight = 10
                TrackHeight = 3
              end
            end
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Maestro de fichas técnicas (referencias)'
      Caption = 'Maestro de fichas técnicas (referencias)'
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
    inherited padr_Acti_refe_imagenes: TAction
      ImageIndex = 52
    end
    inherited padr_Acti_refe_lista: TAction
      ImageIndex = 53
    end
    object padr_acti_gene_vistas: TAction
      Category = '_Referencias'
      Caption = 'Generar vistas previas...'
    end
  end
  inherited consulta: TQuery
    object consultaESTA_EDIT_MAESTRO: TIntegerField
      FieldName = 'ESTA_EDIT_MAESTRO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFERENCIAS.ESTA_EDIT_MAESTRO'
    end
    object consultaESTA_MOST_METODOS: TIntegerField
      FieldName = 'ESTA_MOST_METODOS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFERENCIAS.ESTA_MOST_METODOS'
    end
    object consultaESTA_MOST_ORDE_TRABAJO: TIntegerField
      FieldName = 'ESTA_MOST_ORDE_TRABAJO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFERENCIAS.ESTA_MOST_ORDE_TRABAJO'
    end
    object consultaESTA_MOST_INVE_MATERIALES: TIntegerField
      FieldName = 'ESTA_MOST_INVE_MATERIALES'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFERENCIAS.ESTA_MOST_INVE_MATERIALES'
    end
    object consultaIMAGEN: TBlobField
      FieldName = 'IMAGEN'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFERENCIAS.IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object consultaAJUS_IMAGEN: TIntegerField
      FieldName = 'AJUS_IMAGEN'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFERENCIAS.AJUS_IMAGEN'
    end
    object consultaCON_ENTREPIERNAS: TIntegerField
      FieldName = 'CON_ENTREPIERNAS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFERENCIAS.CON_ENTREPIERNAS'
    end
  end
  object acti_Ventana: TActionList
    Images = _fMDI.ImagenesMenus
    Left = 22
    Top = 210
    object acti_fich_00_ver_todos: TAction
      Category = 'Fichas técnicas'
      Caption = 'Ver todas las fichas de la referencia'
      OnExecute = acti_fich_00_ver_todosExecute
    end
    object acti_fich_01_hoja_dise_caratula: TAction
      Tag = 1
      Category = 'Fichas técnicas'
      Caption = 'Hoja de diseño (carátula)'
      ImageIndex = 93
      OnExecute = acti_fich_01_hoja_dise_caratulaExecute
    end
    object acti_fich_02_hoja_diseno: TAction
      Tag = 2
      Category = 'Fichas técnicas'
      Caption = 'Hoja de diseño'
      ImageIndex = 95
      OnExecute = MostrarDialogoSeleccionFichas
    end
    object acti_fich_03_espe_gene_diseno: TAction
      Tag = 3
      Category = 'Fichas técnicas'
      Caption = 'Especificaciones generales de diseño'
      ImageIndex = 96
      OnExecute = MostrarDialogoSeleccionFichas
    end
    object acti_fich_04_espe_dise_detalles: TAction
      Tag = 4
      Category = 'Fichas técnicas'
      Caption = 'Especificaciones de diseño (detalles)'
      ImageIndex = 97
      OnExecute = MostrarDialogoSeleccionFichas
    end
    object acti_fich_05_espe_empaque: TAction
      Tag = 5
      Category = 'Fichas técnicas'
      Caption = 'Especificaciones de empaque'
      ImageIndex = 98
      OnExecute = MostrarDialogoSeleccionFichas
    end
    object acti_fich_06_espe_construccion: TAction
      Tag = 6
      Category = 'Fichas técnicas'
      Caption = 'Especificaciones de construcción'
      ImageIndex = 99
      OnExecute = MostrarDialogoSeleccionFichas
    end
    object acti_fich_07_medi_especiales: TAction
      Tag = 7
      Category = 'Fichas técnicas'
      Caption = 'Medidas especiales'
      OnExecute = MostrarDialogoSeleccionFichas
    end
    object acti_fich_08_medi_pren_terminada: TAction
      Tag = 8
      Category = 'Fichas técnicas'
      Caption = 'Medidas de prenda terminada'
      ImageIndex = 100
      OnExecute = MostrarDialogoSeleccionFichas
    end
    object acti_fich_09_espe_presentacion: TAction
      Tag = 9
      Category = 'Fichas técnicas'
      Caption = 'Especificaciones de presentación'
      ImageIndex = 94
      OnExecute = MostrarDialogoSeleccionFichas
    end
    object acti_fich_10_espe_materiales: TAction
      Tag = 10
      Category = 'Fichas técnicas'
      Caption = 'Especificaciones de materiales'
      Enabled = False
      OnExecute = MostrarDialogoSeleccionFichas
    end
    object acti_fich_11_espe_insu_fabricacion: TAction
      Tag = 11
      Category = 'Fichas técnicas'
      Caption = 'Especificaciones de insumos (fabricación)'
      Enabled = False
      OnExecute = MostrarDialogoSeleccionFichas
    end
    object acti_fich_12_espe_insu_empaque: TAction
      Tag = 12
      Category = 'Fichas técnicas'
      Caption = ' Especificaciones de insumos (empaque)'
      Enabled = False
      OnExecute = MostrarDialogoSeleccionFichas
    end
  end
  object pop_Fichas_fake: TTBXPopupMenu
    Left = 46
    Top = 210
    object pop_item_fichas: TTBXSubmenuItem
      object TBXItem1: TTBXItem
        Action = acti_fich_00_ver_todos
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object TBXItem12: TTBXItem
        Action = acti_fich_01_hoja_dise_caratula
      end
      object TBXItem11: TTBXItem
        Tag = 2
        Action = acti_fich_02_hoja_diseno
      end
      object TBXItem10: TTBXItem
        Tag = 3
        Action = acti_fich_03_espe_gene_diseno
      end
      object TBXItem9: TTBXItem
        Tag = 4
        Action = acti_fich_04_espe_dise_detalles
      end
      object TBXItem8: TTBXItem
        Tag = 5
        Action = acti_fich_05_espe_empaque
      end
      object TBXItem7: TTBXItem
        Tag = 6
        Action = acti_fich_06_espe_construccion
      end
      object TBXItem6: TTBXItem
        Tag = 7
        Action = acti_fich_07_medi_especiales
      end
      object TBXItem5: TTBXItem
        Tag = 8
        Action = acti_fich_08_medi_pren_terminada
      end
      object TBXItem4: TTBXItem
        Tag = 9
        Action = acti_fich_09_espe_presentacion
      end
      object TBXItem3: TTBXItem
        Tag = 10
        Action = acti_fich_10_espe_materiales
      end
      object TBXItem2: TTBXItem
        Tag = 11
        Action = acti_fich_11_espe_insu_fabricacion
      end
      object TBXItem13: TTBXItem
        Tag = 12
        Action = acti_fich_12_espe_insu_empaque
      end
    end
  end
  object pop_fichas: TTBXPopupMenu
    Left = 22
    Top = 170
    object TBGroupItem1: TTBGroupItem
      LinkSubitems = pop_item_fichas
    end
  end
end

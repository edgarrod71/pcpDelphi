inherited _fvent_consulta: T_fvent_consulta
  Left = 56
  Top = 106
  Height = 575
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 547
  end
  inherited padr_pane_1: TPanel
    Width = 765
    Height = 505
    inherited padr_pagina: TdxPageControl
      Width = 755
      Height = 495
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Left = 840
          Top = 56
          Width = 97
          Height = 97
          Align = alNone
          Visible = False
          Filter.Criteria = {00000000}
        end
        inherited padr_dock_arriba: TTBXDock
          Width = 755
          inherited padr_barra: TTBXToolbar
            object padr_Sepa_71: TTBXSeparatorItem [1]
            end
            object padr_boto_repo_page_1: TTBXItem [2]
              Action = padr_acti_repo_page_1
              ImageIndex = 0
              Images = _fMDI.imag_reportes_32
            end
            object padr_boto_repo_page_anterior: TTBXItem [3]
              Action = padr_acti_repo_page_anterior
              ImageIndex = 1
              Images = _fMDI.imag_reportes_32
            end
            object padr_boto_repo_page_siguiente: TTBXItem [4]
              Action = padr_acti_repo_page_siguiente
              ImageIndex = 2
              Images = _fMDI.imag_reportes_32
            end
            object padr_boto_repo_page_ultima: TTBXItem [5]
              Action = padr_acti_repo_page_ultima
              ImageIndex = 3
              Images = _fMDI.imag_reportes_32
            end
            object padr_sepa_27: TTBXSeparatorItem [6]
            end
            object padr_repo_buscar: TTBXItem [7]
              Action = padr_acti_repo_page_buscar
              ImageIndex = 4
              Images = _fMDI.imag_reportes_32
            end
            object padr_repo_page_ir: TTBXItem [8]
              Action = padr_acti_repo_page_ir
              ImageIndex = 5
              Images = _fMDI.imag_reportes_32
            end
            object padr_sepa_81: TTBXSeparatorItem [9]
            end
            object padr_boto_repo_ampliar: TTBXItem [10]
              Action = padr_acti_repo_ampliar
              ImageIndex = 6
              Images = _fMDI.imag_reportes_32
            end
            object TBControlItem1: TTBControlItem [11]
              Control = pane_zoom
            end
            object padr_boto_repo_reducir: TTBXItem [12]
              Action = padr_acti_repo_reducir
              ImageIndex = 7
              Images = _fMDI.imag_reportes_32
            end
            object TBXItem1: TTBXItem [24]
              Action = padr_acti_repo_imprirmir
              ImageIndex = 10
              Images = _fMDI.imag_grandes
            end
            inherited BImprimir: TTBXSubmenuItem
              inherited boto_repo_nuevo: TTBXItem
                Enabled = False
                Visible = False
              end
              inherited padr_boto_opci_impresion: TTBXVisibilityToggleItem
                Enabled = False
                Visible = False
              end
              inherited padr_sepa_12: TTBXSeparatorItem
                Visible = False
              end
            end
            inherited padr_boto_conf_vista: TTBXVisibilityToggleItem
              Visible = False
            end
            object pane_zoom: TPanel
              Left = 285
              Top = 0
              Width = 70
              Height = 38
              BevelOuter = bvNone
              TabOrder = 0
              object Label1: TLabel
                Left = 4
                Top = 1
                Width = 20
                Height = 13
                Caption = 'Ver:'
              end
              object edit_zoom: TdxButtonEdit
                Left = 4
                Top = 15
                Width = 63
                TabOrder = 0
                OnExit = edit_zoomChange
                StyleController = padr_estilo
                Text = '100%'
                OnChange = edit_zoomChange
                Buttons = <
                  item
                    Default = True
                    Kind = bkDown
                  end>
                OnButtonClick = edit_zoomButtonClick
                StoredValues = 4
                ExistButtons = True
              end
            end
          end
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 755
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 755
          inherited padr_sepa_new: TShape
            Width = 749
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Width = 36
          Height = 419
          inherited padr_pane_conf_vista: TTBXDockablePanel
            DockedWidth = 32
            inherited shap_xp: TShape
              Width = 32
            end
            inherited padr_conf_vista: TdxTreeList
              Width = 32
              Height = 397
            end
            inherited padr_gradi_camp_visibles: TPCPTituloGradiente
              Width = 32
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 719
          Width = 36
          Height = 419
          inherited DPOpciones_Impresion: TTBXDockablePanel
            DockedWidth = 32
            inherited padr_shape_23: TShape
              Width = 32
            end
            inherited padr_pane_29: TPanel
              Width = 32
              Height = 397
              inherited padr_gene_impresion: TdxTreeList
                Width = 32
              end
              inherited padr_firm_impresion: TdxTreeList
                Width = 32
              end
              inherited padr_prio_impresion: TdxTreeList
                Width = 32
                Height = 171
              end
            end
            inherited padr_pane_grad_1: TPCPTituloGradiente
              Width = 32
            end
          end
        end
        object padr_pane_vist_previa: TPCPFrame
          Tag = 377
          Left = 40
          Top = 48
          Width = 873
          Height = 377
          BorderWidth = 2
          Constraints.MinHeight = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Titulo_Color = 16244694
          TipoFrame = tfNinguno
          FlatBorder = True
          object padr_preview: TRLPreview
            Left = 3
            Top = 3
            Width = 867
            Height = 371
            HorzScrollBar.Tracking = True
            VertScrollBar.Tracking = True
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            ParentColor = False
            TabOrder = 1
            TabStop = True
            OnMouseWheelDown = padr_previewMouseWheelDown
            OnMouseWheelUp = padr_previewMouseWheelUp
            OnChangeView = padr_previewChangeView
            object padr_Reporte: TRLReport
              Left = 7
              Top = 7
              Width = 816
              Height = 1056
              AdjustableMargins = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Margins.LeftMargin = 15
              PageSetup.PaperSize = fpLetter
              PreviewOptions.Defaults = pdIgnoreDefaults
              ExpressionParser = padr_RLExpressionParser1
              object padr_repo_band_header: TRLBand
                Left = 57
                Top = 38
                Width = 721
                Height = 67
                BandType = btHeader
                object padr_repo_pane_header: TRLPanel
                  Left = 0
                  Top = 0
                  Width = 721
                  Height = 46
                  Align = faTop
                  object padr_labe_nomb_reporte: TRLSystemInfo
                    Left = 675
                    Top = 0
                    Width = 46
                    Height = 19
                    Align = faRightTop
                    Alignment = taRightJustify
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = [fsBold]
                    Info = itTitle
                    ParentFont = False
                  end
                  object padr_repo_labe_fecha: TRLLabel
                    Left = 594
                    Top = 25
                    Width = 36
                    Height = 14
                    Caption = 'Fecha:'
                  end
                  object padr_repo_fecha: TRLSystemInfo
                    Left = 636
                    Top = 23
                    Width = 84
                    Height = 18
                    AutoSize = False
                    Borders.Sides = sdCustom
                    Borders.DrawLeft = True
                    Borders.DrawTop = True
                    Borders.DrawRight = True
                    Borders.DrawBottom = True
                  end
                  object padr_repo_labe_pagina: TRLLabel
                    Left = 363
                    Top = 25
                    Width = 38
                    Height = 14
                    Caption = 'Página:'
                  end
                  object padr_repo_labe_page_inicial: TRLSystemInfo
                    Left = 404
                    Top = 23
                    Width = 26
                    Height = 18
                    AutoSize = False
                    Borders.Sides = sdCustom
                    Borders.DrawLeft = True
                    Borders.DrawTop = True
                    Borders.DrawRight = False
                    Borders.DrawBottom = True
                    Info = itPageNumber
                  end
                  object padr_repo_labe_page_final: TRLSystemInfo
                    Left = 442
                    Top = 23
                    Width = 31
                    Height = 18
                    Alignment = taRightJustify
                    AutoSize = False
                    Borders.Sides = sdCustom
                    Borders.DrawLeft = False
                    Borders.DrawTop = True
                    Borders.DrawRight = True
                    Borders.DrawBottom = True
                    Info = itLastPageNumber
                  end
                  object padr_repo_labe_de: TRLLabel
                    Left = 428
                    Top = 23
                    Width = 15
                    Height = 18
                    Borders.Sides = sdCustom
                    Borders.DrawLeft = False
                    Borders.DrawTop = True
                    Borders.DrawRight = False
                    Borders.DrawBottom = True
                    Borders.FixedBottom = True
                    Caption = 'de'
                  end
                end
              end
              object padr_repo_band_footer: TRLBand
                Left = 57
                Top = 105
                Width = 721
                Height = 18
                AlignToBottom = True
                BandType = btFooter
                object padr_labe_pcp: TRLLabel
                  Left = 658
                  Top = 0
                  Width = 63
                  Height = 12
                  Align = faRightTop
                  Alignment = taRightJustify
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                end
              end
            end
          end
        end
      end
    end
  end
  inherited padr_dock_izquierda: TTBXDock
    Height = 505
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 783
    Width = 9
    Height = 505
    inherited padr_page_ocul_reporte: TdxTabSheet
      inherited padr_repo_fortes: Tffra_edit_reportes
        Width = 193
        Height = 353
        inherited TBXDock2: TTBXDock
          Height = 311
        end
        inherited pane_contenedor: TPCPFrame
          Tag = 250
          Height = 311
          inherited ELDesignPanel1: TELDesignPanel
            Height = 297
          end
        end
        inherited TBXDock3: TTBXDock
          Height = 311
          inherited pane_insp_objetos: TTBXDockablePanel
            inherited page: TSCLPageControl
              Height = 291
              FixedDimension = 19
              inherited page_propiedades: TSCLTabSheet
                inherited page_prop: TSCLPageControl
                  Height = 268
                  FixedDimension = 19
                  inherited page_labels: TSCLTabSheet
                    inherited scro_box: TScrollBox
                      Height = 245
                    end
                  end
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
    Top = 538
  end
  inherited padr_dock_right: TTBXDock
    Left = 774
    Height = 505
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_buscar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_imprimir: TAction
      Enabled = False
      Visible = False
    end
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
    inherited padr_acti_vertodo: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_ajus_alto: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_aceptar: TAction
      Enabled = False
    end
    inherited padr_acti_cancelar: TAction
      Enabled = False
    end
    inherited padr_acti_duplicar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_elim_todos: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_cerr_carp_activa: TAction
      Enabled = False
      Visible = False
    end
    inherited acti_padr_cerr_todas_carpetas: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_ver_lista: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_llam_todos: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_comu_sele_rang_fechas: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_mejo_ajuste: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_consultar: TAction
      Enabled = False
      Visible = False
    end
    inherited Padr_Acti_Opci_Impresion: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_grid_expander: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_grid_contraer: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_Acti_nuev_reporte: TAction
      Enabled = False
      Visible = False
    end
    object padr_acti_repo_page_1: TAction
      Category = 'Reporte'
      Caption = 'Primera página'
      Enabled = False
      ShortCut = 36
      OnExecute = padr_acti_repo_page_1Execute
    end
    object padr_acti_repo_page_anterior: TAction
      Category = 'Reporte'
      Caption = 'Página anterior'
      Enabled = False
      ShortCut = 33
      OnExecute = padr_acti_repo_page_anteriorExecute
    end
    object padr_acti_repo_page_siguiente: TAction
      Category = 'Reporte'
      Caption = 'Siguiente página'
      Enabled = False
      ShortCut = 34
      OnExecute = padr_acti_repo_page_siguienteExecute
    end
    object padr_acti_repo_page_ultima: TAction
      Category = 'Reporte'
      Caption = 'Ultima página'
      Enabled = False
      ShortCut = 35
      OnExecute = padr_acti_repo_page_ultimaExecute
    end
    object padr_acti_repo_page_ir: TAction
      Category = 'Reporte'
      Caption = 'Ir a un número de página...'
      Enabled = False
    end
    object padr_acti_repo_page_buscar: TAction
      Category = 'Reporte'
      Caption = 'Buscar un texto en el reporte'
      Enabled = False
    end
    object padr_acti_repo_imprirmir: TAction
      Category = 'Reporte'
      Caption = 'Imprimir'
      Enabled = False
    end
    object padr_acti_repo_ampliar: TAction
      Category = 'Reporte'
      Caption = 'Ampliar'
      OnExecute = padr_acti_repo_ampliarExecute
    end
    object padr_acti_repo_reducir: TAction
      Category = 'Reporte'
      Caption = 'Reducir'
      OnExecute = padr_acti_repo_reducirExecute
    end
  end
  inherited padr_popu_vist_actual: TTBXPopupMenu
    Left = 418
    Top = 1
  end
  inherited Variables: TSCLPropiedadesForm
    Left = 386
    Top = 2
  end
  inherited pop_pagina: TTBXPopupMenu
    Left = 483
    Top = 65533
  end
  inherited padr_pop_grid: TTBXPopupMenu
    Left = 518
    Top = 65532
  end
  inherited QFirmas: TQuery
    Left = 1008
    Top = 379
  end
  inherited QPrioridades: TQuery
    Left = 1008
    Top = 411
  end
  inherited QEliminar_Opciones_Impresion: TQuery
    Left = 1008
    Top = 347
  end
  inherited TUsuarios_Modulos: TTable
    Left = 1048
    Top = 379
  end
  inherited TUsuario_Opciones: TTable
    Left = 1048
    Top = 411
  end
  inherited QInformes: TQuery
    Left = 1010
    Top = 452
  end
  inherited quer_prev_fortes: TQuery
    Left = 1008
    Top = 483
  end
  object padr_RLExpressionParser1: TRLExpressionParser
    Left = 448
  end
  object n: TRLPrintDialogSetup
    Options = [rpoPageNums, rpoSelection, rpoWarning, rpoDisablePrintInBackground]
    Copies = 0
    Left = 552
    Top = 9
  end
  object pop_zoom: TTBXPopupMenu
    Left = 488
    Top = 248
    object TBXItem12: TTBXItem
      Tag = 6400
      AutoCheck = True
      Caption = '6400%'
      GroupIndex = 191
      OnClick = doZoomFromPopUp
    end
    object TBXItem11: TTBXItem
      Tag = 3200
      AutoCheck = True
      Caption = '3200%'
      GroupIndex = 191
      OnClick = doZoomFromPopUp
    end
    object TBXItem10: TTBXItem
      Tag = 1600
      AutoCheck = True
      Caption = '1600%'
      GroupIndex = 191
      OnClick = doZoomFromPopUp
    end
    object TBXItem9: TTBXItem
      Tag = 800
      AutoCheck = True
      Caption = '800%'
      GroupIndex = 191
      OnClick = doZoomFromPopUp
    end
    object TBXItem8: TTBXItem
      Tag = 400
      AutoCheck = True
      Caption = '400%'
      GroupIndex = 191
      OnClick = doZoomFromPopUp
    end
    object TBXItem7: TTBXItem
      Tag = 200
      AutoCheck = True
      Caption = '200%'
      GroupIndex = 191
      OnClick = doZoomFromPopUp
    end
    object TBXItem6: TTBXItem
      Tag = 150
      AutoCheck = True
      Caption = '150%'
      GroupIndex = 191
      OnClick = doZoomFromPopUp
    end
    object TBXItem5: TTBXItem
      Tag = 125
      AutoCheck = True
      Caption = '125%'
      GroupIndex = 191
      OnClick = doZoomFromPopUp
    end
    object item_zoom_100: TTBXItem
      Tag = 100
      AutoCheck = True
      Caption = '100%'
      Checked = True
      GroupIndex = 191
      OnClick = doZoomFromPopUp
    end
    object TBXItem3: TTBXItem
      Tag = 50
      AutoCheck = True
      Caption = '50%'
      GroupIndex = 191
      OnClick = doZoomFromPopUp
    end
    object TBXItem2: TTBXItem
      Tag = 25
      AutoCheck = True
      Caption = '25%'
      GroupIndex = 191
      OnClick = doZoomFromPopUp
    end
    object TBXItem14: TTBXItem
      Tag = 12
      AutoCheck = True
      Caption = '12%'
      GroupIndex = 191
      OnClick = doZoomFromPopUp
    end
    object TBXItem13: TTBXItem
      Tag = 6
      AutoCheck = True
      Caption = '6%'
      GroupIndex = 191
      OnClick = doZoomFromPopUp
    end
    object TBXSeparatorItem1: TTBXSeparatorItem
    end
    object TBXItem17: TTBXItem
      Tag = -1
      AutoCheck = True
      Caption = 'Ajustar &página'
      GroupIndex = 191
      OnClick = doZoomFromPopUp
    end
    object TBXItem16: TTBXItem
      Tag = -2
      AutoCheck = True
      Caption = 'Tama&ño real'
      GroupIndex = 191
      OnClick = doZoomFromPopUp
    end
    object TBXItem15: TTBXItem
      Tag = -3
      AutoCheck = True
      Caption = 'Ajustar anch&o'
      GroupIndex = 191
      OnClick = doZoomFromPopUp
    end
    object TBXItem4: TTBXItem
      Tag = -4
      AutoCheck = True
      Caption = 'Ver &varias páginas'
      GroupIndex = 191
      OnClick = doZoomFromPopUp
    end
  end
end

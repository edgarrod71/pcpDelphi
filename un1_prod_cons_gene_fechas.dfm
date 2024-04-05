inherited fn1_prod_cons_gene_fechas: Tfn1_prod_cons_gene_fechas
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Top = 113
          Height = 319
          Filter.Criteria = {00000000}
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 113
          Height = 319
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 297
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Top = 113
          Height = 319
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 297
              inherited padr_prio_impresion: TdxTreeList
                Height = 71
              end
            end
          end
        end
        object PCPFrame1: TPCPFrame
          Tag = 61
          Left = 0
          Top = 52
          Width = 556
          Height = 61
          Align = alTop
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Caption = 'Filtros de la consulta'
          Titulo_Color = 16244694
          object chec_fech_desde: TdxCheckEdit
            Left = 8
            Top = 32
            Width = 177
            TabOrder = 1
            Caption = 'Desde:'
            OnChange = chec_fech_desdeChange
          end
          object edit_Fech_desde: TdxDateEdit
            Left = 64
            Top = 32
            Width = 121
            Enabled = False
            TabOrder = 2
            StyleController = padr_estilo
            Date = -700000
            DateValidation = True
            SaveTime = False
            UseEditMask = True
            StoredValues = 4
          end
          object chec_fech_hasta: TdxCheckEdit
            Left = 232
            Top = 32
            Width = 177
            TabOrder = 3
            Caption = 'Hasta:'
            OnChange = chec_fech_hastaChange
          end
          object edit_fech_hasta: TdxDateEdit
            Left = 288
            Top = 32
            Width = 121
            Enabled = False
            TabOrder = 4
            StyleController = padr_estilo
            Date = -700000
            DateValidation = True
            SaveTime = False
            UseEditMask = True
            StoredValues = 4
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Ordenes de producción por fecha'
      Caption = 'Ordenes de producción por fecha'
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
  inherited padr_popu_vist_actual: TTBXPopupMenu
    Left = 706
    Top = 65
  end
  inherited Variables: TSCLPropiedadesForm
    Left = 738
    Top = 66
  end
  inherited padr_pop_grid: TTBXPopupMenu
    Left = 78
    Top = 396
  end
end

inherited cn1_prod_unid_producidas: Tcn1_prod_unid_producidas
  Left = 10
  Top = 108
  Width = 812
  Caption = 'cn1_prod_unid_producidas'
  FormStyle = fsMDIChild
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Width = 804
  end
  inherited padr_pane_1: TPanel
    Width = 777
    inherited padr_pagina: TdxPageControl
      Width = 767
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Filter.Criteria = {00000000}
        end
        inherited padr_dock_arriba: TTBXDock
          Width = 767
          inherited padr_barra: TTBXToolbar
            inherited pane_zoom: TPanel
              inherited edit_zoom: TdxButtonEdit
                StoredValues = 4
                ExistButtons = True
              end
            end
          end
        end
        inherited padr_pane_sepa_2: TPanel
          Top = 208
          Width = 767
        end
        inherited padr_pane_sepa_1: TPanel
          Top = 201
          Width = 767
          inherited padr_sepa_new: TShape
            Width = 761
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 211
          Height = 260
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 238
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 731
          Top = 211
          Height = 260
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 238
              inherited padr_prio_impresion: TdxTreeList
                Height = 12
              end
            end
          end
        end
        inherited padr_pane_vist_previa: TPCPFrame
          Tag = 253
          Left = 36
          Top = 211
          Width = 695
          Height = 260
          Align = alClient
          inherited padr_preview: TRLPreview
            Width = 689
            Height = 254
            VertScrollBar.Position = 35
            inherited padr_Reporte: TRLReport
              Top = -28
              DataSource = data_orde_activas
              Margins.LeftMargin = 15
              inherited padr_repo_band_footer: TRLBand
                Top = 124
              end
              object RLBand1: TRLBand
                Left = 57
                Top = 105
                Width = 721
                Height = 19
              end
            end
          end
        end
        object pane_filtros: TPCPFrame
          Tag = 159
          Left = 0
          Top = 42
          Width = 767
          Height = 159
          Align = alTop
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Titulo_Color = 16244694
          FlatBorder = True
          object SCLDBLabel1: TSCLDBLabel
            Left = 8
            Top = 29
            Width = 100
            Height = 21
            Alive = False
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = edit_fech_inicial
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Fecha inicial:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel2: TSCLDBLabel
            Left = 304
            Top = 29
            Width = 100
            Height = 21
            Alive = False
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = edit_fech_final
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Fecha final:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object edit_fech_inicial: TdxDateEdit
            Left = 110
            Top = 29
            Width = 121
            TabOrder = 1
            StyleController = padr_estilo
            Date = -700000
            SaveTime = False
            UseEditMask = True
            StoredValues = 4
          end
          object edit_fech_final: TdxDateEdit
            Left = 406
            Top = 29
            Width = 121
            TabOrder = 2
            StyleController = padr_estilo
            Date = -700000
            SaveTime = False
            UseEditMask = True
            StoredValues = 4
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    Width = 804
    inherited padr_pane_2: TPanel
      Left = 733
    end
    inherited padr_pane_cerrar: TPanel
      Left = 751
    end
    inherited padr_pane_titulo: TPCPTituloGradiente
      Width = 733
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 795
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
    Width = 804
  end
  inherited padr_dock_bottom: TTBXDock
    Width = 804
  end
  inherited padr_dock_right: TTBXDock
    Left = 786
  end
  object quer_orde_activas: TQuery
    Active = True
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM PCP_PROD_ORDENES'
      'WHERE FECH_SISTEMA BETWEEN :FECH_INICIAL AND :FECH_FINAL'
      'ORDER BY NUME_PROD_ORDEN')
    Left = 22
    Top = 192
    ParamData = <
      item
        DataType = ftDate
        Name = 'FECH_INICIAL'
        ParamType = ptInput
        Value = 38353d
      end
      item
        DataType = ftDate
        Name = 'FECH_FINAL'
        ParamType = ptInput
        Value = 38718d
      end>
  end
  object data_orde_activas: TDataSource
    DataSet = quer_orde_activas
    Left = 54
    Top = 192
  end
end

inherited fn1_cont_prod_cons_indi_eficiencias: Tfn1_cont_prod_cons_indi_eficiencias
  Left = 115
  Top = 107
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Top = 134
          Width = 14
          Height = 298
          KeyField = 'MINU_CONTRATADOS'
          ShowGroupPanel = False
          TabOrder = 1
          Filter.Criteria = {00000000}
          object padr_gridFECH_LECTURA: TdxDBGridDateColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_LECTURA'
            SummaryFooterType = cstCount
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_CONTRATADOS: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_CONTRATADOS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_CONTRATADOS'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_TRAB_ESTANDAR: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_TRAB_ESTANDAR'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_TRAB_ESTANDAR'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_TRAB_NO_ESTANDAR: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_TRAB_NO_ESTANDAR'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_TRAB_NO_ESTANDAR'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_TRAB_CURVA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_TRAB_CURVA'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_TRAB_CURVA'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_TRABAJADOS: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_TRABAJADOS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_TRABAJADOS'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_EXTR_ESTANDAR: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_EXTR_ESTANDAR'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_EXTR_ESTANDAR'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_EXTR_NO_ESTANDAR: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_EXTR_NO_ESTANDAR'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_EXTR_NO_ESTANDAR'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_EXTRA: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_EXTRAS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_EXTRA'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_AUSE_ESTANDAR: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_AUSE_ESTANDAR'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_AUSE_ESTANDAR'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_AUSE_NO_ESTANDAR: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_AUSE_NO_ESTANDAR'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_AUSE_NO_ESTANDAR'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_AUSENTISMO: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_AUSENTISMOS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_AUSENTISMO'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_IMPR_ESTANDAR: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_IMPR_ESTANDAR'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_IMPR_ESTANDAR'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_IMPR_NO_ESTANDAR: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_IMPR_NO_ESTANDAR'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_IMPR_NO_ESTANDAR'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_IMPRODUCTIVOS: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_IMPRODUCTIVOS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_IMPRODUCTIVOS'
            SummaryFooterFormat = ',0'
          end
          object padr_gridMINU_PROD_ESTANDAR: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_PROD_ESTANDAR'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_PROD_ESTANDAR'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridMINU_PROD_CORTE: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_PROD_CORTE'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_PROD_CORTE'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridMINU_PROD_FABRICACION: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_PROD_FABRICACION'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_PROD_FABRICACION'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridMINU_PROD_NO_ESTANDAR: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_PROD_NO_ESTANDAR'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_PROD_NO_ESTANDAR'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridMINU_PROD_CURVA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_PROD_CURVA'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_PROD_CURVA'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridMINU_PRODUCIDOS: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MINU_PRODUCIDOS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'MINU_PRODUCIDOS'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridINDI_1_ESTANDAR: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'INDI_1_ESTANDAR'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'INDI_1_ESTANDAR'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridINDI_2_ESTANDAR: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'INDI_2_ESTANDAR'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'INDI_2_ESTANDAR'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridINDI_3_ESTANDAR: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'INDI_3_ESTANDAR'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'INDI_3_ESTANDAR'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridINDI_1_NO_ESTANDAR: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'INDI_1_NO_ESTANDAR'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'INDI_1_NO_ESTANDAR'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridINDI_2_NO_ESTANDAR: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'INDI_2_NO_ESTANDAR'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'INDI_2_NO_ESTANDAR'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridINDI_3_NO_ESTANDAR: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'INDI_3_NO_ESTANDAR'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'INDI_3_NO_ESTANDAR'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridINDI_1_TOTAL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'INDI_1_TOTAL'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'INDI_1_TOTAL'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridINDI_2_TOTAL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'INDI_2_TOTAL'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'INDI_2_TOTAL'
            SummaryFooterFormat = ',0.00'
          end
          object padr_gridINDI_3_TOTAL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'INDI_3_TOTAL'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'INDI_3_TOTAL'
            SummaryFooterFormat = ',0.00'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          inherited padr_barra: TTBXToolbar
            inherited padr_boto_vinculos: TTBXSubmenuItem
              LinkSubitems = _fMDI.menu_control_produccion
              Visible = True
            end
            object TBXVisibilityToggleItem1: TTBXVisibilityToggleItem [19]
              Caption = 'Ver gr�fica'
              Control = dock_pane_imagen
              ImageIndex = 60
              Images = _fMDI.imag_grandes
            end
          end
        end
        inherited padr_pane_sepa_2: TPanel
          Top = 131
          TabOrder = 3
        end
        inherited padr_pane_sepa_1: TPanel
          Top = 124
          TabOrder = 4
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 134
          Height = 298
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 276
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = -15
          Top = 134
          Height = 298
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 276
              inherited padr_prio_impresion: TdxTreeList
                Height = 50
              end
            end
          end
        end
        object pane_filtros: TPCPFrame
          Tag = 82
          Left = 0
          Top = 42
          Width = 556
          Height = 82
          Align = alTop
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
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
            FocusControl = comb_codi_personal
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'C�digo:'
            Transparent = True
            DataSource = myData_Ventana
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'cons_personal'
            Field = 'cons_personal'
          end
          object SCLDBLabel2: TSCLDBLabel
            Left = 256
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
            FocusControl = comb_nomb_personal
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Nombres:'
            Transparent = True
            DataSource = myData_Ventana
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'cons_personal'
            Field = 'cons_personal'
          end
          object SCLDBLabel3: TSCLDBLabel
            Left = 8
            Top = 49
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
            FocusControl = dxDBDateEdit1
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Fecha inicial:'
            Transparent = True
            DataSource = myData_Ventana
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'fech_inicial'
            Field = 'fech_inicial'
          end
          object SCLDBLabel4: TSCLDBLabel
            Left = 256
            Top = 49
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
            FocusControl = dxDBDateEdit2
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Fecha final:'
            Transparent = True
            DataSource = myData_Ventana
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'fech_Final'
            Field = 'fech_Final'
          end
          object comb_codi_personal: TPCPLookUpComboEdit
            Left = 110
            Top = 29
            Width = 145
            Height = 21
            DropDownCount = 8
            DataField = 'cons_personal'
            DataSource = myData_Ventana
            KeyField = 'CONS_PERSONAL'
            ListField = 'CODI_PERSONAL'
            ListSource = data_pers_codigo
            TabOrder = 1
            OnChange = actualizarConsulta
            DirectInput = False
          end
          object comb_nomb_personal: TPCPLookUpComboEdit
            Left = 358
            Top = 29
            Width = 306
            Height = 21
            DropDownCount = 8
            DataField = 'cons_personal'
            DataSource = myData_Ventana
            KeyField = 'CONS_PERSONAL'
            ListField = 'NOMB_COMPLETO'
            ListSource = data_pers_nombre
            TabOrder = 2
            OnChange = actualizarConsulta
            DirectInput = False
          end
          object dxDBDateEdit1: TdxDBDateEdit
            Left = 110
            Top = 49
            Width = 145
            TabOrder = 3
            DataField = 'fech_inicial'
            DataSource = myData_Ventana
            StyleController = padr_estilo
            OnChange = actualizarConsulta
            DateOnError = deToday
            DateValidation = True
            SaveTime = False
            UseEditMask = True
            StoredValues = 4
          end
          object dxDBDateEdit2: TdxDBDateEdit
            Left = 358
            Top = 49
            Width = 145
            TabOrder = 4
            DataField = 'fech_Final'
            DataSource = myData_Ventana
            StyleController = padr_estilo
            OnChange = actualizarConsulta
            DateOnError = deToday
            DateValidation = True
            SaveTime = False
            UseEditMask = True
            StoredValues = 4
          end
        end
        object dock_imagen: TTBXDock
          Left = 180
          Top = 134
          Width = 376
          Height = 298
          Position = dpRight
          object dock_pane_imagen: TTBXDockablePanel
            Left = 0
            Top = 0
            Caption = 'Gr�fica'
            DefaultDock = dock_imagen
            DockedWidth = 372
            DockedHeight = 100
            DockPos = 0
            FloatingWidth = 293
            FloatingHeight = 128
            SplitHeight = 2
            SplitWidth = 2
            SupportedDocks = [dkStandardDock, dkMultiDock]
            SnapDistance = 2
            TabOrder = 0
            Visible = False
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 372
              Height = 278
              Align = alClient
              BevelOuter = bvNone
              BorderWidth = 2
              Color = clWhite
              TabOrder = 0
              object Grafica: TxyGraph
                Left = 2
                Top = 2
                Width = 368
                Height = 265
                XAxis.Title = 'Fecha'
                XAxis.LabelDecimals = 0
                XAxis.LogScale = False
                XAxis.Max = 39052.6026817477
                XAxis.Min = 39047.6026817477
                XAxis.StepSize = 2.00000000109486
                XAxis.ShowAsTime = True
                XAxis.DateTimeFormat = 'dd-mmm'
                XAxis.DateTickType = dt_daily
                XAxis.ShowAxis = True
                XAxis.Reversed = False
                XAxis.OffsetType = ao_Minimum
                XAxis.Gridlines = True
                XAxis.AutoSizing = True
                XAxis.AutoStepping = True
                YAxis.Title = 'Y axis'
                YAxis.LabelDecimals = 0
                YAxis.LogScale = False
                YAxis.Max = 150
                YAxis.StepSize = 0.2
                YAxis.DateTimeFormat = 'dd-mmm'
                YAxis.DateTickType = dt_custom
                YAxis.ShowAxis = True
                YAxis.Reversed = False
                YAxis.OffsetType = ao_Minimum
                YAxis.Gridlines = True
                YAxis.AutoSizing = False
                YAxis.AutoStepping = False
                YAxis_Second.Title = 'Second Y axis'
                YAxis_Second.LogScale = False
                YAxis_Second.Max = 1
                YAxis_Second.StepSize = 0.2
                YAxis_Second.DateTimeFormat = 'dd-mmm'
                YAxis_Second.DateTickType = dt_minute
                YAxis_Second.ShowAxis = False
                YAxis_Second.Reversed = True
                YAxis_Second.OffsetType = ao_Maximum
                YAxis_Second.Gridlines = False
                YAxis_Second.AutoSizing = False
                YAxis_Second.AutoStepping = False
                Appearance.BackgroundColor = clWhite
                Appearance.PrintBkgndColor = False
                Appearance.ErrorCaption = 'Inconsistencia de valores'
                Appearance.GraphTitle = 'Eficiencia individual'
                Appearance.TitleFont.Charset = DEFAULT_CHARSET
                Appearance.TitleFont.Color = clBlack
                Appearance.TitleFont.Height = -11
                Appearance.TitleFont.Name = 'Tahoma'
                Appearance.TitleFont.Style = []
                Appearance.LabelFont.Charset = DEFAULT_CHARSET
                Appearance.LabelFont.Color = clBlack
                Appearance.LabelFont.Height = -9
                Appearance.LabelFont.Name = 'Tahoma'
                Appearance.LabelFont.Style = []
                Align = alTop
                BevelOuter = bvNone
                BorderStyle = bsNone
                Color = clWhite
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
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Consulta individual de novedades'
      Caption = 'Consulta individual de novedades'
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
    inherited padr_acti_consultar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_befo_print_fortes: TAction
      OnExecute = padr_acti_befo_print_fortesExecute
    end
  end
  inherited padr_imagenes: TImageList
    Bitmap = {
      494C010119001D00040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000000001000001002000000000000000
      0200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF9A1600FF8003
      03FF800303FF800303FF800303FF800303FF800303FF800303FF800303FF9613
      00FF800303FF800303FF800303FF800303FF800303FF800303FF800303FF8003
      03FF800303FF800303FF941200FF800303FF800303FF800303FF800303FF8003
      03FF800303FF8C1818FFAB2601FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFA92501FFCBCB
      CBFFD6D6D6FFD8D8D8FFD9D9D9FFDBDBDBFFDBDBDBFFDDDDDDFFDADADAFFAB26
      01FFD8D8D8FFDADADAFFDDDDDDFFDEDEDEFFE0E0E0FFE3E3E3FFE4E4E4FFE6E6
      E6FFE8E8E8FFEAEAEAFFECECECFFEEEEEEFFF0F0F0FFF2F2F2FFF4F4F4FFF6F6
      F6FFF7F7F7FFF9F9F9FFA92501FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFA72301FFD5D5
      D5FF000000FF000000FF000000FF000000FF000000FF000000FFDEDEDEFFA825
      01FFD8D8D8FFDADADAFFDDDDDDFFDEDEDEFFE0E0E0FFE4E4E4FF6F6FF2FFEAEA
      EAFFECECECFFEDEDEDFFECECECFFEEEEEEFFEDEDEEFFEFEFEFFFF4F4F4FFF6F6
      F6FFF7F7F7FFF9F9F9FFA72301FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFA42101FFCECE
      CEFFD6D6D6FFD8D8D8FFD9D9D9FFDBDBDBFFDBDBDBFFDDDDDDFFDEDEDEFFA623
      01FFD8D8D8FFDADADAFFDDDDDDFFDEDEDEFFE0E0E0FF7255D0FF0C05F6FF2B12
      DFFF2B12DFFF2B12DFFF2B12DFFF2B12DFFF0802F7FF7356D3FFF4F4F4FFF6F6
      F6FFF7F7F7FFF9F9F9FFA42101FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF941100FF8003
      03FF800303FF800303FF800303FF800303FF800303FF800303FF800303FF920F
      00FFD8D8D8FFDADADAFFDDDDDDFFDEDEDEFFE0E0E0FFE3E3E3FF8585EEFFE6E6
      E6FFE8E8E8FFEAEAEAFFECECECFFEEEEEEFFEDEDEEFFF2F2F2FFF4F4F4FFF6F6
      F6FFF7F7F7FFF9F9F9FFA21F02FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFA01D02FFC8C8
      C8FFC9C9C9FFCBCBCBFFCDCDCDFFCFCFCFFFD1D1D1FFD3D3D3FFDCDCDCFFA21F
      02FFD8D8D8FFDADADAFFDDDDDDFFDEDEDEFFE0E0E0FFE4E4E4FFE7E7E7FFEAEA
      EAFFECECECFFEDEDEDFFEFEFEFFFF0F0F0FFF2F2F2FFF4F4F4FFF4F4F4FFF6F6
      F6FFF7F7F7FFF9F9F9FFA01D02FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF9E1C02FFC8C8
      C8FFC9C9C9FFCBCBCBFFCDCDCDFFCFCFCFFFD1D1D1FFD3D3D3FFDCDCDCFFA01E
      02FFD8D8D8FFDADADAFFDDDDDDFFDEDEDEFFE0E0E0FF1F0C86FF0A0391FF0A03
      91FF0A0391FF0A0391FF0A0391FF0A0391FF0A0391FF1F0C86FFF5F5F5FFF6F6
      F6FFF7F7F7FFF9F9F9FF9E1C02FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF9D1A02FFCCCC
      CCFFD3D3D3FFD4D4D4FFD6D6D6FFD7D7D7FFD9D9D9FFDADADAFFE4E4E4FF9D1C
      02FFD8D8D8FFDADADAFFDDDDDDFFDEDEDEFFE0E0E0FF0F069AFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF0F069AFFF5F5F5FFF6F6
      F6FFF7F7F7FFF9F9F9FF9D1A02FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF9B1803FF8C18
      18FF800303FF800303FF800303FF800303FF800303FF800303FF800303FF8C0A
      00FFD8D8D8FFDADADAFFDDDDDDFFDEDEDEFFE0E0E0FF150AA0FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF150AA0FFF5F5F5FFF6F6
      F6FFF7F7F7FFF9F9F9FF9B1803FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF981703FFC8C8
      C8FFC9C9C9FFCBCBCBFFCDCDCDFFCFCFCFFFD1D1D1FFD3D3D3FFDFDFDFFF9A18
      03FFD8D8D8FFDADADAFFDDDDDDFFDEDEDEFFE0E0E0FF1B0EA9FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF1B0EA9FFF5F5F5FFF6F6
      F6FFF7F7F7FFF9F9F9FF981703FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF961503FFC8C8
      C8FFC9C9C9FFCBCBCBFFCDCDCDFFCFCFCFFFD1D1D1FFD3D3D3FFDCDCDCFF9716
      03FFD8D8D8FFDADADAFFDDDDDDFFDEDEDEFFE0E0E0FF2212AFFF000000FF5744
      E3FF5744E3FF3B37F7FF5744E3FF5744E3FF000000FF2212AFFFF5F5F5FFF6F6
      F6FFF7F7F7FFF9F9F9FF961503FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF941304FFC8C8
      C8FFC9C9C9FFCBCBCBFFCDCDCDFFCFCFCFFFD1D1D1FFD3D3D3FFDFDFDFFF9514
      04FFD8D8D8FFDADADAFFDDDDDDFFDEDEDEFFE0E0E0FF2817B9FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF2817B9FFF5F5F5FFF6F6
      F6FFF7F7F7FFF9F9F9FF941304FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF931304FF8C18
      18FF800303FF800303FF800303FF800303FF800303FF800303FF800303FF8706
      00FFD8D8D8FFDADADAFFDDDDDDFFDEDEDEFFE0E0E0FF2F1BBDFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF2F1BBDFFF5F5F5FFF6F6
      F6FFF7F7F7FFF9F9F9FF931304FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF911104FFC6C6
      C6FFD3D3D3FFD4D4D4FFD6D6D6FFD7D7D7FFD9D9D9FFDADADAFFE4E4E4FF9012
      04FFD8D8D8FFDADADAFFDDDDDDFFDEDEDEFFE0E0E0FF2E19CEFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF2E19CEFFF5F5F5FFF6F6
      F6FFF7F7F7FFF9F9F9FF911104FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF8F0F05FFC6C6
      C6FFC8C8C8FFCACACAFFCCCCCCFFCECECEFFD0D0D0FFD2D2D2FFDCDCDCFF8F10
      05FFD8D8D8FFDADADAFFDDDDDDFFDEDEDEFFE0E0E0FF4220D3FF2A12E0FF2A12
      E0FF2A12E0FF2A12E0FF2A12E0FF2A12E0FF2A12E0FF4220D3FFF5F5F5FFF6F6
      F6FFF7F7F7FFF9F9F9FF8F0F05FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF8B0D05FFC6C6
      C6FFC8C8C8FFCACACAFFCCCCCCFFCECECEFFCFCFCFFFD2D2D2FFDCDCDCFF8D0E
      05FFD9D9D9FFDADADAFFDDDDDDFFDEDEDEFFE0E0E0FFE4E4E4FFE7E7E7FFEAEA
      EAFFECECECFFEDEDEDFFEFEFEFFFF0F0F0FFF2F2F2FFF2F2F2FFF4F4F4FFF6F6
      F6FFF7F7F7FFF9F9F9FF8B0D05FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF8A0B05FF8C18
      18FF800303FF800303FF800303FF800303FF800303FF800303FF800303FF8402
      00FF800303FF800303FF800303FF800303FF800303FF800303FF800303FF8003
      03FF800303FF800303FF830100FF800303FF800303FF800303FF800303FF8003
      03FF800303FF8C1818FF8A0B05FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF880A06FFD1D1
      D1FFD3D3D3FFD4D4D4FFD6D6D6FFD7D7D7FFD9D9D9FFDADADAFFE4E4E4FF880C
      06FFDADADAFFDBDBDBFFDDDDDDFFE0E0E0FFE2E2E2FFE4E4E4FFE6E6E6FFE8E8
      E8FFEAEAEAFFECECECFF880A06FFF4F4F4FFF2F2F2FFF4F4F4FFF5F5F5FFF7F7
      F7FFF8F8F8FFF9F9F9FF880A06FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF860806FFC6C6
      C6FFC8C8C8FFCACACAFFCCCCCCFFCECECEFFD0D0D0FFD2D2D2FFDCDCDCFF860A
      06FFD8D8D8FFDADADAFFDCDCDCFFDEDEDEFFE0E0E0FFE2E2E2FFE4E4E4FFE6E6
      E6FFE8E8E8FFEAEAEAFF860806FFEFEFEFFFF0F0F0FFF2F2F2FFF4F4F4FFF6F6
      F6FFF7F7F7FFF9F9F9FF860806FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF850606FFC6C6
      C6FFC8C8C8FFCACACAFFCCCCCCFFCECECEFFD0D0D0FFD2D2D2FFDCDCDCFF8508
      06FFD8D8D8FFDADADAFFDCDCDCFFDEDEDEFFE0E0E0FFE2E2E2FFE4E4E4FFE6E6
      E6FFE8E8E8FFEAEAEAFF850606FFF0F0F0FFF0F0F0FFF2F2F2FFF4F4F4FFF6F6
      F6FFF7F7F7FFF9F9F9FF850606FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF800202FF8307
      07FF830707FF830707FF830707FF830707FF830707FF830707FF830707FF7F01
      01FF830707FF830707FF830707FF830707FF830707FF830707FF830707FF8307
      07FF830707FF830707FF7F0101FF830707FF830707FF830707FF830707FF8307
      07FF830707FF830707FF800202FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF830707FFF4A2
      85FFF4A285FFF4A285FFF4A285FFF4A285FFF4A285FFF4A285FFF4AB92FF9020
      20FFF4A285FFF4A285FFF4A285FFF4A285FFF4A285FFF4A285FFF4A285FFF4A2
      85FFF4A285FFF4A285FF902020FFF4AB92FFF4A285FFF4A285FFF4A285FFF4A2
      85FFF4A285FFF4A285FF830707FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF830707FFF592
      71FFF59271FFF59271FFF59271FFF59271FFF59271FFF59271FFF7A489FF8307
      07FFF59271FFF59271FFF59271FFF59271FFF59271FFF59271FFF59271FFF592
      71FFF59271FFF59271FF830707FFF7A489FFF59271FFF59271FFF59271FFF592
      71FFF59271FFF59271FF830707FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF830707FFF795
      75FFF79575FFF79575FFF79575FFF79575FFF79575FFF79575FFF7A78CFF8307
      07FFF79575FFF79575FFF79575FFF79575FFF79575FFF79575FFF79575FFF795
      75FFF79575FFF79575FF830707FFF7A78CFFF79575FFF79575FFF79575FFF795
      75FFF79575FFF79575FF830707FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF881111FF8307
      07FF830707FF830707FF830707FF830707FF830707FF830707FF830707FF7F01
      01FF830707FF830707FF830707FF830707FF830707FF830707FF830707FF8307
      07FF830707FF830707FF7F0101FF830707FF830707FF830707FF830707FF8307
      07FF830707FF830707FF881111FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000006699
      9900669999006699990066999900669999006699990066999900669999006699
      9900669999006699990066999900669999006699990066999900669999006699
      9900669999006699990066999900669999006699990066999900669999006699
      9900669999000066660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000666600006666000066
      6600006666000066660000666600006666000066660000666600006666000066
      6600006666000066660000666600006666000066660000666600006666000066
      6600006666000066660000666600006666000066660000666600006666000066
      6600006666006699990000666600000000000000000000000000000000000000
      000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000006699990099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC00669999006699
      9900669999000066660000666600000000000000000000000000000000000000
      00004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0066660000666600006666000066
      6600006666000066660000666600006666000066660000666600006666000066
      6600006666000066660000666600006666000066660000666600006666000066
      6600006666000066660000666600006666000066660000666600006666000066
      66006699990000666600006666000000000000000000000000004A4A4AFF4A4A
      4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECECEFFCECE
      CEFF323232FFBBBBBBFFCECECEFFCECECEFF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF9C1C06FF8D1C
      1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF9715
      02FF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C
      1CFF8D1C1CFF8D1C1CFF951402FF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C
      1CFF8D1C1CFFA74F4FFFB03512FF000000FF6699990099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC000066
      660066999900669999000066660000000000000000004A4A4AFF4A4A4AFF4A4A
      4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECECEFFCECECEFF8383
      83FF686868FF4B4B4BFFBBBBBBFFCECECEFFCECECEFF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFAF3413FFD6D6
      D6FFE4E4E4FFE5E5E5FFE6E6E6FFE7E7E7FFE7E7E7FFE8E8E8FFE4E4E4FFB035
      12FFDCDCDCFFDEDEDEFFE0E0E0FFE1E1E1FFE3E3E3FFE5E5E5FFE6E6E6FFE8E8
      E8FFEAEAEAFFEBEBEBFFEDEDEDFFEFEFEFFFF1F1F1FFF3F3F3FFF4F4F4FFF6F6
      F6FFF7F7F7FFFAFAFAFFAF3413FF000000FF000000006699990099FFFF00FFFF
      FF0099FFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC00FFFFFF0099FF
      FF00FFFFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC00FFFFFF0099FF
      FF00FFFFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC00FFFFFF0099CC
      CC000066660066999900006666000000000000000000000000004A4A4AFF4A4A
      4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECECEFFCECECEFF3939
      39FFBBBBBBFFBBBBBBFF4B4B4BFFBBBBBBFFCECECEFFCECECEFF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFAE3415FFE3E3
      E3FF000000FF000000FF000000FF000000FF000000FF000000FFE9E9E9FFAE35
      14FFDCDCDCFFDEDEDEFFE0E0E0FFE1E1E1FFE3E3E3FFEAEAEAFFEEEEEEFFF0F0
      F0FFF1F1F1FFF2F2F2FFF3F3F3FFF4F4F4FFFCA284FFF6F6F6FFF4F4F4FFF6F6
      F6FFF7F7F7FFFAFAFAFFAE3415FF000000FF0000000066999900FFFFFF0099FF
      FF00FFFFFF0099CCCC00FFFFFF0099FFFF00FFFFFF0099CCCC0099FFFF00FFFF
      FF0099FFFF0099CCCC00FFFFFF0099FFFF00FFFFFF0099CCCC0099FFFF00FFFF
      FF0099FFFF0099CCCC00FFFFFF0099FFFF00FFFFFF0099CCCC0099FFFF00FFFF
      FF00006666006699990000666600000000000000000000000000000000000000
      00004A4A4AFF4A4A4AFF4A4A4AFF000000FFCECECEFFCECECEFF969696FF5E5E
      5EFFCECECEFFCECECEFFBBBBBBFF4B4B4BFFBBBBBBFFCECECEFFCECECEFF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFAB3316FFDCDC
      DCFFE4E4E4FFE5E5E5FFE6E6E6FFE7E7E7FFE7E7E7FFE8E8E8FFE9E9E9FFAD34
      15FFDCDCDCFFDEDEDEFFE0E0E0FFE1E1E1FFE3E3E3FFF99F82FFFF6F3FFFFF6F
      3FFFFF6F3FFFFF6F3FFFFF6F3FFFFF6F3FFFFF5720FFFCA284FFF4F4F4FFF6F6
      F6FFF7F7F7FFFAFAFAFFAB3316FF000000FF000000006699990099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC00669999003366660000666600000000000000000000000000000000000000
      000000000000000000004A4A4AFF000000FFCECECEFFCECECEFF4B4B4BFFA9A9
      A9FFCECECEFFCECECEFFCECECEFFBBBBBBFF4B4B4BFFBBBBBBFFCECECEFFCECE
      CEFF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00000000000000000000000000CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF0004040400000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF971908FF8D1C
      1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF9312
      03FFDCDCDCFFDEDEDEFFE0E0E0FFE1E1E1FFE3E3E3FFE5E5E5FFE6E6E6FFE8E8
      E8FFEAEAEAFFEBEBEBFFEDEDEDFFEFEFEFFFF8A58AFFF4F4F4FFF4F4F4FFF6F6
      F6FFF7F7F7FFFAFAFAFFAA3217FF000000FF000000000000000066999900CCFF
      FF00FFFFFF00CCFFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC0099FF
      FF00FFFFFF0099FFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC0099FF
      FF00FFFFFF0099FFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC0099FF
      FF0099CCCC003366660000666600000000000000000000000000000000000000
      00000000000000000000000000FFE6E6E6FFCECECEFFA9A9A9FF4B4B4BFFCECE
      CEFFCECECEFFCECECEFFCECECEFFBBBBBBFF575757FF4B4B4BFFBBBBBBFFCECE
      CEFFCECECEFF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF000000
      0000000000008080800080808000808080000000000000000000CFCFCF00CFCF
      CF00CFCFCF00CFCFCF000000000000000000C0C0C000C0C0C000C0C0C0000000
      000000000000000000000000000000000000000000FF000000FFA83118FFCFCF
      CFFFD0D0D0FFD2D2D2FFD3D3D3FFD5D5D5FFD6D6D6FFD8D8D8FFE6E6E6FFAA33
      18FFDCDCDCFFDEDEDEFFE0E0E0FFE1E1E1FFE3E3E3FFEAEAEAFFEEEEEEFFF0F0
      F0FFF1F1F1FFF2F2F2FFF3F3F3FFF4F4F4FFF5F5F5FFF7F7F7FFF4F4F4FFF6F6
      F6FFF7F7F7FFFAFAFAFFA83118FF000000FF000000000000000066999900FFFF
      FF00CCFFFF00FFFFFF0099CCCC00FFFFFF0099FFFF00FFFFFF0099CCCC00FFFF
      FF0099FFFF00FFFFFF0099CCCC00FFFFFF0099FFFF00FFFFFF0099CCCC00FFFF
      FF0099FFFF00FFFFFF0099CCCC00FFFFFF0099FFFF00FFFFFF0099CCCC00FFFF
      FF0099FFFF000066660000666600000000000000000000000000000000000000
      00000000000000000000000000FFE6E6E6FFE6E6E6FF666666FF969696FFCECE
      CEFFCECECEFFCECECEFFCECECEFF717171FF838383FFBBBBBBFF4B4B4BFFBBBB
      BBFFCECECEFFCECECEFF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E4000000
      0000808080008080800080808000808080008080800000000000CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00000000008080800004040400C0C0C000C0C0C000C0C0
      C00000000000000000000000000000000000000000FF000000FFA7311AFFCFCF
      CFFFD0D0D0FFD2D2D2FFD3D3D3FFD5D5D5FFD6D6D6FFD8D8D8FFE6E6E6FFA832
      19FFDCDCDCFFDEDEDEFFE0E0E0FFE1E1E1FFE3E3E3FFBE4E2AFFB6380FFFB638
      0FFFB6380FFFB6380FFFB6380FFFB6380FFFB6380FFFBE4E2AFFF7F7F7FFF6F6
      F6FFF7F7F7FFFAFAFAFFA7311AFF000000FF000000000000000066999900CCFF
      FF00FFFFFF00CCFFFF0099CCCC00FFFFFF00FFFFFF00FFFFFF0099CCCC0099FF
      FF00FFFFFF0099FFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC0099FF
      FF00FFFFFF0099FFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC0099FF
      FF00FFFFFF003366660033666600000000000000000000000000000000000000
      000000000000000000FFE6E6E6FFE6E6E6FFD0D0D0FF3B3B3BFFE6E6E6FFE6E6
      E6FFCECECEFFCECECEFFBBBBBBFF393939FFCECECEFFCECECEFFBBBBBBFF4B4B
      4BFFBBBBBBFFCECECEFFCECECEFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E40000000000C0C0
      C000C0C0C000C0C0C0008080800080808000808080008080800000000000CFCF
      CF00CFCFCF000000000080808000808080008080800004040400C0C0C000C0C0
      C000C0C0C000000000000000000000000000000000FF000000FFA6301BFFD9D9
      D9FFE0E0E0FFE1E1E1FFE2E2E2FFE3E3E3FFE4E4E4FFE5E5E5FFEEEEEEFFA631
      1AFFDCDCDCFFDEDEDEFFE0E0E0FFE1E1E1FFE3E3E3FFBF3E14FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFBF3E14FFF7F7F7FFF6F6
      F6FFF7F7F7FFFAFAFAFFA6301BFF000000FF00000000000000006699990099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC003366660000666600000000000000000000000000000000000000
      000000000000000000FFE6E6E6FFE6E6E6FF7B7B7BFF909090FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FF7B7B7BFF909090FFE6E6E6FFE6E6E6FFE6E6E6FFD0D0
      D0FF343434FFE6E6E6FFE6E6E6FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C00004040400C0C0C000C0C0
      C000C0C0C000000000000000000000000000000000FF000000FFA52F1CFFA74F
      4FFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8E0E
      04FFDCDCDCFFDEDEDEFFE0E0E0FFE1E1E1FFE3E3E3FFCA461BFF000000FF0000
      00FF000000FFFE8F6AFF000000FF000000FF000000FFCA461BFFF7F7F7FFF6F6
      F6FFF7F7F7FFFAFAFAFFA52F1CFF000000FF000000000000000066999900FFFF
      FF00FFFFFF00CCFFFF0099CCCC00CCFFFF00FFFFFF00CCFFFF0099CCCC00CCFF
      FF00FFFFFF00CCFFFF0099CCCC00CCFFFF00FFFFFF0099FFFF0099CCCC0099FF
      FF00FFFFFF0099FFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC0099FF
      FF00FFFFFF003366660000666600000000000000000000000000000000000000
      0000000000FFE6E6E6FFE6E6E6FFE6E6E6FF343434FFA6A6A6FFE6E6E6FFE6E6
      E6FFE6E6E6FFD0D0D0FF3B3B3BFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF9090
      90FF7B7B7BFFE6E6E6FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E40000000000C0C0
      C00000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000E4E4
      E400E4E4E40000000000C0C0C000C0C0C00004040400C0C0C000C0C0C000C0C0
      C000C0C0C000000000000000000000000000000000FF000000FFA3301EFFCFCF
      CFFFD0D0D0FFD2D2D2FFD3D3D3FFD5D5D5FFD6D6D6FFD8D8D8FFEAEAEAFFA430
      1DFFDCDCDCFFDEDEDEFFE0E0E0FFE1E1E1FFE3E3E3FFD24D21FF000000FF0000
      00FF000000FFFE8F6AFF000000FF000000FF000000FFD24D21FFF7F7F7FFF6F6
      F6FFF7F7F7FFFAFAFAFFA3301EFF000000FF000000000000000066999900FFFF
      FF00FFFFFF00FFFFFF0099CCCC00FFFFFF00CCFFFF00FFFFFF0099CCCC00FFFF
      FF00CCFFFF00FFFFFF0099CCCC00FFFFFF0099FFFF00FFFFFF0099CCCC00FFFF
      FF0099FFFF00FFFFFF0099CCCC00FFFFFF0099FFFF00FFFFFF0099CCCC00FFFF
      FF0099FFFF003366660000666600000000000000000000000000000000000000
      0000000000FFE6E6E6FFE6E6E6FFE6E6E6FFD0D0D0FF666666FF666666FFD0D0
      D0FFE6E6E6FF7B7B7BFF909090FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF3B3B
      3BFFD0D0D0FFE6E6E6FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E4000000
      0000C0C0C00000000000C0C0C000C0C0C000C0C0C00000000000E4E4E400E4E4
      E400E4E4E400E4E4E40000000000C0C0C00004040400C0C0C000C0C0C000C0C0
      C00000000000000000000000000000000000000000FF000000FFA12F1FFFCFCF
      CFFFD0D0D0FFD2D2D2FFD3D3D3FFD5D5D5FFD6D6D6FFD8D8D8FFE6E6E6FFA22F
      1EFFDCDCDCFFDEDEDEFFE0E0E0FFE1E1E1FFE3E3E3FFDC5427FF000000FFFE8F
      6AFFFE8F6AFFFE7D51FFFE8F6AFFFE8F6AFF000000FFDC5427FFF7F7F7FFF6F6
      F6FFF7F7F7FFFAFAFAFFA12F1FFF000000FF000000000000000066999900FFFF
      FF00FFFFFF00FFFFFF0099CCCC00CCFFFF00FFFFFF00CCFFFF0099CCCC00CCFF
      FF00FFFFFF00CCFFFF0099CCCC00CCFFFF00FFFFFF00FFFFFF0099CCCC0099FF
      FF00FFFFFF0099FFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC0099FF
      FF00FFFFFF003366660000666600000000000000000000000000000000000000
      00FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFA6A6A6FF5050
      50FFA6A6A6FF505050FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFBBBBBBFF5050
      50FFE6E6E6FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000000
      000000000000C0C0C00000000000C0C0C0000000000000000000E4E4E400E4E4
      E400E4E4E400E4E4E4000000000000000000C0C0C000C0C0C000C0C0C0000000
      000000000000000000000000000000000000000000FF000000FFA02E20FFCFCF
      CFFFD0D0D0FFD2D2D2FFD3D3D3FFD5D5D5FFD6D6D6FFD8D8D8FFEAEAEAFFA12F
      20FFDCDCDCFFDEDEDEFFE0E0E0FFE1E1E1FFE3E3E3FFE55A2DFF000000FF0000
      00FF000000FFFE8F6AFF000000FF000000FF000000FFE55A2DFFF7F7F7FFF6F6
      F6FFF7F7F7FFFAFAFAFFA02E20FF000000FF00000000000000006699990099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC00663399006633
      990066339900663399006633990099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC003366660000666600000000000000000000000000000000000000
      00FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFD0D0
      D0FF666666FF666666FFD0D0D0FFE6E6E6FFE6E6E6FFE6E6E6FF505050FFBBBB
      BBFFE6E6E6FF000000FF0000000000000000C0C0C0FF585858FFC0C0C0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400000000000000000000000000E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF9F2E21FFA74F
      4FFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF890A
      04FFDCDCDCFFDEDEDEFFE0E0E0FFE1E1E1FFE3E3E3FFED6133FF000000FF0000
      00FF000000FFFE8F6AFF000000FF000000FF000000FFED6133FFF7F7F7FFF6F6
      F6FFF7F7F7FFFAFAFAFF9F2E21FF000000FF000000000000000066999900FFFF
      FF00FFFFFF00FFFFFF0099CCCC00FFFFFF00FFFFFF00CCFFFF0066339900CCFF
      FF00FFFFFF00CCFFFF0066339900CCFFFF00FFFFFF00CCFFFF0099CCCC00CCFF
      FF00FFFFFF0099FFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC0099FF
      FF00FFFFFF003366660000666600000000000000000000000000000000FFE6E6
      E6FFE6E6E6FFFD7A4EFFFE794CFFFE794CFFF8916EFFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFA6A6A6FF505050FFA6A6A6FFE6E6E6FFD0D0D0FF3B3B3BFFE6E6
      E6FF000000FF000000000000000000000000C0C0C0FFA3A3A3FF494949FFC0C0
      C0FF000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E40000000000E4E4E400E4E4E4000000
      0000E4E4E400E4E4E40004040400000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF9E2E23FFCACA
      CAFFE0E0E0FFE1E1E1FFE2E2E2FFE3E3E3FFE4E4E4FFE5E5E5FFEEEEEEFF9D2E
      22FFDCDCDCFFDEDEDEFFE0E0E0FFE1E1E1FFE3E3E3FFF66838FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFF66838FFF7F7F7FFF6F6
      F6FFF7F7F7FFFAFAFAFF9E2E23FF000000FF000000000000000066999900FFFF
      FF00FFFFFF00FFFFFF0099CCCC00FFFFFF00FFFFFF00FFFFFF0066339900FFFF
      FF00CCFFFF00FFFFFF0066339900FFFFFF00CCFFFF00FFFFFF0099CCCC00FFFF
      FF00CCFFFF00FFFFFF0099CCCC00FFFFFF0099FFFF00FFFFFF0099CCCC00FFFF
      FF0099FFFF003366660000666600000000000000000000000000000000FFE6E6
      E6FFE6E6E6FFF69979FFF69979FFF8916EFFEBCEC4FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFD0D0D0FF666666FF666666FF727272FF909090FFE6E6
      E6FF000000FFC0C0C0FF808080FF808080FF808080FF404040FF4C4C4CFF2E2E
      2EFFC0C0C0FF0000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000000000000000000E4E4
      E400E4E4E400E4E4E40004040400000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF9D2D24FFC7C7
      C7FFC9C9C9FFCBCBCBFFCDCDCDFFCFCFCFFFD1D1D1FFD3D3D3FFE6E6E6FF9D2E
      24FFDCDCDCFFDEDEDEFFE0E0E0FFE1E1E1FFE3E3E3FFFF7E54FFFF6E3EFFFF6E
      3EFFFF6E3EFFFF6E3EFFFF6E3EFFFF6E3EFFFF6E3EFFFF7E54FFF7F7F7FFF6F6
      F6FFF7F7F7FFFAFAFAFF9D2D24FF000000FF000000000000000066999900FFFF
      FF00FFFFFF00FFFFFF0099CCCC00FFFFFF00FFFFFF00FFFFFF0066339900FFFF
      FF00FFFFFF00CCFFFF0066339900CCFFFF00FFFFFF00CCFFFF0099CCCC00CCFF
      FF00FFFFFF00CCFFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC0099FF
      FF00FFFFFF0033666600006666000000000000000000000000FFE6E6E6FFE6E6
      E6FFE6E6E6FFF5D0C3FFF69D7FFFEBCEC4FFF8916EFFF3A990FFE8DAD5FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFA6A6A6FF343434FFE6E6E6FF0000
      00FF1C1C1CFF2A2A2AFF323232FF323232FF323232FF333333FF242424FF4C4C
      4CFF2E2E2EFFC0C0C0FF00000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF9A2C25FFCACA
      CAFFCBCBCBFFCDCDCDFFCFCFCFFFD1D1D1FFD2D2D2FFD4D4D4FFE6E6E6FF9B2D
      25FFE0E0E0FFDEDEDEFFE0E0E0FFE1E1E1FFE3E3E3FFE8E8E8FFEEEEEEFFF0F0
      F0FFF1F1F1FFF2F2F2FFF3F3F3FFF4F4F4FFF5F5F5FFF4F4F4FFF4F4F4FFF6F6
      F6FFF7F7F7FFFAFAFAFF9A2C25FF000000FF00000000000000006699990099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC00663399006633
      990066339900663399006633990099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0033666600006666000000000000000000000000FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFF8916EFFE6E6E6FFE6E6E6FFF0B5A1FFF8916EFFF0B5
      A1FFE6E6E6FFE6E6E6FFF8916EFFE6E6E6FFE6E6E6FFE6E6E6FF444444FF4141
      41FF313131FF252525FF222222FF212121FF202020FF222222FF252525FF1C1C
      1CFF4C4C4CFF2E2E2EFFC0C0C0FF000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF992B26FFA74F
      4FFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8607
      05FF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C
      1CFF8D1C1CFF8D1C1CFF850605FF8D1C1CFF8D1C1CFF8D1C1CFF8D1C1CFF8D1C
      1CFF8D1C1CFFA74F4FFF992B26FF000000FF000000000000000066999900FFFF
      FF00FFFFFF00FFFFFF0099CCCC00FFFFFF00FFFFFF00FFFFFF0099CCCC00FFFF
      FF00FFFFFF00FFFFFF0099CCCC00CCFFFF00FFFFFF00CCFFFF0099CCCC00CCFF
      FF00FFFFFF00CCFFFF0099CCCC00FFFFFF0099FFFF00FFFFFF0099CCCC0099FF
      FF00FFFFFF00336666000066660000000000000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE8DAD5FFF3A9
      90FFF8916EFFEBCEC4FFF69D7FFFEEC1B2FFE6E6E6FFE6E6E6FF252525FF4A4A
      4AFF252525FF1C1C1CFF191919FF151515FF151515FF191919FF1D1D1DFF2525
      25FF212121FF4C4C4CFF646464FFC0C0C0FF000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF982C28FFDFDF
      DFFFE0E0E0FFE1E1E1FFE2E2E2FFE3E3E3FFE4E4E4FFE5E5E5FFEEEEEEFF982D
      28FFE0E0E0FFE0E0E0FFE2E2E2FFE7E7E7FFE8E8E8FFEAEAEAFFEBEBEBFFEDED
      EDFFEEEEEEFFF0F0F0FF982C28FFF8F8F8FFF5F5F5FFF7F7F7FFF7F7F7FFF9F9
      F9FFFAFAFAFFFBFBFBFF982C28FF000000FF000000000000000066999900FFFF
      FF00FFFFFF00FFFFFF0099CCCC00FFFFFF00FFFFFF00FFFFFF0099CCCC00FFFF
      FF00FFFFFF00FFFFFF0099CCCC00FFFFFF00CCFFFF00FFFFFF0099CCCC00FFFF
      FF00CCFFFF00FFFFFF0099CCCC00CCFFFF00FFFFFF0099FFFF0099CCCC00FFFF
      FF0099FFFF00336666000066660000000000000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFEBCEC4FFF8916EFFF69979FFF69979FFE6E6E6FFE6E6E6FF2E2E2EFF4A4A
      4AFF535353FF474747FF353535FF303030FF2D2D2DFF2E2E2EFF383838FF3E3E
      3EFF303030FF1F1F1FFFA3A3A3FF4C4C4CFF000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF972B29FFC6C6
      C6FFC8C8C8FFCACACAFFCCCCCCFFCECECEFFD0D0D0FFD2D2D2FFE6E6E6FF972C
      29FFDADADAFFDADADAFFDCDCDCFFDEDEDEFFE0E0E0FFE2E2E2FFE4E4E4FFE6E6
      E6FFE8E8E8FFEAEAEAFF972B29FFF2F2F2FFF0F0F0FFF2F2F2FFF4F4F4FFF6F6
      F6FFF7F7F7FFFAFAFAFF972B29FF000000FF000000000000000066999900FFFF
      FF00FFFFFF00FFFFFF0099CCCC00FFFFFF00FFFFFF00FFFFFF0099CCCC00FFFF
      FF00FFFFFF00FFFFFF0099CCCC00FFFFFF00FFFFFF00CCFFFF0099CCCC00CCFF
      FF00FFFFFF00CCFFFF0099CCCC00FFFFFF00CCFFFF00FFFFFF0099CCCC0099FF
      FF00FFFFFF0033666600006666000000000000000000000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFF8916EFFFE794CFFFE794CFFFD7A4EFFE6E6E6FF000000FFC0C0C0FF4A4A
      4AFF5F5F5FFF474747FF3F3F3FFF3F3F3FFF424242FF424242FF424242FF4444
      44FF2B2B2BFFC0C0C0FFC0C0C0FFC0C0C0FF0000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF962A2AFFC8C8
      C8FFC9C9C9FFCBCBCBFFCCCCCCFFCECECEFFD0D0D0FFD2D2D2FFE6E6E6FF962B
      2AFFDBDBDBFFDBDBDBFFDDDDDDFFDFDFDFFFE1E1E1FFE3E3E3FFE5E5E5FFE7E7
      E7FFE8E8E8FFEBEBEBFF962A2AFFF3F3F3FFF0F0F0FFF3F3F3FFF5F5F5FFF6F6
      F6FFF7F7F7FFF9F9F9FF962A2AFF000000FF0000000000000000993333009933
      3300993333009933330099333300993333009933330099333300993333009933
      3300993333009933330099333300993333009933330099333300993333009933
      3300993333009933330099333300993333009933330099333300993333009933
      3300993333009933330000666600000000000000000000000000000000000000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF00000000C0C0
      C0FF21212CFF575765FF5F5F5FFF555555FF4F4F4FFF4A4A4AFF38384BFF0909
      23FF000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF8B1818FF952B
      2BFF952B2BFF952B2BFF952B2BFF952B2BFF952B2BFF952B2BFF952B2BFF8710
      10FF952B2BFF952B2BFF952B2BFF952B2BFF952B2BFF952B2BFF952B2BFF952B
      2BFF952B2BFF952B2BFF871010FF952B2BFF952B2BFF952B2BFF952B2BFF952B
      2BFF952B2BFF952B2BFF8B1818FF000000FF0000000000000000CC663300CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC6633009933330000666600000000000000000000000000000000000000
      000000000000000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF0000000000000000C0C0
      C0FF000032FF0015E8FF356FFFFF000EF9FF0000DEFF0000B3FF000074FF0000
      13FFC0C0C0FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF952B2BFFF7BE
      AAFFF7BEAAFFF7BEAAFFF7BEAAFFF7BEAAFFF7BEAAFFF7BEAAFFF7C8B8FFAD5B
      5BFFF7BEAAFFF7BEAAFFF7BEAAFFF7BEAAFFF7BEAAFFF7BEAAFFF7BEAAFFF7BE
      AAFFF7BEAAFFF7BEAAFFAD5B5BFFF7C8B8FFF7BEAAFFF7BEAAFFF7BEAAFFF7BE
      AAFFF7BEAAFFF7BEAAFF952B2BFF000000FF0000000000000000CC663300CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC6633009933330000666600000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF00000000000000008080
      80FF2F2F2FFF4B4B4BFF818181FF3D3D3DFF272727FF1B1B1BFF191919FF1717
      17FF808080FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF952B2BFFF7A1
      84FFF7A184FFF7A184FFF7A184FFF7A184FFF7A184FFF7A184FFF9C0ADFF952B
      2BFFF7A184FFF7A184FFF7A184FFF7A184FFF7A184FFF7A184FFF7A184FFF7A1
      84FFF7A184FFF7A184FF952B2BFFF9C0ADFFF7A184FFF7A184FFF7A184FFF7A1
      84FFF7A184FFF7A184FF952B2BFF000000FF0000000000000000CC663300FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC99009933330000666600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF0000000000000000000000001616
      16FF404040FF8B8B8BFFC2C2C2FF4F4F4FFF373737FF2A2A2AFF212121FF1A1A
      1AFF0A0A0AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF952B2BFFF8A4
      88FFF8A488FFF8A488FFF8A488FFF8A488FFF8A488FFF8A488FFFAC2AFFF952B
      2BFFF8A488FFF8A488FFF8A488FFF8A488FFF8A488FFF8A488FFF8A488FFF8A4
      88FFF8A488FFF8A488FF952B2BFFFAC2AFFFF8A488FFF8A488FFF8A488FFF8A4
      88FFF8A488FFF8A488FF952B2BFF000000FF0000000000000000CC663300CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660099333300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FFE6E6E6FFE6E6E6FF000000FF0000000000000000000000004A4A
      4AFF424242FFA8A8A8FFB2B2B2FF4A4A4AFF383838FF2D2D2DFF232323FF1A1A
      1AFF444444FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFA14343FF952B
      2BFF952B2BFF952B2BFF952B2BFF952B2BFF952B2BFF952B2BFF952B2BFF8710
      10FF952B2BFF952B2BFF952B2BFF952B2BFF952B2BFF952B2BFF952B2BFF952B
      2BFF952B2BFF952B2BFF871010FF952B2BFF952B2BFF952B2BFF952B2BFF952B
      2BFF952B2BFF952B2BFFA14343FF000000FF000000000000000000000000CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC663300CC663300CC663300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      0000808080FF494949FF616161FF4B4B4BFF353535FF222222FF0C0C0CFF8080
      80FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C0FF808080FF808080FFC0C0C0FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ACACACFFDCDCDCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ACACACFFDCDCDCFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0E0E0FF8181
      81FF545454FF8A8A8AFF666666FFEBEBEBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0E0E0FF818181FF545454FF8A8A8AFF666666FFEBEBEBFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E1E1E1FF929292FF494949FF4545
      45FF464646FFC1C1C1FFCDCDCDFF636363FFE0E0E0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1E1E1FF9292
      92FF494949FF454545FF464646FFC1C1C1FFCDCDCDFF636363FFE0E0E0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A7A7A7FF727272FF545454FF494949FF494949FF3B3B
      3BFF808080FFCDCDCDFFCDCDCDFFC4C4C4FF6B6B6BFFE0E0E0FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFFCECECEFF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFFCECECEFF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A7A7A7FF727272FF545454FF4949
      49FF494949FF3B3B3BFF808080FFCDCDCDFFCDCDCDFFC4C4C4FF6B6B6BFFE0E0
      E0FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0E0
      E0FF818181FF545454FF818181FF484848FF494949FF494949FF494949FF2C2C
      2CFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFC4C4C4FF636363FFECECECFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0E0E0FF818181FF545454FF818181FF484848FF494949FF4949
      49FF494949FF2C2C2CFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFC4C4C4FF6363
      63FFECECECFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1E1E1FF929292FF4949
      49FF454545FF464646FFC1C1C1FFCDCDCDFF565656FF6B6B6BFF2E2E2EFF9A9A
      9AFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF656565FFDCDC
      DCFF000000000000000000000000000000000000000000000000000000000000
      00004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFF4444DDFFB7B7D0FFCECECEFFCECECEFF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E1E1
      E1FF929292FF494949FF454545FF464646FFC1C1C1FFCDCDCDFF565656FF6B6B
      6BFF2E2E2EFF9A9A9AFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFF656565FFDCDCDCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000D0D0D0FF616161FF545454FF494949FF4949
      49FF3B3B3BFF808080FFCDCDCDFFCDCDCDFFC4C4C4FF6B6B6BFF4C4C4CFFC7C7
      C7FFCFCFCFFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFC1C1C1FF6565
      65FFECECECFF0000000000000000000000000000000000000000000000004A4A
      4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFFB7B7D0FF2E2EDFFFB7B7D0FFCECECEFFCECECEFF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0D0D0FF616161FF5454
      54FF494949FF494949FF3B3B3BFF808080FFCDCDCDFFCDCDCDFFC4C4C4FF6B6B
      6BFF4C4C4CFFC7C7C7FFCFCFCFFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFFC1C1C1FF656565FFECECECFF000000000000000000000000000000000000
      0000F9F9F9FFB5B5B5FF6E6E6EFF5B5B5BFF474747FF494949FF494949FF4949
      49FF2C2C2CFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFF878787FF9E9E9EFFE6E6
      E6FFE0E0E0FFD7D7D7FFCECECEFFCECECEFFCECECEFFCECECEFFCDCDCDFFCDCD
      CDFF636363FFE0E0E0FF00000000000000000000000000000000000000000000
      00004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFFCECECEFFB7B7D0FF0A0AE3FFB7B7D0FFCECECEFFCECE
      CEFF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F9FFB5B5B5FF6E6E6EFF5B5B5BFF474747FF4949
      49FF494949FF494949FF2C2C2CFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFF8787
      87FF9E9E9EFFE6E6E6FFE0E0E0FFD7D7D7FFCECECEFFCECECEFFCECECEFFCECE
      CEFFCDCDCDFFCDCDCDFF636363FFE0E0E0FF0000000000000000F9F9F9FFAAAA
      AAFF5C5C5CFF4A4A4AFF383838FF898989FFCECECEFF797979FF525252FF2E2E
      2EFF9A9A9AFFCECECEFFCECECEFFCECECEFFC1C1C1FF535353FFE6E6E6FFE6E6
      E6FFE6E6E6FFE5E5E5FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2E2FFE2E2
      E2FF777777FFD0D0D0FF00000000000000000000000000000000000000000000
      000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF000000FFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFF7272D8FF5151DBFF4444DDFFCECECEFFCECE
      CEFFCECECEFF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF000000FFCECECEFFCECE
      CEFFCECECEFFB7C5B7FF519E51FF038103FFCECECEFFCECECEFFCECECEFFCECE
      CEFFCECECEFF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F9FFAAAAAAFF5C5C5CFF4A4A4AFF383838FF898989FFCECECEFF7979
      79FF525252FF2E2E2EFF9A9A9AFFCECECEFFCECECEFFCECECEFFC1C1C1FF5353
      53FFE6E6E6FFE6E6E6FFE6E6E6FFE5E5E5FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE2E2E2FFE2E2E2FF777777FFD0D0D0FF00000000B7B7B7FF6A6A6AFF4A4A
      4AFF4A4A4AFF484848FF313131FFCECECEFFCECECEFFCECECEFF898989FF4C4C
      4CFFC7C7C7FFCFCFCFFFCECECEFFCECECEFF9B9B9BFF8F8F8FFFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE5E5
      E5FF606060FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF000000FFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFF1717E2FFB7B7D0FFCECECEFFCECECEFF0F85
      85FFB7C5C5FFCECECEFF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF000000FFCECECEFFB7C5
      B7FF5CA25CFF178817FF339233FF008000FFCECECEFFCECECEFFCECECEFFCECE
      CEFFCECECEFFCECECEFF000000FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B7B7
      B7FF6A6A6AFF4A4A4AFF4A4A4AFF484848FF313131FFCECECEFFCECECEFFCECE
      CEFF898989FF4C4C4CFFC7C7C7FFCFCFCFFFCECECEFFCECECEFF9B9B9BFF8F8F
      8FFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE5E5E5FF606060FF00000000FBFBFBFF696969FF4A4A4AFF4A4A
      4AFF4A4A4AFF292929FFA1A1A1FFCECECEFFCECECEFFCECECEFF8E8E8EFF9E9E
      9EFFE6E6E6FFE0E0E0FFD7D7D7FFCECECEFF4B4B4BFFE5E5E5FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF5656
      56FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE6E6E6FFCECECEFFCECE
      CEFFCECECEFFCECECEFF7272D8FF5C5CDAFFCECECEFFCECECEFF72ABABFF479A
      9AFF2E9191FFCECECEFFCECECEFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE6E6E6FFCECECEFF449A
      44FF72AB72FFA0BCA0FF2E912EFF008000FFCECECEFFCECECEFFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFBFF6969
      69FF4A4A4AFF4A4A4AFF4A4A4AFF292929FFA1A1A1FFCECECEFFCECECEFFCECE
      CEFF8E8E8EFF9E9E9EFFE6E6E6FFE0E0E0FFD7D7D7FFCECECEFF4B4B4BFFE5E5
      E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FF565656FF000000000000000000000000E8E8E8FFBBBBBBFF5454
      54FF484848FF4E4E4EFFC2C2C2FFCECECEFFCECECEFFC0C0C0FF535353FFE6E6
      E6FFE6E6E6FFE6E6E6FFE5E5E5FF8E8E8EFFA7A7A7FFE5E5E5FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFBABABAFF8383
      83FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFCECECEFFCECECEFF4444DDFFB7B7D0FFCECECEFFCECECEFF178888FFB7C5
      C5FF72ABABFF5CA2A2FFCECECEFFCECECEFF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFCECECEFF2E912EFFA0BCA0FF008000FFCECECEFFCECECEFFCECECEFFCECE
      CEFFCECECEFFCECECEFF89B4B4FF89B4B4FF001C1CFF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8E8
      E8FFBBBBBBFF545454FF484848FF4E4E4EFFC2C2C2FFCECECEFFCECECEFFC0C0
      C0FF535353FFE6E6E6FFE6E6E6FFE6E6E6FFE5E5E5FF8E8E8EFFA7A7A7FFE5E5
      E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFBABABAFF838383FF00000000000000000000000000000000000000000000
      00005A5A5AFF929292FFCECECEFFCECECEFFCECECEFF9B9B9BFF8F8F8FFFE6E6
      E6FFE6E6E6FFE6E6E6FFD7D7D7FF646464FFD7D7D7FFE5E5E5FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF777777FFD0D0
      D0FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFCECECEFFCECECEFFCECECEFFA0BCBCFF2E9191FF89C9
      C9FF72C8C8FF449A9AFF89B4B4FFCECECEFFCECECEFF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FF80B880FF66AD66FFCECECEFF2E912EFFCECECEFFCECECEFFA0BCBCFF5CA2
      A2FF008080FF008080FF3A9393FF4E9A9AFF4E9A9AFF098181FF008080FF72B8
      B8FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5AFF929292FFCECECEFFCECECEFFCECECEFF9B9B
      9BFF8F8F8FFFE6E6E6FFE6E6E6FFE6E6E6FFD7D7D7FF646464FFD7D7D7FFE5E5
      E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FF777777FFD0D0D0FF0000000000000000000000000000000000000000F2F2
      F2FF575757FFE3E3E3FFDEDEDEFFD1D1D1FFCECECEFF4B4B4BFFE5E5E5FFE6E6
      E6FFE6E6E6FFE6E6E6FFA7A7A7FF8F8F8FFFE5E5E5FFE5E5E5FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFC9C9C9FF747474FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF339696FF9FCDCDFF1AC5
      C5FF00C1C1FFB5D0D0FF198B8BFFE6E6E6FFE6E6E6FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFCCDA
      CCFF339633FFCCDACCFFE6E6E6FFE6E6E6FFE6E6E6FF80B8B8FF1A8B8BFF67A8
      A8FFEAEEEEFFD5E0E0FFCADADAFFBCD2D2FFADCBCBFF9DC3C3FF8BBBBBFF73B2
      B2FF1D8E8EFF8EC6C6FF00000000000000000000000000000000000000000000
      000000000000F2F2F2FF575757FFE3E3E3FFDEDEDEFFD1D1D1FFCECECEFF4B4B
      4BFFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFA7A7A7FF8F8F8FFFE5E5E5FFE5E5
      E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFC9C9
      C9FF747474FF0000000000000000000000000000000000000000000000009898
      98FFACACACFFE6E6E6FFE6E6E6FFE6E6E6FF898989FFA7A7A7FFE5E5E5FFE6E6
      E6FFE6E6E6FFE6E6E6FF4E4E4EFFE5E5E5FFE5E5E5FFE5E5E5FFE6E6E6FF9D9D
      9DFF989898FF909090FFE6E6E6FFE6E6E6FFE5E5E5FF727272FFE0E0E0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFB3CFCFFF339696FF4CCDCDFF00C1
      C1FF33C9C9FF66ADADFF80B8B8FFE6E6E6FF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF66AD
      66FF80B880FFE6E6E6FFE6E6E6FFE6E6E6FF66ADADFF399696FFF6F7F7FFEBEE
      EEFFE2E9E9FFD8E2E2FFCFDCDCFFC3D5D5FFB4CDCDFFA3C5C5FF93BCBCFF7FB4
      B4FF6CABABFF439C9CFF72B8B8FF000000000000000000000000000000000000
      000000000000989898FFACACACFFE6E6E6FFE6E6E6FFE6E6E6FF898989FFA7A7
      A7FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FF4E4E4EFFE5E5E5FFE5E5E5FFE5E5
      E5FFE6E6E6FFE6E6E6FFE6E6E6FF8A8ABAFF2828D2FF8A8ABAFFE5E5E5FF7272
      72FFE0E0E0FF0000000000000000000000000000000000000000F2F2F2FF6060
      60FFDBDBDBFFE6E6E6FFE6E6E6FFD7D7D7FF646464FFD7D7D7FFE5E5E5FFE6E6
      E6FFE6E6E6FFE6E6E6FFD3D3D3FF565656FF838383FF8F8F8FFF949494FF8888
      88FF494949FF696969FF909090FFE6E6E6FFC9C9C9FF808080FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF66ADADFF80B8B8FF33C9C9FF00C1
      C1FF71CECEFF1A8B8BFFE6E6E6FFE6E6E6FF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFB3CFB3FF3396
      33FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF058282FFFCFCFCFFF6F6F6FFEFF1
      F1FFE6EAEAFFDDE4E4FFD1DDDDFFC5D6D6FFB7CFCFFFA7C8C8FF97BFBFFF83B6
      B6FF6FADADFF5AA4A4FF1D8E8EFF000000000000000000000000000000000000
      0000F2F2F2FF606060FFDBDBDBFFE6E6E6FFE6E6E6FFD7D7D7FF646464FFD7D7
      D7FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFD3D3D3FF565656FF838383FFC5C5
      C5FFE6E6E6FFE6E6E6FFE6E6E6FF2828D2FF2828D2FF2828D2FFC9C9C9FF8080
      80FF0000000000000000000000000000000000000000000000009E9E9EFFA1A1
      A1FFE5E5E5FFE6E6E6FFE6E6E6FFA7A7A7FF8F8F8FFFE5E5E5FFE5E5E5FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFA9A9A9FF8B8B8BFF8B8B8BFF535353FF4D4D
      4DFFABABABFF7A7A7AFF6F6F6FFF939393FF6C6C6CFFE0E0E0FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFCCDADAFF1A8B8BFF66D1D1FF00C1C1FF33C9
      C9FF66ADADFF80B8B8FFE6E6E6FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF339633FFB3CF
      B3FFE6E6E6FFE6E6E6FFE6E6E6FFB3CFCFFF008080FFFBFBFBFFF4F5F5FFECEF
      EFFFE3E9E9FFD9E3E3FFD0DDDDFFC4D6D6FFB6CFCFFFA6C7C7FF95BEBEFF82B5
      B5FF6EACACFF58A3A3FF0D8686FF000000000000000000000000000000000000
      00009E9E9EFFA1A1A1FFE5E5E5FFE6E6E6FFE6E6E6FFA7A7A7FF8F8F8FFFE5E5
      E5FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFB4B4B4FF6969
      69FF767676FFCCCCCCFFE6E6E6FF8A8ABAFF2828D2FF8A8ABAFF6C6C6CFFE0E0
      E0FF0000000000000000000000000000000000000000EEEEEEFF5B5B5BFFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF4E4E4EFFE5E5E5FFE5E5E5FFE5E5E5FFE6E6
      E6FFE6E6E6FFC9C9C9FF909090FF8D8D8DFF5C5C5CFF4A4A4AFF9E9E9EFFD3D3
      D3FFDADADAFFCACACAFF6F6F6FFF747474FF686868FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF80B8B8FF66ADADFF4CCDCDFF00C1C1FF71CE
      CEFF1A8B8BFFE6E6E6FFE6E6E6FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FF80B880FF66AD66FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE2E2E2FF008080FFF8F9F9FFF2F3F3FFEAEE
      EEFFE2E8E8FFD8E2E2FFCBDBDBFFBDD4D4FFAECCCCFF9DC3C3FF8BBBBBFF78B2
      B2FF63A9A9FF4B9E9EFF008080FF00000000000000000000000000000000EEEE
      EEFF5B5B5BFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF4E4E4EFFE5E5E5FFE5E5
      E5FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FF8AC6B1FF28AFBEFF8AC6B1FFE5E5
      E5FF5C5C5CFF686868FF727272FFD7D7D7FFE6E6E6FFBABABAFF7F7F7FFF0000
      00000000000000000000000000000000000000000000A0A0A0FFA5A5A5FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFD3D3D3FF565656FF838383FFC5C5C5FFE6E6
      E6FFE6E6E6FFCCCCCCFF656565FF464646FF909090FFD1D1D1FFDADADAFFDADA
      DAFFDADADAFFD8D8D8FFB8B8B8FF606060FFBABABAFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFCCCCE5FF4C4CE5FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF1A8B8BFF88D1D1FF00C1C1FF33C9C9FF66AD
      ADFF80B8B8FFE6E6E6FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFE6E6E6FFE6E6E6FFE6E6E6FFCCDACCFF339633FFCCDACCFFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF0B8383FFF4F6F6FFEBEFEFFFE4EA
      EAFFDEE5E5FFD4DFDFFFC8D9D9FFBAD2D2FFACCACAFF9CC2C2FF89BABAFF76B1
      B1FF63A9A9FF4B9E9EFF008080FF00000000000000000000000000000000A0A0
      A0FFA5A5A5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFD3D3D3FF565656FF8383
      83FFC5C5C5FFE6E6E6FFE6E6E6FFE6E6E6FF28AFBEFF28AFBEFF28AFBEFFC9C9
      C9FF808080FFFCFCFCFFE0E0E0FF646464FF828282FF787878FFD0D0D0FF0000
      000000000000000000000000000000000000F8F8F8FF595959FFDEDEDEFFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFB4B4B4FF696969FF7878
      78FFCCCCCCFF8A8A8AFF828282FFCECECEFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDADADAFFDADADAFFC8C8C8FFACACACFF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF6666E5FF8080E5FFE6E6
      E6FFE6E6E6FFE6E6E6FF80B8B8FF66ADADFF4CCDCDFF00C1C1FF71CECEFF1A8B
      8BFFE6E6E6FFE6E6E6FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFE6E6E6FFE6E6E6FFE6E6E6FF66AD66FF80B880FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF008080FFEFF2F2FFE3E9E9FFDCE5
      E5FFD6E1E1FFCBDBDBFFBFD5D5FFB6CFCFFFA8C8C8FF99C0C0FF86B8B8FF73AF
      AFFF5EA6A6FF479B9BFF008080FF000000000000000000000000F8F8F8FF5959
      59FFDEDEDEFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFB4B4
      B4FF696969FF787878FFCCCCCCFFE6E6E6FF8AC6B1FF28AFBEFF8AC6B1FF6C6C
      6CFFE0E0E0FF000000000000000000000000C4C4C4FFC4C4C4FF000000000000
      0000000000000000000000000000000000009A9A9AFFA7A7A7FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFBBBB
      BBFF4D4D4DFF616161FFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDADADAFFDADADAFFD7D7D7FFB7B7B7FF555555FFF4F4F4FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFCCCCE5FF1A1AE5FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FF339696FF9FCDCDFF00C1C1FF33C9C9FF66ADADFF80B8
      B8FFE6E6E6FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFE6E6E6FFE6E6E6FFE6E6E6FFB3CFB3FF339633FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF008080FFE8EEEEFFDAE4E4FFD5E0
      E0FFCDDCDCFFC6D7D7FFB9D1D1FFABCACAFF9DC3C3FF8CBBBBFF7AB3B3FF6FAD
      ADFF5AA4A4FF429999FF008080FF0000000000000000000000009A9A9AFFA7A7
      A7FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFBBBBBBFF4D4D4DFF727272FFD7D7D7FFE6E6E6FFBABABAFF7F7F
      7FFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7C7CFFACACACFFD5D5D5FFE6E6
      E6FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFC7C7
      C7FF6A6A6AFF6D6D6DFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDADADAFFDADADAFFDADADAFFC5C5C5FFA8A8A8FF7C7C7CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFE6E6E6FF4C4CE5FF8080E5FFE6E6E6FF6666E5FF8080E5FFE6E6E6FFE6E6
      E6FFE6E6E6FFB3CFCFFF339696FF4CCDCDFF00C1C1FF71CECEFF1A8B8BFFE6E6
      E6FFE6E6E6FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFE6E6E6FFE6E6E6FFE6E6E6FF339633FFB3CFB3FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF008080FFE3EAEAFFCFDEDEFFCADA
      DAFFC0D5D5FFBBD2D2FFAECCCCFF9FC4C4FF98C0C0FF87B8B8FF75B0B0FF60A7
      A7FF4B9E9EFF359595FF008080FF0000000000000000000000007C7C7CFFACAC
      ACFFD5D5D5FFE6E6E6FFE5E5E5FFE6E6E6FFE6E6E6FFD4D496FFBDBD31FFD3D3
      95FFE6E6E6FFC7C7C7FF6A6A6AFFE0E0E0FF646464FF828282FF787878FFD0D0
      D0FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFF989898FF626262FF9595
      95FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF6B6B
      6BFFE0E0E0FF6D6D6DFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDADADAFFDADADAFFDDDDDDFFE9E9E9FFB6B6B6FF4C4C4CFF000000000000
      0000000000000000000000000000000000000000000000000000000000FFE6E6
      E6FFE6E6E6FFCCCCE5FF6666E5FF3333E5FF2828E5FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FF4CA2A2FF99C4C4FF1AC5C5FF33C9C9FF66ADADFF80B8B8FFE6E6
      E6FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FFE6E6
      E6FFE6E6E6FFE6E6E6FF80B880FF66AD66FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF008080FFDBE5E5FFC9DBDBFF66AA
      AAFF048181FF008080FF399C9CFF55AAAAFF55AAAAFF008080FF008080FF87BB
      BBFF59A5A5FF2D9090FF008080FF000000000000000000000000FCFCFCFF9898
      98FF626262FF959595FFE6E6E6FFE6E6E6FFE6E6E6FFBDBD31FFBDBD31FFBDBD
      31FFE6E6E6FF6B6B6BFFE0E0E0FF0000000000000000C4C4C4FFC4C4C4FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F4FFACAC
      ACFF565656FFA5A5A5FFD7D7D7FFE6E6E6FFE6E6E6FFE6E6E6FFBDBDBDFF8282
      82FFFEFEFEFF6D6D6DFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDCDCDCFFEDEDEDFFE8E8E8FFCACACAFFDCDCDCFFA3A3A3FF848484FF0000
      0000000000000000000000000000000000000000000000000000000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFB3B3E5FF3333E5FF6666E5FFCCCCE5FFE6E6
      E6FFCCDADAFF1A8B8BFF66D1D1FF00C1C1FF71CECEFF1A8B8BFFE6E6E6FFE6E6
      E6FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FFE6E6
      E6FFE6E6E6FFE6E6E6FF4CA24CFFCCDACCFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF008080FFD9E6E6FF1A8B8BFF91BB
      BBFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FFF3F3F3FF84BD
      BDFF1D8E8EFF318F8FFF008080FF000000000000000000000000000000000000
      0000F4F4F4FFACACACFF565656FFA5A5A5FFD7D7D7FFD4D496FFBDBD31FFD4D4
      96FFBDBDBDFF828282FFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F7FFA0A0A0FF5C5C5CFF999999FFE6E6E6FFE6E6E6FF6F6F6FFFD3D3
      D3FF000000006D6D6DFFDADADAFFDADADAFFDADADAFFDADADAFFDCDCDCFFEBEB
      EBFFE9E9E9FFCECECEFFC3C3C3FFC2C2C2FFC4C4C4FFD9D9D9FF4A4A4AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF8080E5FF4C4CE5FFE6E6
      E6FF66ADADFF80B8B8FF33C9C9FF33C9C9FF66ADADFF80B8B8FFE6E6E6FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF008080FF339696FFEBEBEBFFECEC
      ECFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FFF3F3F3FFF5F5
      F5FF00000000399C9CFF008080FF000000000000000000000000000000000000
      00000000000000000000F7F7F7FFA0A0A0FF5C5C5CFF999999FFE6E6E6FFE6E6
      E6FF6F6F6FFFD3D3D3FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F9FFAAAAAAFF5A5A5AFF9E9E9EFF737373FF0000
      0000000000006D6D6DFFDADADAFFDADADAFFDBDBDBFFE8E8E8FFEAEAEAFFD2D2
      D2FFC3C3C3FFC2C2C2FFC2C2C2FFC2C2C2FFC5C5C5FFE0E0E0FF6C6C6CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FF118787FFB5D7D7FF00C1C1FF5BCCCCFF1A8B8BFFE6E6E6FFE6E6E6FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF008080FFEBEBEBFFEBEBEBFFECEC
      ECFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FFF3F3F3FFF5F5
      F5FFEFEFEFFFF8F8F8FF008080FF000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F9FFAAAAAAFF5A5A5AFF9E9E
      9EFF737373FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F2FFA8A8A8FFF2F2F2FF0000
      0000000000006D6D6DFFDBDBDBFFE6E6E6FFE4E4E4FFBCBCBCFFC4C4C4FFC2C2
      C2FFC2C2C2FFC2C2C2FFC5C5C5FFD7D7D7FFB4B4B4FF696969FFE4E4E4FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFCCDADAFF339696FF9FD4D4FF66ADADFF80B8B8FFE6E6E6FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFB3CFCFFF0B8484FFEBEBEBFFEBEBEBFFECEC
      ECFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FFF3F3F3FFF5F5
      F5FFEFEFEFFFF3F3F3FF0D8686FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F2FFA8A8
      A8FFF2F2F2FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000737373FFE7E7E7FFC2C2C2FFA3A3A3FF9E9E9EFFC2C2C2FFC2C2
      C2FFC4C4C4FFD3D3D3FFC1C1C1FF696969FFB8B8B8FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FFE6E6
      E6FFE6E6E6FFCCDADAFF4CA2A2FF339696FFE6E6E6FFE6E6E6FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF008080FFEBEBEBFFEBEBEBFFECEC
      ECFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FFF3F3F3FFF5F5
      F5FFF6F6F6FFF3F3F3FF008080FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007E7E7EFFC4C4C4FFB3B3B3FFA0A0A0FF9E9E9EFFC3C3C3FFD0D0
      D0FFCECECEFF6C6C6CFFA8A8A8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FF66ADADFF046565FFEBEBEBFFECEC
      ECFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FFF3F3F3FFF5F5
      F5FFF6F6F6FFF3F3F3FF72B8B8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000989898FF707070FFCECECEFFADADADFFDBDBDBFF7070
      70FF989898FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FFE6E6E6FFE6E6E6FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FFE6E6E6FFE6E6E6FF003838FF1D8E8EFF7EB4
      B4FFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FFF3F3F3FF81BB
      BBFF249090FF8EC6C6FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000888888FF777777FF888888FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FF000000000000000072B8
      B8FF008080FF048181FF529F9FFF69ACACFF6BACACFF098282FF008080FF72B8
      B8FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000004A4A4A004A4A4A0000000000F2F2
      F200F2F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF4A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A0000000000F2F2
      F200F2F2F200F2F2F200000000000000000000000000000000002E7094002E70
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4A4A4AFF4A4A4AFF4A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFFCECECEFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000F2F2F200F2F2
      F200F2F2F200E6E6E600B6B6B6000000000000000000000000002E7094003476
      9800347698000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000000000004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000F2F2F200F2F2
      F200F2F2F200CECECE00B6B6B600AAAAAA00000000002E7094002A6D91002166
      8A0021668A002E71930000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000F2F2F200F2F2F200F2F2
      F200E6E6E600B6B6B600AAAAAA009E9E9E00000000002E70940021668A000D55
      7D000D557D0021668A002E719300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF4A4A
      4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000000000004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000F2F2F200F2F2F200F2F2
      F200CECECE00B6B6B600AAAAAA00000000002E7094002E709400000000000000
      0000000000000D557D0021668A002A6D91000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00004A4A4A004A4A4A004A4A4A0000000000F2F2F200F2F2F200F2F2F200DADA
      DA00B6B6B600AAAAAA009E9E9E00000000002E70940000000000AAAAAA00CACA
      CA00F2F2F200000000000D557D0021668A002A6D910000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFFCECECEFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000004A4A4A0000000000F2F2F200F2F2F200E6E6E600CECE
      CE00B6B6B600AAAAAA00000000003B7B9D0000000000AAAAAA00CACACA00DADA
      DA00DADADA00F2F2F200000000000D557D0021668A002A6D9100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF009A8F6F009A8F6F009A8F
      6F00CFCFCF000404040000000000000000009A8F6F009A8F6F00000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4A4A4AFF000000FFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFFCECECEFFCECECEFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000F2F2F200F2F2F200F2F2F200E6E6E600B6B6
      B600AAAAAA009E9E9E00000000002E70940000000000C2C2C200CECECE00D5D5
      D500DADADA00DADADA00F2F2F200060606000D557D0021668A002A6D91000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF009A8F6F009A8F
      6F00CFCFCF00CFCFCF0004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF009A8F6F0004040400040404009A8F
      6F009A8F6F00CFCFCF00040404009A8F6F0004040400040404009A8F6F000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE6E6E6FFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000F2F2F200F2F2F200F2F2F200CECECE00B6B6
      B600AAAAAA00000000003B7B9D0000000000AAAAAA00CECECE00CFCFCF00D2D2
      D200D5D5D500D9D9D900DADADA00FEFEFE00000000000D557D0021668A002A6D
      9100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF009A8F6F00040404000404
      04009A8F6F00CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404009A9AFA0004049A000404
      04009A8F6F009A8F6F009A8F6F000404040004049A0004049A00040404009A8F
      6F0000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000000000000F2F2F200F2F2F200F2F2F200DADADA00CECECE00AAAA
      AA009E9E9E00000000003B7B9D0000000000C2C2C200CECECE00CECECE00CECE
      CE00D1D1D100D4D4D400DADADA00E6E6E600FEFEFE00000000000D557D002166
      8A002A6D91000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000F4F24000F4F
      2400040404009A8F6F00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404009A9AFA000404FA000404
      9A00040404009A8F6F00040404002404C4000404FA0004049A00040404009A8F
      6F0000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFD2D0
      D0FF954A1AFF944817FFC9BFB9FFCECECEFFCECECEFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000000000000F2F2F200F2F2F200F2F2F200CECECE00B6B6B600AAAA
      AA00000000003B7B9D0000000000AAAAAA00CECECE00CECECE002525FF002525
      FF00CECECE00D0D0D000D3D3D300D9D9D900DADADA00FAFAFA00000000000D55
      7D001A6086000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFCFCF00CFCFCF009A8F6F00040404001AA44F001AA4
      4F000F4F2400040404009A8F6F00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFCFCF00CFCFCF00CFCFCF00040404009A9AFA000404
      FA0004049A00040404002404C4000404FA002404C400040404009A8F6F000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE7E3
      E1FF944817FF9D5023FF944817FFDCD2CDFFE6E6E6FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000F2F2F200F2F2F200F2F2F200E6E6E600B6B6B600AAAAAA009E9E
      9E00000000003B7B9D0000000000CACACA00DADADA002525FF006B6BFF000000
      DC00CECECE00C8C8C800C1C1C100B6B6B600B6B6B600C2C2C200DDDDDD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400040404001AA44F001AA44F0004C4
      8F001AA44F000F4F2400040404009A8F6F00E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404009A9A
      FA000404FA002404C4000404FA002404C400040404009A8F6F00000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E6E6FFE7E5E5FFE7E3E1FFE7E3E1FFE7E3E1FFE7E3E1FFE7E3E1FFE6D9
      D5FF944817FFC0834FFFA45C2EFF944817FF221812FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000F2F2F200F2F2F200F2F2F200CECECE00B6B6B600AAAAAA000000
      00003B7B9D0000000000AAAAAA00DADADA00DADADA00DADADA00DADADA000000
      DC00AAAAAA009E9E9E00959595009B9B9B009D9D9D00B6B6B600C2C2C200AAAA
      AA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4009A8F6F00040404001AA44F0004C48F000404
      040004C48F001AA44F000F4F2400040404009A8F6F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      04000404FA000404FA000404FA00040404009A8F6F009A8F6F00000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E5E5FF974C1CFF944817FF944817FF944817FF944817FF944817FF9448
      17FF964918FFC39541FFC39B46FFA35C2DFF8F4616FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000F2F2F200F2F2F200F2F2F200E6E6E600B6B6B600AAAAAA009E9E9E000000
      00003B7B9D0000000000D2D2D200DADADA00DADADA00DADADA00DADADA000000
      0000000000000000000083838300A5A5A500B6B6B600CECECE00DADADA00AAAA
      AA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404001AA44F0004C48F00040404000404
      04000404040004C48F001AA44F000F4F2400040404009A8F6F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404002404
      C4000404FA009A9AFA000404FA0004049A00040404009A8F6F009A8F6F000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E3E1FF944817FFBB6524FFBB6C21FFBB7122FFBC7725FFBD7D27FFBE82
      2AFFC19032FFC39D38FFC3A43DFFAA8628FFB1703BFFA15424FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000F2F2F200F2F2F200F2F2F200CECECE00B6B6B600AAAAAA00000000003B7B
      9D0000000000AAAAAA00E6E6E600E6E6E6002525FF002525FF00DADADA000000
      0000DADADA00DADADA0000000000CECECE00CECECE00CECECE00AAAAAA000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404001AA44F001AA44F0004040400E4E4
      E400E4E4E4000404040004C48F001AA44F000F4F2400040404009A8F6F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404002404C4000404
      FA002404C400040404009A9AFA000404FA0004049A00040404009A8F6F009A8F
      6F0000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E3E1FF944817FFBB681FFFBD7A27FFBE8129FFBF882DFFC08F31FFC195
      33FFC29C37FFC3A339FFC4AA3DFFB59B30FFC7AB46FFBA8549FFA15525FF0000
      00FF000000FF000000FF000000FF000000FF000000000000000000000000F2F2
      F200F2F2F200F2F2F200E6E6E600B6B6B600AAAAAA009E9E9E00000000003B7B
      9D0000000000D2D2D200E6E6E6002525FF006B6BFF002525FF00DADADA000000
      0000F2F2F20000B9B9000096960000000000CECECE00C2C2C200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4000404040004040400E4E4E400E4E4
      E400E4E4E400E4E4E4000404040004C48F001AA44F000F4F2400040404009A8F
      6F00000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400040404009A9AFA000404FA002404
      C40004040400E4E4E400040404009A9AFA000404FA0004049A00040404009A8F
      6F0000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E3E1FF944817FFBA671DFFBD7A26FFBE8129FFBF882DFFC08F31FFC195
      33FFC29C37FFC3A339FFC4AA3DFFC6B141FFC6B444FFC7B248FFBB8749FF9749
      18FF000000FF000000FF000000FF000000FF000000000000000000000000F2F2
      F200F2F2F200F2F2F200DADADA00B6B6B600AAAAAA00000000004181A3000000
      0000AAAAAA00C2C2C200E6E6E600E6E6E600E6E6E6002525FF00DADADA00DADA
      DA00000000001BD4D40003BCBC000096960000000000AAAAAA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400040404000404040004C48F001AA44F000F4F24000404
      04009A8F6F000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400040404009A9AFA009A9AFA000404
      0400E4E4E400E4E4E40004040400040404009A9AFA009A9AFA00040404009A8F
      6F0000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E3E1FF944817FFBA671DFFBD7A26FFBE8129FFBF882DFFC08F31FFC195
      33FFC29C37FFC3A339FFC4AA3DFFC6B141FFC6B644FFC7BA48FFC8AF4AFFBD88
      5AFF974919FF000000FF000000FF000000FF0000000000000000F2F2F200F2F2
      F200F2F2F200F2F2F200DADADA00CECECE00B6B6B600000000004688AC002E70
      9400000000000000000000000000E6E6E600E6E6E6002525FF00E6E6E600DADA
      DA00DADADA000000000027E0E00000B9B9000096960000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E40004040400000000000404040004C48F001AA44F000F4F
      2400040404000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404040004040400E4E4
      E400E4E4E400E4E4E400040404000000000004040400040404009A8F6F000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E3E1FF944817FFBA671DFFBD7A26FFBE8129FFBF882DFFC08F31FFC195
      33FFC29C37FFC3A339FFC4AA3DFFC6B141FFC6B644FFC6B445FFC49D4FFFAB5D
      30FF000000FF000000FF000000FF000000FF0000000000000000F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200E6E6E600CECECE00B6B6B600000000004C8E
      B200000000009B9B9B007272720000000000E6E6E600E6E6E600F2F2F200EFEF
      EF00E1E1E100DADADA00000000002AE3E30000B9B90000969600000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400040404000000000000000000000000000404040004C48F001AA4
      4F00040404000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E3E1FF944817FFBB681FFFBD7A27FFBE8129FFBF882DFFC08F31FFC195
      33FFC29C37FFC3A339FFC4AA3DFFC5AF41FFC6AE44FFC2994AFFAB5E30FF0000
      00FF000000FF000000FF000000FF000000FF00000000F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200E6E6E600CECECE00B6B6B6000000
      000000000000ADADAD00868686008686860000000000E6E6E600F0F0F000F7F7
      F700F4F4F400E9E9E900DADADA000000000018D1D10000B9B900009696000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000040404000404
      0400000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E3E1FF944817FFBB6524FFBB6C21FFBB7122FFBC7725FFBD7D27FFBF84
      2DFFC19032FFC39D39FFC4A83EFFC5A840FFC29649FFAA5B2CFF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200E6E6E600CECECE00B6B6B6009E9E
      9E0000000000BBBBBB009E9E9E00929292008686860000000000EAEAEA00F3F3
      F300FEFEFE00F5F5F500E6E6E600AAAAAA00000000001BD4D40000B9B9000096
      960000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E5E5FF974C1CFF944817FF944817FF944817FF944817FF944817FF9448
      17FF944817FFC39839FFC4A23DFFC19247FFAA5B2CFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000000000000000000000F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200CECECE00B6B6B6009E9E
      9E0000000000C2C2C2009E9E9E009E9E9E00929292008686860000000000E6E6
      E600FBFBFB00F6F6F600E6E6E6000000000000000000000000001ED7D7000096
      960000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E6E6FFE7E5E5FFE7E3E1FFE7E3E1FFE7E3E1FFE7E3E1FFE7E3E1FF4035
      31FF944817FFC38C3AFFC28F48FFAA5B2CFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000F2F2F200F2F2F200F2F2F200F2F2F200E6E6E600B6B6B600B6B6
      B60000000000C2C2C200AAAAAA009E9E9E009E9E9E0092929200868686000000
      0000DDDDDD00E6E6E600AAAAAA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF2925
      23FF944817FFC68A58FFAB5A2DFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000F2F2F200F2F2F200F2F2F200CECECE00CECE
      CE0000000000C2C2C2004A4A4A004A4A4A009E9E9E009E9E9E00929292000000
      0000AAAAAA00E6E6E60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF0000
      00FFA9572DFFA95125FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F200F2F2F200E6E6
      E60000000000C2C2C2004A4A4A00868686009E9E9E004A4A4A0000000000295D
      790000000000AAAAAA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF0000
      00FFB76F4DFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F20000000000C2C2C200B6B6B6009E9E9E0000000000000000004385A9004082
      A600285C78000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000498B
      AF003D7FA3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE6E6E6FFE6E6E6FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000004A4A4A004A4A4A0000000000E6E6
      E600E6E6E6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A004A4A4A0000000000E6E6
      E600E6E6E6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF4A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A0000000000E6E6
      E600E6E6E600E6E6E60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A0000000000E6E6
      E600E6E6E600E6E6E60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFFCECECEFF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4A4A4AFF4A4A4AFF4A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFFCECECEFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000000000004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFF0F8585FFB7C5C5FFCECECEFFCECECEFFCECECEFF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF4A4A
      4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000000000004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFF72ABABFF519E9EFF2E9191FFB7C5C5FFCECECEFFCECECEFFCECE
      CEFF000000FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFBAC5
      BAFF469A44FF409F3FFF41A040FF41A040FF41A03FFF40A03FFF3F9F3EFF3E9F
      3EFF157414FF48A847FF49A747FF4EAB4DFF55AD53FF53AB51FF52AB51FF53AB
      51FF53AB51FF51A950FF97C396FF000000FF0000000000000000000000000000
      00004A4A4A004A4A4A004A4A4A0000000000E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A004A4A4A004A4A4A0000000000E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF000000FFCECECEFFCECE
      CEFFCECECEFF178888FFB7C5C5FFB7C5C5FF2E9191FFB7C5C5FFCECECEFFCECE
      CEFFCECECEFF000000FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECECEFF88B3
      87FF59EE57FF70F26DFF6DF16AFF6BF068FF6AF066FF67F064FF65EF62FF63EE
      61FF61ED5FFF5FED5CFF5DEC5AFF5AEC59FF59EB56FF57EA54FF55EA53FF53E9
      51FF52E950FF51EE4EFF2BA82BFF000000FF0000000000000000000000000000
      000000000000000000004A4A4A0000000000E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4A0000000000E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF000000FFCECECEFFCECE
      CEFF72ABABFF5CA2A2FF66C0C0FF58C1C1FFB7C5C5FF2E9191FFB7C5C5FFCECE
      CEFFCECECEFFCECECEFF000000FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4A4A4AFF000000FFCECECEFF86B1
      86FF40BE3FFF45BE43FF42BA40FF40B83FFF3EB63DFF3CB43BFF3AB139FF38AE
      37FF36AC35FF34A933FF32A731FF30A52FFF2EA32DFF2CA12BFF2A9E2AFF299C
      28FF289B28FF2BAD2AFF249723FF000000FF0000000000000000000000000000
      0000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600CECE
      CE00C2C2C2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600CECE
      CE00C2C2C2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE6E6E6FFCECECEFFCECE
      CEFF178888FFB7C5C5FF44BCBCFF38BFBFFF5BC4C4FFB7C5C5FF2E9191FFB7C5
      C5FFCECECEFFCECECEFFCECECEFF000000FF0000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE6E6E6FFCECECEFF86AF
      85FF2C9C2CFF2E9C2EFF2C9A2CFF2A972AFF289528FF269326FF249124FF238F
      22FF218C20FF1E8A1EFF1D881CFF198319FF1A7C1AFF1F7E1FFF1C7B1CFF1978
      19FF177718FF158816FF1E881DFF000000FF0000000000000000000000000000
      0000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600CECECE00C2C2C200AAAA
      AA00AAAAAA009292920000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600CECECE00C2C2C200AAAA
      AA00AAAAAA009292920000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE6E6E6FFE6E6E6FF80B8
      B8FF5CA2A2FF64BDBDFF34BBBBFF38BFBFFF3BC3C3FF5EC7C7FFB7C5C5FF2E91
      91FFB7C5C5FFCECECEFFCECECEFFCECECEFF000000FF00000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE6E6E6FFE6E6E6FF93BC
      92FF279527FF289528FF238E23FF208A20FF1E881EFF1B861BFF1A841AFF1881
      18FF167F16FF147D14FF127912FF2C842BFF77C077FF7BC17CFF7AC17BFF79BF
      79FF74B674FF238F23FF1D851CFF000000FF0000000000000000000000000000
      00000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600CECECE00C2C2C200AAAAAA00AAAAAA009292
      920092929200929292007A7A7A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600CECECE00C2C2C200AAAAAA00AAAAAA009292
      920092929200929292007A7A7A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FF1A8B
      8BFF85C8C8FF31B7B7FF34BBBBFF38BFBFFF3BC3C3FF3FC7C7FF50C9C9FF9DC6
      C6FF2E9191FFB7C5C5FFCECECEFFCECECEFFCECECEFF000000FF000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FF92BB
      92FF249324FF2F9730FF55A955FF61AC61FF62AC61FF61AB61FF5FAA5FFF5FA9
      5FFF5EA95EFF58A458FF569156FFAED3AEFFB6E1B6FFA2CFA2FF92C693FFA7D2
      A7FF5CA65CFF1A8C1AFF1D871CFF000000FF0000000000000000000000000000
      00000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600CECECE00B6B6B600AAAAAA00AAAAAA0092929200929292008686
      86007A7A7A007A7A7A006E6E6E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600CECECE00B6B6B600AAAAAA00AAAAAA0092929200929292008686
      86007A7A7A007A7A7A006E6E6E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFE6E6E6FFE6E6E6FF80B8B8FF66AD
      ADFF56BEBEFF31B7B7FF34BBBBFF38BFBFFF3BC3C3FF3FC7C7FF43CBCBFF46CF
      CFFF91D6D6FF339696FFCCDADAFFE6E6E6FFE6E6E6FF000000FF000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FF92BB
      91FF228F21FF30962EFF76B976FFA4D8A3FF94D293FF91D091FF91D191FF91D0
      91FF8ECD8DFF8AB78AFFE2EFE2FFCEEBCFFFC1E4C2FFC9EBC9FFC0DEC0FF599E
      59FF177D17FF158B15FF1E881DFF000000FF0000000000000000000000000000
      000000000000E6E6E600E6E6E600E6E6E600E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600E6E6E600E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FF198B8BFF88BC
      BCFF6BC3C3FF31B7B7FF34BBBBFF38BFBFFF3BC3C3FF3FC7C7FF43CBCBFF46CF
      CFFF4AD3D3FFA9D0D0FF198B8BFFE6E6E6FF000000FF00000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF92BC
      92FF208D20FF208C20FF2D912DFF79B779FF9BCA9BFF87BF86FF82BC81FF7CB6
      7CFF84AA84FFE6F1E6FFC4E2C4FFB8D8B8FFBEDBBFFFC7DFC6FFB4E1B3FF55A3
      55FF187C18FF188D18FF188617FF000000FF0000000000000000000000000000
      000000000000E6E6E600E6E6E600E6E6E600000000004A755800344439003444
      3900344439003444390034443900344439003444390034443900344439003444
      3900344439003444390034443900344439003444390034443900344439003444
      390034443900344439002F3A3300000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600E6E6E6000000000070A6810070A6810070A6
      810070A6810070A6810070A6810070A6810070A6810070A6810070A6810070A6
      810070A6810070A6810070A6810070A6810070A6810070A6810070A6810070A6
      810070A6810070A6810070A68100000000000000000000000000000000000000
      00000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFCCDADAFF4CA2
      A2FF4CA2A2FF86CACAFF47BFBFFF38BFBFFF3BC3C3FF3FC7C7FF43CBCBFF46CF
      CFFF6CD6D6FF66ADADFF80B8B8FFE6E6E6FF000000FF00000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF92BB
      92FF1D8A1DFF1F8B1FFF1A871AFF298D29FF73B473FF96C795FF80B680FF93B7
      93FFDEEDDEFFC2E1C1FFC1DDC1FFCBE2CBFFD4E7D4FFBCD9BCFFA0CEA0FFABE0
      ABFF52A052FF1D901DFF128412FF000000FF0000000000000000000000000000
      0000E6E6E600E6E6E600E6E6E600E6E6E6000000000057936A004A7558005793
      6A0057936A004A75580057936A0057936A004A75580057936A0057936A004A75
      580057936A0057936A004A7558004A75580057936A0057936A005B9C70005B9C
      700057936A004A75580034443900000000000000000000000000000000000000
      0000E6E6E600E6E6E600E6E6E600E6E6E6000000000070A6810070A6810070A6
      810070A6810070A681002782270070A6810070A6810070A6810070A6810070A6
      810070A6810070A6810070A6810070A6810070A6810070A681002782270070A6
      810070A6810070A6810070A68100000000000000000000000000000000000000
      000000000000000000FFE6E6E6FFE6E6E6FFCECEE8FF5757F5FFE6E6E6FFE6E6
      E6FF99C4C4FF339696FF99C4C4FF71CBCBFF3BC3C3FF3FC7C7FF43CBCBFF46CF
      CFFF91D6D6FF1A8B8BFFE6E6E6FF000000FF0000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF93BB
      92FF1A871AFF1D881DFF1B861BFF178217FF248724FF69A769FFA5C2A4FFD7E9
      D6FFC2E1C2FFBADAB9FFD1E8D1FFC4DAC4FF94C293FF85BB85FF86BD86FF81BB
      81FF5AAA5AFF239723FF128412FF000000FF0000000000000000000000000000
      0000E6E6E600E6E6E600E6E6E600E6E6E600000000005B9C700041614B00E6E6
      E60057936A004A755800CECECE0057936A004A755800CECECE0057936A004A75
      5800E6E6E60057936A004A7558004A755800CECECE0057936A00E6E6E600CECE
      CE00CECECE0057936A0034443900000000000000000000000000000000000000
      0000E6E6E600E6E6E600E6E6E600E6E6E6000000000070A6810070A6810070A6
      810070A68100000000002981290070A6810070A68100000000002981290070A6
      810070A68100000000002981290070A6810070A68100000000002981290070A6
      810070A6810070A6810070A68100000000000000000000000000000000000000
      000000000000000000FFE6E6E6FFE6E6E6FF5555F5FF9E9EEDFFE6E6E6FFE6E6
      E6FFE6E6E6FFCCDADAFF4CA2A2FF4CA2A2FF8BCFCFFF51CACAFF43CBCBFF68D3
      D3FF66ADADFF80B8B8FFE6E6E6FF000000FF0000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF92BB
      92FF188418FF1B851BFF188319FF168016FF157815FF5AA65AFFB8DCB8FFCFE7
      CEFFBAD9BAFFBFDDBFFFCCE9CCFF86C185FF1A791AFF127D12FF158016FF1582
      16FF188418FF1F971FFF158714FF000000FF000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600000000005B9C700041614B00E6E6
      E60057936A0057936A00CECECE0057936A004A755800CECECE0057936A004161
      4B00E6E6E60057936A0057936A004A755800CECECE0057936A00E6E6E6004161
      4B004A7558004A7558003444390000000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000070A6810070A6810070A6
      810070A68100000000002B7F2C0070A6810070A6810070A68100000000002B7F
      2C00000000002B7F2C0070A6810070A6810070A68100000000002B7F2C0070A6
      810070A6810070A6810070A68100000000000000000000000000000000000000
      0000000000FFE6E6E6FFE6E6E6FF9C9CEDFF5555F5FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF99C4C4FF339696FF99C4C4FF78D3D3FF8FD4
      D4FF1A8B8BFFE6E6E6FF000000FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF92BA
      91FF168116FF198219FF167F16FF177A17FF55A655FF8CCF8CFF89C289FFA7CE
      A7FFCFE5CFFFCAE2CAFF98C998FF8DCF8CFF61B060FF1B7C1BFF188319FF1C87
      1CFF1E891DFF229A22FF168815FF000000FF000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600000000005B9C700041614B00E6E6
      E600E6E6E600E6E6E600E6E6E60057936A004A755800CECECE0057936A004161
      4B00E6E6E60057936A00E6E6E60057936A00CECECE0057936A00E6E6E6004A75
      58004A7558004A7558003444390000000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000070A6810070A6810070A6
      810070A68100000000002D7E2F0070A6810070A6810070A6810070A681000000
      00002D7E2F0070A6810070A6810070A6810070A68100000000002D7E2F0070A6
      810070A6810070A6810070A68100000000000000000000000000000000000000
      0000000000FFE6E6E6FFCDCDE8FF3A3AF8FF4646F7FF9C9CEEFFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFCCDADAFF4CA2A2FF4CA2A2FF5BA8
      A8FF80B8B8FFE6E6E6FF000000FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF92BA
      91FF147F14FF157F15FF167917FF57A657FF91D391FF83BE83FF7DB77DFF89BE
      89FFC3DDC3FFB5D5B5FF7FBB7FFF84C083FF94D493FF67B366FF1F801FFF1D88
      1DFF208B20FF259D25FF178A16FF000000FF0000000000000000E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600000000005B9C700041614B00E6E6
      E60041614B0041614B00E6E6E60057936A004A755800CECECE0057936A004161
      4B00E6E6E600CECECE0041614B00E6E6E600CECECE0057936A00E6E6E6004A75
      58004A7558004A75580034443900000000000000000000000000E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000070A6810070A6810070A6
      81002E7C3100000000002E7C31002E7C31002E7C310070A68100000000002E7C
      3100000000002E7C310070A6810070A681002E7C3100000000002E7C31002E7C
      31002E7C310070A6810070A68100000000000000000000000000000000000000
      00FFE6E6E6FFE6E6E6FF5151F6FF9C9CEDFFCDCDE8FF5252F6FF5454F5FFCECE
      E8FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF99C4C4FF1087
      87FFE6E6E6FF000000FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF93BA
      92FF117C11FF1A7C1AFF5CA95CFF98D898FF81BB81FF7EB87EFF8BBF8BFFA3CC
      A3FF2A892AFF55A054FFA9D0A8FF86BE85FF85C184FF9BDB9AFF6FB86EFF2988
      28FF228D21FF27A127FF188C18FF000000FF0000000000000000E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600000000005B9C700041614B00E6E6
      E6004A75580041614B00E6E6E60041614B00E6E6E600E6E6E600E6E6E6004161
      4B00E6E6E60041614B004A75580041614B00E6E6E60041614B00E6E6E6004A75
      58004A7558004A75580034443900000000000000000000000000E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000070A6810070A681000000
      00000000000000000000000000000000000070A6810000000000307B340070A6
      810070A681000000000070A68100000000000000000000000000000000000000
      000070A6810070A6810070A68100000000000000000000000000000000000000
      00FFE6E6E6FF9A9AEEFF5050F6FFE6E6E6FFE6E6E6FFE6E6E6FF9D9DEDFF5757
      F5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FF000000FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF92BA
      91FF137B14FF56A457FFA5DDA5FF97C697FF95C495FF9AC79AFF97C697FF318C
      32FF147F14FF158015FF57A558FFA4CFA3FF9BCB9AFF9DCD9BFFAAE0A9FF6DB8
      6CFF2C932BFF29A42AFF1A8F19FF000000FF00000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600000000005B9C700041614B004161
      4B004A75580041614B0041614B0041614B0041614B0041614B0041614B004161
      4B0041614B004A7558004A7558004A75580041614B0041614B0041614B004A75
      58004A7558004A755800344439000000000000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000070A6810070A6810070A6
      810070A6810070A6810070A6810070A6810070A6810070A6810070A6810070A6
      810070A6810070A6810070A6810070A6810070A6810070A6810070A6810070A6
      810070A6810070A6810070A68100000000000000000000000000000000FFE6E6
      E6FFE6E6E6FF4E4EF6FFCDCDE8FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FF4E4EF6FF9C9CEEFFE6E6E6FFE6E6E6FFCECEE8FF5757F5FFE6E6
      E6FF000000FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF92BA
      92FF147B14FF509E50FF7BB37BFF7CB57CFF7BB47BFF71B072FF328E32FF157F
      16FF188218FF19851AFF1D871DFF55A555FF83BE83FF84BF84FF81BE81FF65B3
      64FF329931FF2CA62CFF1A901AFF000000FF00000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000070A681005B9C70005B9C
      70005B9C70005B9C70005B9C70005B9C70005B9C70005B9C70005B9C70005B9C
      70005B9C70005B9C70005B9C70005B9C70005B9C70005B9C70005B9C70005B9C
      700057936A0057936A004A7558000000000000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000070A6810070A6810070A6
      810070A6810070A6810070A6810070A6810070A6810070A6810070A6810070A6
      810070A6810070A6810070A6810070A6810070A6810070A6810070A6810070A6
      810070A6810070A6810070A68100000000000000000000000000000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFCDCDE8FF5252F6FF5454F5FFCECEE8FF6D6DF3FF8686F0FFE6E6
      E6FF000000FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF92B9
      91FF0F790FFF0F7B0FFF0D7A0DFF0E7B0EFF107C10FF127E12FF178317FF1A85
      1AFF1C881CFF1E8A1EFF208C1FFF1F8C1EFF1E8D1EFF20901FFF229221FF2695
      26FF2B992BFF32AD31FF1C931CFF000000FF000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF9D9DEDFF4444F7FF3C3CF8FFE6E6E6FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF92BB
      92FF1D8D1DFF229222FF239222FF249424FF269725FF289827FF299A28FF2B9C
      2AFF2D9E2CFF2EA12EFF31A330FF33A632FF34A834FF36AA35FF38AC37FF3AAE
      39FF3CB03BFF44C743FF24A022FF000000FF0000000000000000000000000000
      000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E60017171700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E60017171700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF3838F8FFB5B5EBFFE6E6E6FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF97BF
      96FF43B842FF63CD62FF63CD61FF64CE62FF65D064FF67D265FF69D367FF6AD6
      68FF6DD76AFF6EDA6CFF6FDB6EFF72DD70FF73DF71FF74E173FF76E374FF77E4
      76FF79E778FF80F27EFF27B025FF000000FF0000000000000000000000000000
      0000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF8181F0FF6969F3FFE6E6E6FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE0E3
      E0FF8FC48EFF9ACD9AFF9ACD99FF9ACD99FF9ACD99FF9ACE9AFF4C7F4BFFA3D7
      A2FFA4D7A2FFA4D8A3FFA4D8A3FFA4D8A4FFA5D8A3FFA5D8A4FFA4D8A4FFA4D8
      A4FFA5D9A4FFA1D9A0FFC5E2C5FF000000FF0000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF4E4EF6FFCDCDE8FFE6E6E6FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FFE6E6E6FFE6E6E6FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE6E6E6FFE6E6E6FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000040404FF040404FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4FFF4F4F
      4FFF040404FFCFCFCFFFCFCFCFFF040404FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4FFF4F4F4FFF4F4F4FFF4F4F
      4FFF040404FFCFCFCFFFCFCFCFFFCFCFCFFF040404FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF0404
      04FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF00000000FFE2
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF0404
      04FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF0404
      04FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFF040404FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFF040404FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00644F4F005A5A5A008F8F8F00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF0004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E1A471FFCB875EFF905B5FFF8A5559FF996366FF9962
      65FF996265FFBE8865FFA38D7BFFA18D7CFFB0A59BFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFF040404FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF0004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF0004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00644F4F006F8F9A00A48484005A5A5A008F8F8F00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7DAC4FFE8A46DFF9D656DFF9C637AFF9F6A84FF7949
      67FF58585EFF16583FFF847936FFEBB183FFE6BA9AFF8B776CFFC0B8B1FFC6C0
      BAFFC7C2BFFFC7C3C0FFC8C7C7FF131211FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF0064BAEF00448FDA006F8F9A00A48484005A5A5A008F8F8F00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAF0E7FFA6693BFFE59B6BFFC47C64FF786E
      76FF637D85FF646A69FF147568FF385E6CFFC0866FFFF3BA97FFBB7D51FFA97A
      53FFD0A583FFD1A684FFCDA481FFCD946CFF593316FFE6DFD8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400848FFA004FBAFA00448FDA006F8F9A00A48484005A5A5A008F8F
      8F00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404FFE2D5CAFFEB9A63FFEEA172FFA47B
      78FF1A72AEFF0089B9FF007DAEFF006792FF073155FF6E485DFFE4996CFFE39A
      70FFD29E80FFF8CAB6FFBDB78BFFEEBA9DFFF2A37DFFCE8351FFAE9B8BFFF9F7
      F4FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00AFAF
      AF007A7A7A001A242F00243A44009A9A9A00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400848FFA004FBAFA00448FDA006F8F9A00AF8484005A5A
      5A008F8F8F00E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404FFE1DCD7FFEDAA7AFFEAAB92FFA32C
      37FFA43E43FF615CA0FF466AB1FF484E99FF584D6EFF503E77FF6F4979FFDB8F
      5DFFC25D49FFF9C8ACFFF9C8ACFFF8C1A3FFF3A582FFF4A684FFF1A880FFB17F
      5AFFD2C8BFFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4008F8F
      8F008484840084848400848484009A9A8F00E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400AFAFAF005A5A5A002F44
      4F003A5A6F00447A8F005A84A4004F4F4F00E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400848FFA005ABAFA00447ACF006F8F9A00A484
      84006F6F6F006F6F6F006F6F6F006F6F6F006F6F6F008F8F8F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000040404FFE4E4E4FFDAC7B8FFF6C39FFFD69492FF8300
      2EFF83002EFF8B0A2CFF95172BFF95172BFF95172BFF95172BFF95172BFF9517
      2BFFB04D58FFFBD7BFFFFCD7BFFFF9C6AAFFF4A683FFF4A684FFF6B599FFF8CE
      BBFFE3B592FFDBC2AEFF00000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400BABABA00C4AF9A00E4DA
      CF00EFE4E400EFE4E400EFE4E400CFCFCF00847A6F009A9A9A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400AFAFAF005A5A5A00243A44003A647A004F84
      A4004F84A400447A9A005A84A4004444440004040400FAFAFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400848FFA004FBAFA00448FDA008F8F
      8F007A7A7A00C49A8400CFAF8F00E4BAAF00DAAFA4006F6F6F006F6F6F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000040404FFE4E4E4FFD1B094FFF9D0B6FFE1A79FFFC16D
      77FFC16D77FFC16D77FFC16D77FFC16D77FFC16D77FFC16D77FFC16D77FFC16D
      77FFDA9996FFFBD4BDFFFBD4BDFFF7BB9DFFF4A683FFF4A684FFF6B599FFF9D0
      BEFFFCEBE3FFDDB18CFF00000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4009A9A9A00E4CFC400FAFAEF00E4E4
      E400CFBAAF00DAAFA400E4BAAF00EFDACF00FAFAEF00E4E4E40084848400CFCF
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4000F242400447A8F004F84A400447A9A004F84
      A4003A6F8F003A647A00648FAF0004040400040404005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400848FFA00848FFA00AF84
      8400FACFA400FAEFC400FAFACF00FAFADA00FAFADA00FAFADA00A48484006F6F
      6F00000000000000000000000000000000000000000000000000000000000000
      000000000000040404FFE4E4E4FFE4E4E4FFCC9E7AFFF8C7AEFFF8C8AEFFF8C8
      AEFFF8C8AEFFF8C8AEFFF8C8AEFFF8C8AEFFF8C8AEFFF8C8AEFFF8C8AEFFF8C8
      AEFFF8C8AEFFF8C8AEFFF8C8AEFFF5AE8EFFF4A683FFF4A684FFF6B599FFF9D0
      BEFFFCECE4FFD8AB84FF00000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400DADADA00A4A4A400EFEFEF00EFEFEF00DAAF8F00C464
      3A00C4643A00DAAF8F00CF7A4F00BA642F00CF8F6F00EFE4E400EFEFEF008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F004F84A400447A8F003A647A004F84
      A400446F8F003A647A00648FAF00040404000F0F0F005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400CFAF8F00FACF
      A400FAEFBA00FAFAC400FAFADA00FAFADA00FAFAFA00FAFAFA00FAEFC4007A64
      64008F8F8F000000000000000000000000000000000000000000000000000000
      000000000000040404FFE4E4E4FFE4E4E4FFCE9368FFF6B596FFF6B596FFF6B5
      96FFF6B596FFF6B596FFF6B596FFF6B596FFF6B596FFF6B596FFF6B596FFF6B5
      96FFF6B596FFF6B596FFF6B596FFF4A784FFF4A683FFF4A684FFF6B599FFF9D0
      BEFFFCECE4FFDFB28DFF00000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400BABABA00E4CFC400FAFAEF00CF8F6F00BA642F00CF64
      2F00C4846F00EFEFEF00E4BAA400BA642F00BA642F00C47A4F00EFDACF00EFE4
      E4009A9A9A000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F005A84A4003A6F8F003A647A004F84
      9A003A6F8F003A647A006F9AAF00040404000F0F0F005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400DAAFA400FAEF
      C400FAE4AF00FAFAC400FAFADA00FAFAEF00FAFAFA00FAFAFA00FAFADA00C49A
      84006F6F6F000000000000000000000000000000000000000000000000000000
      0000040404FFE4E4E4FFE4E4E4FFE4E4E4FFE29253FFEFAC80FFEFAA83FFEE9D
      78FFEE9D78FFEE9D78FFEE9D78FFEE9D78FFEE9D78FFEE9D78FFEE9D78FFEDA1
      77FFF0AD81FFF0AD81FFF0AF86FFF4AA88FFF4A683FFF4A684FFF6B599FFF9D0
      BEFFFCECE4FFECB98FFF00000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400AFA49A00FAFAFA00E4AF9A00BA642F00CF642F00CF64
      2F00CF643A00DA8F6400CF6F3A00CF642F00CF642F00BA642F00CF846400FAFA
      EF009A8F8F000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F004F84A400446F8F003A647A00447A
      8F003A647A001AC4CF006F9AAF00040404000F0F0F005A5A5A00000000008484
      8400DADADA000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400CFAF8F00FAFA
      CF00FADAAF00FAFAC400FAFADA00FAFADA00FAFAEF00FAFADA00FAFADA00CFAF
      8F006F6F6F000000000000000000000000000000000000000000000000000000
      0000040404FFE4E4E4FFE4E4E4FFE4E4E4FFE3D5C9FFEAB589FFFCEEE7FFF0C2
      B4FFE08975FFE08874FFE08874FFE08874FFE08874FFE08874FFE08874FFE08B
      78FFF1CCC4FFFDF0EAFFFDF0EAFFFBE2D7FFF4AD8EFFF4A684FFF6B599FFF9D0
      BEFFFCEBE4FFEDB88DFF00000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400BAAFAF00E4CFC400FAFAEF00CF7A4400CF642F00CF642F00CF64
      2F00CF7A4F00E4CFC400DA8F6F00CF642F00CF642F00CF642F00C4643A00EFDA
      CF00EFE4E4009A8F8F0000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F00447A9A003A6F8F003A647A004F84
      A4004F849A0024A4AF006F9AAF00040404000F0F0F003A3A3A00645A5A00443A
      2F007A7A7A00AFAFAF00AFAFAF00000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400DAAFA400FAEF
      C400FAE4AF00FAEFBA00FAFACF00FAFADA00FAFADA00FAFADA00FAFACF00CFAF
      8F006F6F6F000000000000000000000000000000000000000000000000000404
      04FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE3DBD5FFE6AB7CFFF9D4
      C2FFEBB4A8FFC66563FFC45F5FFFC45F5FFFC45F5FFFC45F5FFFC45F5FFFC45F
      5FFFC46060FFDFA29CFFFAD9CBFFFAD9CBFFF9D3C3FFF5B091FFF6B599FFF9D0
      BEFFFBE8DFFFF0C29DFF00000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400AFA49A00EFDACF00EFDACF00CF6F3A00CF643A00CF642F00CF64
      2F00C47A4F00EFE4E400EFC4AF00CF6F3A00CF642F00CF642F00CF642F00DAAF
      9A00EFEFEF009A8F8F0000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F00447A9A004F849A00447A9A004F84
      A400446F8F003A647A006F9AAF00040404000F0F0F003A2F2400847A64006F64
      4F0044443A0044443A001A0F0F00000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400DAAFA400FAFA
      CF00FAFADA00FAE4AF00FAEFBA00FAFAC400FAFAC400FAFAC400FAFAC400BA8F
      84008F8F8F000000000000000000000000000000000000000000000000000404
      04FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE3E0DFFFE5AF
      87FFF4B99AFFE8A594FFAF4251FFA63448FFA63448FFA63448FFA63448FFA634
      48FFA63448FFA63448FFC76F73FFF6BFA8FFF7C1A9FFF7BFA7FFF6B99DFFF9D0
      BEFFF8DAC6FFF5D8C0FF00000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400AFA49A00EFDACF00EFDACF00CF6F3A00CF6F3A00CF642F00CF64
      2F00CF642F00C48F7A00EFEFEF00EFC4AF00CF6F3A00CF642F00CF642F00E4AF
      8F00FAFAEF009A8F8F0000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F005A84A4003A6F8F003A647A004F84
      9A003A6F8F003A647A006F9AAF00040404000F0F0F006F644F00A48F7A009A8F
      6F009A8F6F008F8464002F24240000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400DAAF9A00EFDA
      CF00FAFAFA00FAFADA00FAEFBA00FADAAF00FAE4AF00FAEFBA00FACFA4009A6F
      6F00000000000000000000000000000000000000000000000000040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE5B794FFF1A47AFFE99981FFA02B44FF8D0F35FF8D0F35FF8D0F35FF8D0F
      35FF8D0F35FF8D0F35FF8D0F35FFAC4052FFF0A689FFF5AC8CFFF5AC8DFFF7C1
      A8FFF3C5A4FFFAF1E8FF0000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400AFA49A00EFDACF00EFE4E400DA7A4400DA6F3A00CF642F00CF64
      2F00CF642F00CF642F00DAA48400FAFAFA00DA9A7A00CF643A00CF6F3A00EFBA
      AF00FAFAEF009A8F8F000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F004F84A400446F8F003A647A004F84
      9A00446F8F003A647A006F9AAF00040404001A1A1A00241A1A00645A4F006F64
      4F0044443A005A5A5A005A5A5A0000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400DAAF
      A400FAEFC400FAFADA00FAFACF00FAEFBA00FAEFC400FACFA400BA8F8F000000
      0000000000000000000000000000000000000000000000000000040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE3CAB6FFE4B48FFFE2B799FFCB7764FFCC7A6AFFD08A85FFD087
      80FFCF837BFFCF7F76FFCE7B71FFCE776BFFD57D55FFEEA06FFFD78E57FFEFC4
      A2FFF2C7A4FF000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400BAAFAF00E4CFC400FAFAFA00EFA47A00E47A4400CF846400E4CF
      C400DA9A7A00CF642F00CF845A00FAFAEF00E4BAA400DA6F3A00DA7A4400EFE4
      E400EFE4E4009A8F8F000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F004F84A4003A6F8F003A647A00446F
      8F003A647A00447A8F006F9AAF000F0F0F001A1A1A005A5A5A00CFCFCF004444
      3A00BABABA000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400DAAFA400DAAFA400CFAF8F00E4BAA400DAAF9A008F8F8F00000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      04FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE7B38AFFF4CBAEFFFDEFE9FFFCEA
      E2FFFBE4DAFFFBDDD0FFF9D6C6FFF8CEBBFFEAAC85FFF0BBA2FFE29F73FFFBF9
      F7FF000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400AFA49A00FAFAEF00EFE4E400FA9A6F00E48F6400E4DA
      DA00FAFAEF00EFBAAF00EFE4E400FAFAFA00E4A48400E4844F00EFBA9A00FAFA
      FA009A8F8F000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F00447A9A003A647A003A647A00447A
      9A00447A9A00648FAF00647A8F001A1A1A00242424005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000040404FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE2BC9CFFF8DDCBFFF9E2D2FFFDF2
      EEFFFDEEE7FFFCE8DFFFFBE2D7FFFADBCDFFF8CEB9FFE5AB87FFF5BD9FFFE3D5
      C9FF000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4CFC400FAFAFA00FAEFC400FAC48F00E4AF
      8F00EFDACF00EFE4E400EFE4E400FAC4A400FA9A6400FABA9A00FAFAFA00EFE4
      E400AFAFAF000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F00447A9A00447A9A005A84A400648F
      AF00647A8F00444444002F2F2F0024242400242424005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404FF040404FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE3DBD4FFF4D1B6FFF5D4BBFFFEF8
      F6FFFDF5F1FFFDF1ECFFFCECE5FFFCE6DDFFFBDFD3FFE4AD89FFF8CCB8FFC8A1
      83FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400BABABA00E4DACF00FAFAFA00FAFAEF00FAEF
      C400FAE4AF00FADAA400FACFA400FACFA400EFDACF00FAFAFA00FAFAEF00AFAF
      A400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A2F2F005A84A4006F8F9A005A6F7A004444
      44002F2F2F002F2F2F002F2F2F002F2F2F002F2F2F005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000040404FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE9BD99FFF5D6BEFFFEFB
      FAFFFEFAF8FFFEF7F5FFFDF4F0FFFDEFEAFFFCEAE2FFEFC3A5FFF0C9B5FFE2A8
      80FFFAF8F6FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400BABABA00E4CFC400FAFAEF00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAEF00DAC4C400BAAFAF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400646464003A444F001A1A1A000F0F0F000F0F
      0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      04FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF5D4634FFF0C099FFF7E4
      D3FFFFFDFCFFFEFBFAFFFEF9F7FFFDF6F3FFFDF2EEFFFBEAE0FFE1A376FFEDAB
      7BFFF6E6DAFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400BAAFAF00DAC4
      BA00EFDACF00EFDACF00EFDACF00DAC4BA00BABABA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000040404FF040404FFE4E4E4FFE4E4E4FF040404FF00000000F3D1
      B4FFFFFEFEFFFEFDFDFFFEFCFBFFFEFAF8FFFDF8F5FFFDF4F0FFD1AE92FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404FF040404FF0000000000000000FCF5
      EEFFF8E8D9FFF8E8D9FFF8E8D9FFF8E8D9FFF8E8D9FFF8E8D9FFFAECE0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A9A9A009A9A9A009A9A9A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009A9A9A009A9A9A008F8F8F008F8F8F008F8F8F009A9A
      9A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF4F4F4FFF4F4F
      4FFF040404FFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9A9A009A9A9A008F8F8F008F8F8F007A7A7A007A7A7A007A7A7A008F8F
      8F009A9A9A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F
      4FFF040404FFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00848484008484840004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A9A9A009A9A
      9A008F8F8F008F8F8F007A7A7A007A7A7A000404040004040400040404007A7A
      7A008F8F8F009A9A9A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF0404
      04FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400848484009A9A
      9A00AFAFAF00CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A9A9A009A9A9A008F8F8F008F8F
      8F007A7A7A007A7A7A0004040400040404009A9A9A00CFCFCF00BABABA000404
      04007A7A7A008F8F8F009A9A9A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF0404
      04FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000000000004F4F4F004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00AFAFAF00848484000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009A9A9A009A9A9A008F8F8F008F8F8F007A7A7A007A7A
      7A0004040400040404009A9A9A00CFCFCF00DADADA00DADADA00CFCFCF00BABA
      BA00040404007A7A7A008F8F8F009A9A9A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF4F4F
      4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000004F4F4F004F4F4F004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00AFAFAF008484840084848400CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9A9A009A9A9A008F8F8F008F8F8F007A7A7A007A7A7A00040404000404
      04009A9A9A00CFCFCF00DADADA00DADADA00DADADA00DADADA00DADADA00BABA
      BA00BABABA00040404007A7A7A008F8F8F009A9A9A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFF040404FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000000000004F4F4F004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCFCF00C4C4C400AFAF
      AF00848484008484840084848400CFCFCF00E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009A9A
      9A008F8F8F008F8F8F007A7A7A007A7A7A0004040400040404009A9A9A00CFCF
      CF00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00CFCF
      CF00BABABA00BABABA00040404007A7A7A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F00040404008484840084848400848484008F8F
      8F008F8F8F00AFAFAF00E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007A7A7A007A7A7A0004040400040404009A9A9A00CFCFCF00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00BABABA00BABABA00BABABA00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF004F8F4F00045A0400046F
      0400046F040004640400246F24007AAF7A000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4F4F4FFF040404FFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000004F4F4F0004040400AFAFAF00AFAFAF00C4C4C400CFCF
      CF00E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400040404009A9A9A00CFCFCF00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00CFCFCF00BABABA00BABABA007A7A7A000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF002F7A2F00046F0400049A04000FBA0F000FBA
      0F000FBA0F000FBA0F00049A0400048F0400246F240000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF040404FFE4E4E4FFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      04009A9A9A00CFCFCF00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00BABABA00BABABA00BABABA000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF000F7A0F00049A0400049A0400048F0400049A0400049A
      040004CF040004CF040004CF040004CF0400049A040004640400000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4
      E4FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E40004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040404009A9A
      9A00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00CFCFCF00BABABA00BABABA007A7A7A0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF000464040004640400247A2400649A64007AAF7A007AAF7A004F8F
      4F0004640400049A040004CF040004CF040004CF0400049A0400649A64000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00BABABA00BABABA00BABABA0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E4000F7A0F001A7A1A008FAF8F00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00247A2400049A040004E4040004E4040004E40400046F04000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00CFCFCF00BABABA00BABABA007A7A7A00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E4005A8F4400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400046F040004CF040004EF040004EF0400049A04000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400BABABA008484840084848400BABABA00E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E40004040400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00BABABA00BABABA00BABABA00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400449A
      4400046F0400049A0400049A040004CF040004EF040004EF040004CF0400049A
      0400049A0400048F04000F7A0F0000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400BABABA004F4F4F000404040004040400040404000404040004040400E4E4
      E400E4E4E400E4E4E40004040400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00CFCFCF00BABABA00BABABA007A7A7A000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E4002F9A2F00049A04000FFA0F000FFA0F000FFA0F000FFA0F000FFA0F000FFA
      0F000FE40F000F9A0F000000000000000000000000FF000000FF000000FF0000
      00FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400BABA
      BA004F4F4F004F4F4F00040404002F2F2F00BABABA00BABABA007A7A7A000404
      0400E4E4E4000404040000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00E4E4E400FAFAFA00FAFAFA00BABABA00BABABA00BABABA000404
      0400000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400046404002F7A2F00E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4002F9A2F001ABA1A004FFA4F004FFA4F004FFA4F004FFA4F003AEF
      3A000F9A0F00000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400C4C4C4006F6F
      6F004F4F4F008484840004040400E4E4E400E4E4E400BABABA00049A9A00049A
      9A00040404000404040000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00E4E4
      E400FAFAFA00FAFAFA00DADADA00C4C4C400FAFAFA00BABABA00BABABA007A7A
      7A00040404000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000F7A0F00049A0400048F04002F7A2F00E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E4002FA42F002FBA2F008FFA8F008FFA8F006FEF6F001AA4
      1A0000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400848484006F6F
      6F0084848400BABABA0004040400EFEFEF00E4E4E400049A9A0004BABA0004BA
      BA0004BABA000404040000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00E4E4E400FAFAFA00FAFA
      FA00DADADA00C4C4C400C4C4C400C4C4C400C4C4C400FAFAFA00BABABA00BABA
      BA00040404000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E4000F7A0F00049A040004CF040004CF0400048F04002F7A2F00E4E4E400E4E4
      E400E4E4E400E4E4E400040404002FAF2F0044C44400A4EFA4001AA41A000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4006F6F6F006F6F
      6F00BABABA00E4E4E40004040400EFEFEF0044FAFA0004DADA0004DADA00049A
      9A0004BABA0004BABA0004040400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00E4E4E400FAFAFA00FAFAFA00DADADA00C4C4
      C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400FAFAFA00BABA
      BA007A7A7A000404040000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000F7A
      0F000FBA0F0004CF040004CF040004CF040004CF0400048F04002F7A2F00E4E4
      E400E4E4E400E4E4E40004040400000000002FBA3A000FAF1A00000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0404
      04FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000004040400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400646464008484
      8400E4E4E400E4E4E400E4E4E4000404040004DADA00AFFAFA0004DADA0004DA
      DA00046F6F00049A9A00049A9A00040404000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00E4E4E400FAFAFA00FAFAFA00DADADA00C4C4C400C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400FAFA
      FA00BABABA000404040000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000F7A0F0004CF
      040004E4040004E4040004E4040004E4040004E4040004E40400049A04002F7A
      2F00E4E4E4000404040000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0404
      04FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF008000FF008000FF008000FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000004040400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E40064646400BABA
      BA00E4E4E400E4E4E400E4E4E400E4E4E4000404040004DADA00AFFAFA0004DA
      DA0004BABA00046F6F00044F2F00044F2F000404040000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00E4E4
      E400FAFAFA00FAFAFA00DADADA00C4C4C400C4C4C400C4C4C400C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400DADA
      DA00FAFAFA000404040000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000F7A0F00048F0400048F
      0400048F040004CF040004EF040004EF04000FBA0F00048F0400048F0400046F
      04004F9A4F000404040000000000000000000000000000000000000000000000
      0000FAFAFA00000000000000000000000000000000FF000000FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF008000FFB0D1B0FF008000FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FF040404FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF04040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4007A7A7A00BABA
      BA00E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404040004DADA0004DA
      DA00046F6F00044F2F00049A6400046F4F00046F4F0004040400000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00E4E4E400FAFAFA00FAFA
      FA00DADADA00C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400DADADA00FAFAFA00FAFA
      FA0004040400000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400049A040004EF040004EF040004E404000F7A0F00E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000002F9A
      2F0084BA8400FAFAFA000000000000000000000000FF000000FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0080
      00FF008000FF008000FF8CC48CFF078307FF008000FF008000FFE4E4E4FFE4E4
      E4FF040404FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF04040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4009A9A9A007A7A
      7A00E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404040004BA
      BA00044F2F0004BA7A00049A6400049A640004DA8F0004DA8F00040404000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00E4E4E400FAFAFA00FAFAFA00C4C4C4009A9A
      9A00C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400DADADA00FAFAFA00FAFAFA00040404000404
      040000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400048F04001AFA1A001AFA1A001AFA1A000FBA0F002F9A2F00E4E4
      E40004040400000000000000000000000000FAFAFA009AC49A001A8F1A000F9A
      0F0000000000000000000000000000000000000000FF000000FF000000FF0404
      04FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0080
      00FF88BF88FF83BE83FF6FB66FFF77BA77FFA4CAA4FF008000FFE4E4E4FF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4009A9A
      9A00BABABA00E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000404
      0400044F2F0004BA7A0004BA7A0004DA8F000404FA0004049A0004049A000404
      040000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00E4E4E400FAFAFA00FAFAFA00C4C4C4009A9A9A009A9A9A009A9A
      9A00C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4
      C400C4C4C400DADADA00FAFAFA00FAFAFA000404040004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E40064BA64002FBA2F005AFA5A005AFA5A005AFA5A003ACF3A00049A
      04004FAF4F007AC47A007AC47A005ABA5A001AA41A00049A0400048F04000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0080
      00FF008000FF008000FF76B976FF138913FF008000FF008000FFE4E4E4FF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400C4C4C400C4C4C400E4E4E400E4E4E400E4E4E40004040400000000000000
      00000404040004BA7A008FFACF002424FA000404FA000404FA0004049A006F6F
      FA0004040400000000000000000000000000000000000000000004040400E4E4
      E400FAFAFA00FAFAFA00C4C4C4009A9A9A009A9A9A009A9A9A009A9A9A009A9A
      9A00C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400DADA
      DA00FAFAFA00FAFAFA0004040400040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E4000F9A0F005ADA5A009AFA9A009AFA9A009AFA9A009AFA
      9A007AE47A005ACF5A004FCF4F006FDA6F004FCF4F001AA41A00000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FF040404FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF008000FF6DB36DFF008000FFE4E4E4FFE4E4E4FF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4000404040000000000000000000000
      000000000000040404008FFACF006F6FFA002424FA006F6FFA006F6FFA004444
      FA004444FA00040404000000000000000000000000000000000004040400FAFA
      FA00C4C4C4009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A
      9A00C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400DADADA00FAFAFA00FAFA
      FA00040404000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFEFCF0024AF240044C44400BAEFBA00CFEFCF00CFEF
      CF00CFEFCF00CFEFCF008FE48F002FBA2F002FAF2F0000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF040404FF040404FFE4E4
      E4FFE4E4E4FF008000FF008000FF008000FFE4E4E4FFE4E4E4FF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4000404040000000000000000000000
      00000000000000000000040404004444FA006F6FFA008F8FFA002424FA002424
      FA002424FA000404040000000000000000000000000000000000000000000404
      0400FAFAFA00FAFAFA00C4C4C4009A9A9A009A9A9A009A9A9A009A9A9A009A9A
      9A00C4C4C400C4C4C400C4C4C400DADADA00FAFAFA00FAFAFA00040404000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4007ACF840024BA2F0024BA2F003AC4
      4F003AC44F000FAF1A004FC45A009ADA9A000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0404
      04FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400040404000000000000000000000000000000
      0000000000000000000000000000040404008F8FFA006F6FFA004444FA002424
      FA000404FA000404040000000000000000000000000000000000000000000000
      00000404040004040400FAFAFA00FAFAFA00C4C4C4009A9A9A009A9A9A009A9A
      9A00C4C4C400DADADA00FAFAFA00FAFAFA000404040004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FFE4E4E4FFE4E4E4FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400040404000000000000000000000000000000
      000000000000000000000000000000000000040404006F6FFA004444FA000404
      FA00040404000000000000000000000000000000000000000000000000000000
      000000000000000000000404040004040400FAFAFA00FAFAFA00C4C4C4009A9A
      9A00FAFAFA00FAFAFA0004040400040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040400040404000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000404040004040400FAFAFA00FAFA
      FA00040404000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040404000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000000100000100010000000000001000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      C0000001000000000000000000000000C0000001000000000000000000000000
      CFC00001000000000000000000000000C0000001000000000000000000000000
      C0000001000000000000000000000000C0000001000000000000000000000000
      C0000001000000000000000000000000C0003F81000000000000000000000000
      C0003F81000000000000000000000000C0003F81000000000000000000000000
      C0002081000000000000000000000000C0003F81000000000000000000000000
      C0003F81000000000000000000000000C0003F81000000000000000000000000
      C0000001000000000000000000000000C0000001000000000000000000000000
      C0000001000000000000000000000000C0000001000000000000000000000000
      C0000001000000000000000000000000C0000001000000000000000000000000
      C0000001000000000000000000000000C0000001000000000000000000000000
      C0000001000000000000000000000000C0000001000000000000000000000000
      C0000001000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      E0000003FFE7FFFFFFF9FFFFFFFFFFFFE0000001FF03FFFFFFC0FFFFFFFFFFFF
      80000000FC01FFFFFF007FFFFFFFFFFF80000000F000FFFFFC003FFFFFFFFFFF
      00000000C0007FFFF0001FFFC00000010000000080003FFFE0000FFFC0000001
      80000000C0001FFFF00007FFCFC0000180000000F0000FFFFC0003FFC0000001
      80000000FC0007FFFF00011FC0000001C0000000FC0003FFFF000007C0000001
      C0000000FC0001FFFF000007C0000001C0000000F80000FFFE000003C0003F81
      C0000000F80000FFFE000003C0003B81C0000000F00001FFFC000003C0003B81
      C0000000F00001FFFC000005C0002081C0000000E00003FFF8000006C0003B81
      C0000000E000031FF800001FC0003B81C0000000C000070FF00001FFC0003F81
      C0000000C0000007F00001FFC0000001C000000080000003E00003FFC0000001
      C000000080000001E00003FFC0000001C000000000000000C00007FFC0000001
      C000000000000000C00007FFC0000001C000000080000000E0000FFFC0000001
      C0000000E000200FF8000FFFC0000001C0000000F8006007FE001FFFC0000001
      C0000000FE006007FF801FFFC0000001C0000000FF80E007FFE03FFFC0000001
      C0000000FFE0E007FFF83FFFC0000001E0000000FFF9F00FFFFE7FFFFFFFFFFF
      FFFFFFFFFFFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFF
      FFFFFE7FFFFFC0FFFFF9FFFFFFF9FFFFFFFFF03FFFFF007FFFC0FFFFFFC0FFFF
      FFFFC01FFFFC003FFF007FFFFF007FFFFFFF000FFFE0001FFC003FFFFC003FFF
      FFF80007FF80000FF0001FFFF0001FFFFFE00003FE000007E0000FFFE0000FFF
      FF800001F0000003F00007FFF00007FFFC000000C0000003FC0003FFFC0003FF
      F000000080000007FF0001FFFF0001FFE00000010000000FFF0000FFFF0000FF
      C00000038000000FFF00007FFF00007FE0000003F000000FFE00003FFE00000F
      FC000003E000001FFE00003FFE000003F8000007E000001FFC00007FFC000001
      F8000007C000003FFC00007FFC000001F000000FC000003FF80000FFF8000001
      F000000F8000007FF80000FFF8000001E000001F8000007FF00001FFF0000001
      E000001F0000007FF00001FFF0000001C000073F0000003FE00003FFE0000001
      C0000FFF0000003FE00003FFE0000001C0000FFF0000003FC00007FFC0000001
      C0019FFFC000001FC00007FFC0000001F001FFFFF008001FE0000FFFE0000009
      FC03FFFFFC18001FF8000FFFF8000001FF07FFFFFF18001FFE001FFFFE000001
      FFC7FFFFFFF8007FFF801FFFFF800001FFFFFFFFFFF801FFFFE03FFFFFE00001
      FFFFFFFFFFFC07FFFFF83FFFFFF80003FFFFFFFFFFFF1FFFFFFE7FFFFFFE600F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFF
      FFF9FFFFFF03CFFFFFF9FFFFFFF9FFFFFFC0FFFFFC0187FFFFC0FFFFFFC0FFFF
      FF007FFFF00083FFFF007FFFFF007FFFFC003FFFC00001FFFC003FFFFC003FFF
      F0001FFF800000FFF0001FFFF0001FFFE0000FFFC000007FE0000FFFE0000FFF
      F00007FFF000003FF00007FFF00007FFFC0003FFFC00001FFC0003FFFC00033F
      FF0001FFFC00000FFF0001FFFF00001FFF0000FFFC000007FF0000FFFF00000F
      FF00007FF8000003FF00007FFF00000FFE00003FF8000003FE00003FFE00001F
      FE00003FF0000007FE00003FFE00003FFC00007FF0000007FC00007FFC00003F
      FC00007FE0000007FC00003FFC00001FF800003FE000000FF800001FF800000F
      F800001FC000001FF800000FF800000FF000000FC000001FF0000007F000000F
      F00000078000003FF0000107F000011FE000000F8000001FE0000387E00003FF
      E000001F0000000FE00003CFE00003FFC000003F00000007C00007FFC00007FF
      C000007F80000087C00007FFC00007FFE00000FFE00000CFE0000FFFE0000FFF
      F80001FFF80001FFF8000FFFF8000FFFFE0013FFFE0001FFFE001FFFFE001FFF
      FF8017FFFF8003FFFF801FFFFF801FFFFFE03FFFFFE0C3FFFFE03FFFFFE03FFF
      FFF83FFFFFF9E7FFFFF83FFFFFF83FFFFFFE7FFFFFFFFFFFFFFE7FFFFFFE7FFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFE7FFFF
      FFF9FFFFFFF9FFFFFF03FFFFFF03FFFFFFC0FFFFFFC0FFFFFC01FFFFFC01FFFF
      FF007FFFFF007FFFF000FFFFF000FFFFFC003FFFFC003FFFC0007FFFC0007FFF
      F0001FFFF0001FFF80003FFF80003FFFE0000FFFE0000FFFC0001FFFC0001FFF
      F00007FFF0000001F0000FFFF0000FFFFC0003FFFC000001FC0007FFFC0007FF
      FF0001FFFF000001FC0003FFFC0003FFFF0000FFFF000001FC0001FFFC0001FF
      FF00007FFF000001F80000FFF80000FFFE00003FFE000001F80000FFF80000FF
      FE00003FFE000001F0000001F0000001FC00007FFC000001F0000000F0000000
      FC00007FFC000001E0000000E0000000F80000FFF8000001E0000000E0000000
      F80000FFF8000001C0000000C0000000F00001FFF0000001C0000000C0000000
      F00001FFF00000018000000080000000E00003FFE00000018000000080000000
      E00003FFE00000010000000000000000C00007FFC00000010000000000000000
      C00007FFC00000018000000180000001E0000FFFE0000001E0003FFFE0003FFF
      F8000FFFF8000001F8007FFFF8007FFFFE001FFFFE000001FE007FFFFE007FFF
      FF801FFFFF801FFFFF80FFFFFF80FFFFFFE03FFFFFE03FFFFFE0FFFFFFE0FFFF
      FFF83FFFFFF83FFFFFF9FFFFFFF9FFFFFFFE7FFFFFFE7FFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF9FFFFFFF9FFFFFFF9FFFFFFF9FFFFFFC0FFFFFFC0FFFFFFC0FFFFFFC0FFFF
      FF007FFFFF007FFFFF007FFFFF007FFFFC003FFFFC002FFFFC003FFFFC003FFF
      F0001FFFF0001FFFF0001FFFF0001FFFE0000FFFE0000FFFE0000FFFE0000FFF
      F00007FFF00007FFF00007FFF00007FFFC0003FFFC0003FFFC0003FFFC0003FF
      FF0001FFFC0001FFFF0001FFFF0001FFFF0000FFFC0000FFFF0000FFFF0000FF
      FF00007FFE00003FFF00007FFF00007FFE00003FFE00000FFE00003FFE00003F
      FE00003FFE000007FE00003FFE00003FFC00003FFC000003FC00003FFC00003F
      FC00001FFC000003FC00000FFC00003FF800000FF8000003F800000FF800003F
      F8000007F8000003F8000007F800003FF0000007F0000003F0000007F0000027
      F0000007F0000003F0000003F0000001E0000007E0000003E0000003E0000001
      E0000007E0000003E0000003E0000001C000000FC0000003C0000003C0000001
      C000001FC0000007C0000003C0000007E000003FE000000FE0000007E000003F
      F8000FFFF800000FF8000007F800003FFE001FFFFE00000FFE00000FFE00003F
      FF801FFFFF800007FF80001FFF80003FFFE03FFFFFE00007FFE0007FFFE03FFF
      FFF83FFFFFF8201FFFF83FFFFFF83FFFFFFE7FFFFFFE601FFFFE7FFFFFFE7FFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFF
      FFF9FFFFFFE7FFFFFFFC0FFFFFF9FFFFFFC0FFFFFF03FFFFFFF007FFFFC0FFFF
      FF007FFFFC01FFFFFFC003FFFF007FFFFC003FFFF000FFFFFF0001FFFC003FFF
      F0001FFFC0007FFFFC0000FFF0001FFFE0000FFF80003FFFF000007FE0000FFF
      F00007FFC0001FFFE00000FFF00007FFFC0003FFF0000FFFF00000FFFC0000FF
      FF0001FFFC0007FFF000007FFF00007FFF0000FFFC0003FFE000007FFF00003F
      FF00007FFC0001FFC000003FFF00001FFE00003FF80000FFC000003FFE00001F
      FE00003FF80000FFC000001FFE00001FFC00007FF00001FFC000001FFC000001
      FC00007FF00001FFC000000FFC000003F80000FFE00003FFC000000FF8000007
      F80000FFE00003FFC0000007F800000FF00001FFC00003FFC0000007F000001F
      F00001FFC00001FFC0000003F000013FE00003FF800000FFC0000003E00003FF
      E00003FF8000007FC0000003E00003F7C00007FF0000003FC0000007C00007E3
      C00007FF0000001FC000000FC000070FE0000FFF8000200FC000003FE000001F
      F8000FFFE0003007C00000FFF800003FFE001FFFF8007803C00003FFFE00007F
      FF801FFFFE007C03E0000FFFFF8000FFFFE03FFFFF80FE03F0003FFFFFE000FF
      FFF83FFFFFE0FF07FC00FFFFFFF83FFFFFFE7FFFFFF9FF8FFF03FFFFFFFE7FFF
      FFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited consulta: TQuery
    OnCalcFields = consultaCalcFields
    DataSource = myData_Ventana
    SQL.Strings = (
      'SELECT *'
      'FROM CON_PCP_CONT_NOVE_DIAR_EFIC_IN'
      '(:CONS_PERSONAL, :FECH_INICIAL, :FECH_FINAL)')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_personal'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'fech_inicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'fech_Final'
        ParamType = ptInput
      end>
    object consultaFECH_LECTURA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_LECTURA'
    end
    object consultaMINU_CONTRATADOS: TIntegerField
      DisplayLabel = 'Contratado'
      FieldName = 'MINU_CONTRATADOS'
    end
    object consultaMINU_TRAB_ESTANDAR: TIntegerField
      DisplayLabel = 'Trabajado est�ndar'
      FieldName = 'MINU_TRAB_ESTANDAR'
    end
    object consultaMINU_TRAB_NO_ESTANDAR: TIntegerField
      DisplayLabel = 'Trabajado no est�ndar'
      FieldName = 'MINU_TRAB_NO_ESTANDAR'
    end
    object consultaMINU_TRAB_CURVA: TIntegerField
      DisplayLabel = 'Trabajado en curva'
      FieldName = 'MINU_TRAB_CURVA'
    end
    object consultaMINU_TRABAJADOS: TIntegerField
      DisplayLabel = 'Trabajados'
      FieldName = 'MINU_TRABAJADOS'
    end
    object consultaMINU_EXTR_ESTANDAR: TIntegerField
      DisplayLabel = 'Extra est�ndar'
      FieldName = 'MINU_EXTR_ESTANDAR'
    end
    object consultaMINU_EXTR_NO_ESTANDAR: TIntegerField
      DisplayLabel = 'Extra no est�ndar'
      FieldName = 'MINU_EXTR_NO_ESTANDAR'
    end
    object consultaMINU_EXTRAS: TIntegerField
      DisplayLabel = 'Extras'
      FieldName = 'MINU_EXTRAS'
    end
    object consultaMINU_AUSE_ESTANDAR: TIntegerField
      DisplayLabel = 'Ausentismo est�ndar'
      FieldName = 'MINU_AUSE_ESTANDAR'
    end
    object consultaMINU_AUSE_NO_ESTANDAR: TIntegerField
      DisplayLabel = 'Ausentismo no est�ndar'
      FieldName = 'MINU_AUSE_NO_ESTANDAR'
    end
    object consultaMINU_AUSENTISMOS: TIntegerField
      DisplayLabel = 'Ausentismos'
      FieldName = 'MINU_AUSENTISMOS'
    end
    object consultaMINU_IMPR_ESTANDAR: TIntegerField
      DisplayLabel = 'Improductivos est�ndar'
      FieldName = 'MINU_IMPR_ESTANDAR'
    end
    object consultaMINU_IMPR_NO_ESTANDAR: TIntegerField
      DisplayLabel = 'Improductivos no est�ndar'
      FieldName = 'MINU_IMPR_NO_ESTANDAR'
    end
    object consultaMINU_IMPRODUCTIVOS: TIntegerField
      DisplayLabel = 'Improductivos'
      FieldName = 'MINU_IMPRODUCTIVOS'
    end
    object consultaMINU_PROD_ESTANDAR: TFloatField
      DisplayLabel = 'Obtenido est�ndar'
      FieldName = 'MINU_PROD_ESTANDAR'
    end
    object consultaMINU_PROD_CORTE: TFloatField
      DisplayLabel = 'Obtenido corte'
      FieldName = 'MINU_PROD_CORTE'
    end
    object consultaMINU_PROD_FABRICACION: TFloatField
      DisplayLabel = 'Obtenido fabricaci�n'
      FieldName = 'MINU_PROD_FABRICACION'
    end
    object consultaMINU_PROD_NO_ESTANDAR: TFloatField
      DisplayLabel = 'Obtenido no est�ndar'
      FieldName = 'MINU_PROD_NO_ESTANDAR'
    end
    object consultaMINU_PROD_CURVA: TFloatField
      DisplayLabel = 'Obtenido curva'
      FieldName = 'MINU_PROD_CURVA'
    end
    object consultaMINU_PRODUCIDOS: TFloatField
      DisplayLabel = 'Producidos'
      FieldName = 'MINU_PRODUCIDOS'
    end
    object consultaINDI_1_ESTANDAR: TFloatField
      FieldName = 'INDI_1_ESTANDAR'
    end
    object consultaINDI_2_ESTANDAR: TFloatField
      FieldName = 'INDI_2_ESTANDAR'
    end
    object consultaINDI_3_ESTANDAR: TFloatField
      FieldName = 'INDI_3_ESTANDAR'
    end
    object consultaINDI_1_NO_ESTANDAR: TFloatField
      FieldName = 'INDI_1_NO_ESTANDAR'
    end
    object consultaINDI_2_NO_ESTANDAR: TFloatField
      FieldName = 'INDI_2_NO_ESTANDAR'
    end
    object consultaINDI_3_NO_ESTANDAR: TFloatField
      FieldName = 'INDI_3_NO_ESTANDAR'
    end
    object consultaINDI_1_TOTAL: TFloatField
      FieldName = 'INDI_1_TOTAL'
    end
    object consultaINDI_2_TOTAL: TFloatField
      FieldName = 'INDI_2_TOTAL'
    end
    object consultaINDI_3_TOTAL: TFloatField
      FieldName = 'INDI_3_TOTAL'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    verBotonesNavegacion = False
  end
  object myTabl_Ventana: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'cons_personal'
        DataType = ftInteger
      end
      item
        Name = 'fech_inicial'
        DataType = ftDate
      end
      item
        Name = 'fech_Final'
        DataType = ftDate
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.00 beta'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AfterOpen = myTabl_VentanaAfterOpen
    AfterInsert = myTabl_VentanaAfterInsert
    Left = 4
    Top = 65533
    object myTabl_Ventanacons_personal: TIntegerField
      FieldName = 'cons_personal'
    end
    object myTabl_Ventanafech_inicial: TDateField
      FieldName = 'fech_inicial'
    end
    object myTabl_Ventanafech_Final: TDateField
      FieldName = 'fech_Final'
    end
  end
  object quer_pers_Codigo: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PERSONAL, CODI_PERSONAL'
      'FROM GLO_PERSONAL'
      'ORDER BY CODI_PERSONAL')
    Left = 704
    Top = 24
  end
  object data_pers_codigo: TDataSource
    DataSet = quer_pers_Codigo
    Left = 736
    Top = 24
  end
  object quer_pers_nombre: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PERSONAL, NOMB_COMPLETO'
      'FROM GLO_PERSONAL'
      'ORDER BY  NOMB_COMPLETO'
      '')
    Left = 704
    Top = 56
  end
  object data_pers_nombre: TDataSource
    DataSet = quer_pers_nombre
    Left = 736
    Top = 56
  end
  object myData_Ventana: TDataSource
    DataSet = myTabl_Ventana
    Left = 3
    Top = 26
  end
  object tabl_totales: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 2
    FieldDefs = <
      item
        Name = 'FECH_LECTURA'
        DataType = ftDateTime
      end
      item
        Name = 'MINU_CONTRATADOS'
        DataType = ftInteger
      end
      item
        Name = 'MINU_TRAB_ESTANDAR'
        DataType = ftInteger
      end
      item
        Name = 'MINU_TRAB_NO_ESTANDAR'
        DataType = ftInteger
      end
      item
        Name = 'MINU_TRAB_CURVA'
        DataType = ftInteger
      end
      item
        Name = 'MINU_TRABAJADOS'
        DataType = ftInteger
      end
      item
        Name = 'MINU_EXTR_ESTANDAR'
        DataType = ftInteger
      end
      item
        Name = 'MINU_EXTR_NO_ESTANDAR'
        DataType = ftInteger
      end
      item
        Name = 'MINU_EXTRAS'
        DataType = ftInteger
      end
      item
        Name = 'MINU_AUSE_ESTANDAR'
        DataType = ftInteger
      end
      item
        Name = 'MINU_AUSE_NO_ESTANDAR'
        DataType = ftInteger
      end
      item
        Name = 'MINU_AUSENTISMOS'
        DataType = ftInteger
      end
      item
        Name = 'MINU_IMPR_ESTANDAR'
        DataType = ftInteger
      end
      item
        Name = 'MINU_IMPR_NO_ESTANDAR'
        DataType = ftInteger
      end
      item
        Name = 'MINU_IMPRODUCTIVOS'
        DataType = ftInteger
      end
      item
        Name = 'MINU_PROD_ESTANDAR'
        DataType = ftFloat
      end
      item
        Name = 'MINU_PROD_CORTE'
        DataType = ftFloat
      end
      item
        Name = 'MINU_PROD_FABRICACION'
        DataType = ftFloat
      end
      item
        Name = 'MINU_PROD_NO_ESTANDAR'
        DataType = ftFloat
      end
      item
        Name = 'MINU_PROD_CURVA'
        DataType = ftFloat
      end
      item
        Name = 'MINU_PRODUCIDOS'
        DataType = ftFloat
      end
      item
        Name = 'INDI_1_ESTANDAR'
        DataType = ftFloat
      end
      item
        Name = 'INDI_2_ESTANDAR'
        DataType = ftFloat
      end
      item
        Name = 'INDI_3_ESTANDAR'
        DataType = ftFloat
      end
      item
        Name = 'INDI_1_NO_ESTANDAR'
        DataType = ftFloat
      end
      item
        Name = 'INDI_2_NO_ESTANDAR'
        DataType = ftFloat
      end
      item
        Name = 'INDI_3_NO_ESTANDAR'
        DataType = ftFloat
      end
      item
        Name = 'INDI_1_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'INDI_2_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'INDI_3_TOTAL'
        DataType = ftFloat
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.00 beta'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 34
    Top = 58
    object tabl_totalesFECH_LECTURA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_LECTURA'
    end
    object tabl_totalesMINU_CONTRATADOS: TIntegerField
      DisplayLabel = 'Contratado'
      FieldName = 'MINU_CONTRATADOS'
    end
    object tabl_totalesMINU_TRAB_ESTANDAR: TIntegerField
      DisplayLabel = 'Trabajado est�ndar'
      FieldName = 'MINU_TRAB_ESTANDAR'
    end
    object tabl_totalesMINU_TRAB_NO_ESTANDAR: TIntegerField
      DisplayLabel = 'Trabajado no est�ndar'
      FieldName = 'MINU_TRAB_NO_ESTANDAR'
    end
    object tabl_totalesMINU_TRAB_CURVA: TIntegerField
      DisplayLabel = 'Trabajado en curva'
      FieldName = 'MINU_TRAB_CURVA'
    end
    object tabl_totalesMINU_TRABAJADOS: TIntegerField
      DisplayLabel = 'Trabajados'
      FieldName = 'MINU_TRABAJADOS'
    end
    object tabl_totalesMINU_EXTR_ESTANDAR: TIntegerField
      DisplayLabel = 'Extra est�ndar'
      FieldName = 'MINU_EXTR_ESTANDAR'
    end
    object tabl_totalesMINU_EXTR_NO_ESTANDAR: TIntegerField
      DisplayLabel = 'Extra no est�ndar'
      FieldName = 'MINU_EXTR_NO_ESTANDAR'
    end
    object tabl_totalesMINU_EXTRAS: TIntegerField
      DisplayLabel = 'Extras'
      FieldName = 'MINU_EXTRAS'
    end
    object tabl_totalesMINU_AUSE_ESTANDAR: TIntegerField
      DisplayLabel = 'Ausentismo est�ndar'
      FieldName = 'MINU_AUSE_ESTANDAR'
    end
    object tabl_totalesMINU_AUSE_NO_ESTANDAR: TIntegerField
      DisplayLabel = 'Ausentismo no est�ndar'
      FieldName = 'MINU_AUSE_NO_ESTANDAR'
    end
    object tabl_totalesMINU_AUSENTISMOS: TIntegerField
      DisplayLabel = 'Ausentismos'
      FieldName = 'MINU_AUSENTISMOS'
    end
    object tabl_totalesMINU_IMPR_ESTANDAR: TIntegerField
      DisplayLabel = 'Improductivos est�ndar'
      FieldName = 'MINU_IMPR_ESTANDAR'
    end
    object tabl_totalesMINU_IMPR_NO_ESTANDAR: TIntegerField
      DisplayLabel = 'Improductivos no est�ndar'
      FieldName = 'MINU_IMPR_NO_ESTANDAR'
    end
    object tabl_totalesMINU_IMPRODUCTIVOS: TIntegerField
      DisplayLabel = 'Improductivos'
      FieldName = 'MINU_IMPRODUCTIVOS'
    end
    object tabl_totalesMINU_PROD_ESTANDAR: TFloatField
      DisplayLabel = 'Obtenido est�ndar'
      FieldName = 'MINU_PROD_ESTANDAR'
    end
    object tabl_totalesMINU_PROD_CORTE: TFloatField
      DisplayLabel = 'Obtenido corte'
      FieldName = 'MINU_PROD_CORTE'
    end
    object tabl_totalesMINU_PROD_FABRICACION: TFloatField
      DisplayLabel = 'Obtenido fabricaci�n'
      FieldName = 'MINU_PROD_FABRICACION'
    end
    object tabl_totalesMINU_PROD_NO_ESTANDAR: TFloatField
      DisplayLabel = 'Obtenido no est�ndar'
      FieldName = 'MINU_PROD_NO_ESTANDAR'
    end
    object tabl_totalesMINU_PROD_CURVA: TFloatField
      DisplayLabel = 'Obtenido curva'
      FieldName = 'MINU_PROD_CURVA'
    end
    object tabl_totalesMINU_PRODUCIDOS: TFloatField
      DisplayLabel = 'Producidos'
      FieldName = 'MINU_PRODUCIDOS'
    end
    object tabl_totalesINDI_1_ESTANDAR: TFloatField
      FieldName = 'INDI_1_ESTANDAR'
    end
    object tabl_totalesINDI_2_ESTANDAR: TFloatField
      FieldName = 'INDI_2_ESTANDAR'
    end
    object tabl_totalesINDI_3_ESTANDAR: TFloatField
      FieldName = 'INDI_3_ESTANDAR'
    end
    object tabl_totalesINDI_1_NO_ESTANDAR: TFloatField
      FieldName = 'INDI_1_NO_ESTANDAR'
    end
    object tabl_totalesINDI_2_NO_ESTANDAR: TFloatField
      FieldName = 'INDI_2_NO_ESTANDAR'
    end
    object tabl_totalesINDI_3_NO_ESTANDAR: TFloatField
      FieldName = 'INDI_3_NO_ESTANDAR'
    end
    object tabl_totalesINDI_1_TOTAL: TFloatField
      FieldName = 'INDI_1_TOTAL'
    end
    object tabl_totalesINDI_2_TOTAL: TFloatField
      FieldName = 'INDI_2_TOTAL'
    end
    object tabl_totalesINDI_3_TOTAL: TFloatField
      FieldName = 'INDI_3_TOTAL'
    end
  end
  object tabl_graf_datos: TkbmMemTable
    DesignActivation = True
    AttachedTo = tabl_totales
    AttachedAutoRefresh = True
    AttachMaxCount = 2
    FieldDefs = <
      item
        Name = 'FECH_LECTURA'
        DataType = ftDateTime
      end
      item
        Name = 'MINU_CONTRATADOS'
        DataType = ftInteger
      end
      item
        Name = 'MINU_TRAB_ESTANDAR'
        DataType = ftInteger
      end
      item
        Name = 'MINU_TRAB_NO_ESTANDAR'
        DataType = ftInteger
      end
      item
        Name = 'MINU_TRAB_CURVA'
        DataType = ftInteger
      end
      item
        Name = 'MINU_TRABAJADOS'
        DataType = ftInteger
      end
      item
        Name = 'MINU_EXTR_ESTANDAR'
        DataType = ftInteger
      end
      item
        Name = 'MINU_EXTR_NO_ESTANDAR'
        DataType = ftInteger
      end
      item
        Name = 'MINU_EXTRAS'
        DataType = ftInteger
      end
      item
        Name = 'MINU_AUSE_ESTANDAR'
        DataType = ftInteger
      end
      item
        Name = 'MINU_AUSE_NO_ESTANDAR'
        DataType = ftInteger
      end
      item
        Name = 'MINU_AUSENTISMOS'
        DataType = ftInteger
      end
      item
        Name = 'MINU_IMPR_ESTANDAR'
        DataType = ftInteger
      end
      item
        Name = 'MINU_IMPR_NO_ESTANDAR'
        DataType = ftInteger
      end
      item
        Name = 'MINU_IMPRODUCTIVOS'
        DataType = ftInteger
      end
      item
        Name = 'MINU_PROD_ESTANDAR'
        DataType = ftFloat
      end
      item
        Name = 'MINU_PROD_CORTE'
        DataType = ftFloat
      end
      item
        Name = 'MINU_PROD_FABRICACION'
        DataType = ftFloat
      end
      item
        Name = 'MINU_PROD_NO_ESTANDAR'
        DataType = ftFloat
      end
      item
        Name = 'MINU_PROD_CURVA'
        DataType = ftFloat
      end
      item
        Name = 'MINU_PRODUCIDOS'
        DataType = ftFloat
      end
      item
        Name = 'INDI_1_ESTANDAR'
        DataType = ftFloat
      end
      item
        Name = 'INDI_2_ESTANDAR'
        DataType = ftFloat
      end
      item
        Name = 'INDI_3_ESTANDAR'
        DataType = ftFloat
      end
      item
        Name = 'INDI_1_NO_ESTANDAR'
        DataType = ftFloat
      end
      item
        Name = 'INDI_2_NO_ESTANDAR'
        DataType = ftFloat
      end
      item
        Name = 'INDI_3_NO_ESTANDAR'
        DataType = ftFloat
      end
      item
        Name = 'INDI_1_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'INDI_2_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'INDI_3_TOTAL'
        DataType = ftFloat
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.00 beta'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 65
    Top = 57
    object tabl_graf_datosFECH_LECTURA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_LECTURA'
    end
    object tabl_graf_datosMINU_CONTRATADOS: TIntegerField
      DisplayLabel = 'Contratado'
      FieldName = 'MINU_CONTRATADOS'
    end
    object tabl_graf_datosMINU_TRAB_ESTANDAR: TIntegerField
      DisplayLabel = 'Trabajado est�ndar'
      FieldName = 'MINU_TRAB_ESTANDAR'
    end
    object tabl_graf_datosMINU_TRAB_NO_ESTANDAR: TIntegerField
      DisplayLabel = 'Trabajado no est�ndar'
      FieldName = 'MINU_TRAB_NO_ESTANDAR'
    end
    object tabl_graf_datosMINU_TRAB_CURVA: TIntegerField
      DisplayLabel = 'Trabajado en curva'
      FieldName = 'MINU_TRAB_CURVA'
    end
    object tabl_graf_datosMINU_TRABAJADOS: TIntegerField
      DisplayLabel = 'Trabajados'
      FieldName = 'MINU_TRABAJADOS'
    end
    object tabl_graf_datosMINU_EXTR_ESTANDAR: TIntegerField
      DisplayLabel = 'Extra est�ndar'
      FieldName = 'MINU_EXTR_ESTANDAR'
    end
    object tabl_graf_datosMINU_EXTR_NO_ESTANDAR: TIntegerField
      DisplayLabel = 'Extra no est�ndar'
      FieldName = 'MINU_EXTR_NO_ESTANDAR'
    end
    object tabl_graf_datosMINU_EXTRAS: TIntegerField
      DisplayLabel = 'Extras'
      FieldName = 'MINU_EXTRAS'
    end
    object tabl_graf_datosMINU_AUSE_ESTANDAR: TIntegerField
      DisplayLabel = 'Ausentismo est�ndar'
      FieldName = 'MINU_AUSE_ESTANDAR'
    end
    object tabl_graf_datosMINU_AUSE_NO_ESTANDAR: TIntegerField
      DisplayLabel = 'Ausentismo no est�ndar'
      FieldName = 'MINU_AUSE_NO_ESTANDAR'
    end
    object tabl_graf_datosMINU_AUSENTISMOS: TIntegerField
      DisplayLabel = 'Ausentismos'
      FieldName = 'MINU_AUSENTISMOS'
    end
    object tabl_graf_datosMINU_IMPR_ESTANDAR: TIntegerField
      DisplayLabel = 'Improductivos est�ndar'
      FieldName = 'MINU_IMPR_ESTANDAR'
    end
    object tabl_graf_datosMINU_IMPR_NO_ESTANDAR: TIntegerField
      DisplayLabel = 'Improductivos no est�ndar'
      FieldName = 'MINU_IMPR_NO_ESTANDAR'
    end
    object tabl_graf_datosMINU_IMPRODUCTIVOS: TIntegerField
      DisplayLabel = 'Improductivos'
      FieldName = 'MINU_IMPRODUCTIVOS'
    end
    object tabl_graf_datosMINU_PROD_ESTANDAR: TFloatField
      DisplayLabel = 'Obtenido est�ndar'
      FieldName = 'MINU_PROD_ESTANDAR'
    end
    object tabl_graf_datosMINU_PROD_CORTE: TFloatField
      DisplayLabel = 'Obtenido corte'
      FieldName = 'MINU_PROD_CORTE'
    end
    object tabl_graf_datosMINU_PROD_FABRICACION: TFloatField
      DisplayLabel = 'Obtenido fabricaci�n'
      FieldName = 'MINU_PROD_FABRICACION'
    end
    object tabl_graf_datosMINU_PROD_NO_ESTANDAR: TFloatField
      DisplayLabel = 'Obtenido no est�ndar'
      FieldName = 'MINU_PROD_NO_ESTANDAR'
    end
    object tabl_graf_datosMINU_PROD_CURVA: TFloatField
      DisplayLabel = 'Obtenido curva'
      FieldName = 'MINU_PROD_CURVA'
    end
    object tabl_graf_datosMINU_PRODUCIDOS: TFloatField
      DisplayLabel = 'Producidos'
      FieldName = 'MINU_PRODUCIDOS'
    end
    object tabl_graf_datosINDI_1_ESTANDAR: TFloatField
      FieldName = 'INDI_1_ESTANDAR'
    end
    object tabl_graf_datosINDI_2_ESTANDAR: TFloatField
      FieldName = 'INDI_2_ESTANDAR'
    end
    object tabl_graf_datosINDI_3_ESTANDAR: TFloatField
      FieldName = 'INDI_3_ESTANDAR'
    end
    object tabl_graf_datosINDI_1_NO_ESTANDAR: TFloatField
      FieldName = 'INDI_1_NO_ESTANDAR'
    end
    object tabl_graf_datosINDI_2_NO_ESTANDAR: TFloatField
      FieldName = 'INDI_2_NO_ESTANDAR'
    end
    object tabl_graf_datosINDI_3_NO_ESTANDAR: TFloatField
      FieldName = 'INDI_3_NO_ESTANDAR'
    end
    object tabl_graf_datosINDI_1_TOTAL: TFloatField
      FieldName = 'INDI_1_TOTAL'
    end
    object tabl_graf_datosINDI_2_TOTAL: TFloatField
      FieldName = 'INDI_2_TOTAL'
    end
    object tabl_graf_datosINDI_3_TOTAL: TFloatField
      FieldName = 'INDI_3_TOTAL'
    end
  end
  object tabl_grafica: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.00 beta'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 34
    Top = 90
    object tabl_graficagrafica: TBlobField
      DisplayLabel = 'Gr�fica'
      FieldName = 'grafica'
      BlobType = ftGraphic
    end
  end
  object data_Grafica: TDataSource
    DataSet = tabl_grafica
    Left = 64
    Top = 88
  end
end

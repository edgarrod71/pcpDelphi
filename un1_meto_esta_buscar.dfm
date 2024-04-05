inherited fn1_meto_esta_buscar: Tfn1_meto_esta_buscar
  Top = 58
  Width = 812
  Height = 610
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 582
    Width = 804
  end
  inherited padr_pane_1: TPanel
    Width = 578
    Height = 540
    inherited padr_pagina: TdxPageControl
      Width = 568
      Height = 530
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Left = 36
          Top = 127
          Width = 496
          Height = 379
          TabOrder = 1
          Filter.Criteria = {00000000}
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
          inherited padr_gridCODI_OPER_COSTURA: TdxDBGridColumn
            Sorted = csUp
          end
        end
        inherited padr_dock_arriba: TTBXDock
          Width = 568
          inherited padr_barra: TTBXToolbar
            inherited padr_boto_conf_vista: TTBXVisibilityToggleItem
              Enabled = False
              Visible = False
            end
            inherited padr_boto_exportar: TTBXSubmenuItem
              Visible = False
            end
          end
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 568
          TabOrder = 3
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 568
          TabOrder = 4
          inherited padr_sepa_new: TShape
            Width = 562
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 127
          Width = 36
          Height = 379
          inherited padr_pane_conf_vista: TTBXDockablePanel
            DockedWidth = 32
            inherited shap_xp: TShape
              Width = 32
            end
            inherited padr_conf_vista: TdxTreeList
              Width = 32
              Height = 357
            end
            inherited padr_gradi_camp_visibles: TPCPTituloGradiente
              Width = 32
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 532
          Top = 127
          Width = 36
          Height = 379
          inherited DPOpciones_Impresion: TTBXDockablePanel
            DockedWidth = 32
            inherited padr_shape_23: TShape
              Width = 32
            end
            inherited padr_pane_29: TPanel
              Width = 32
              Height = 357
              inherited padr_gene_impresion: TdxTreeList
                Width = 32
              end
              inherited padr_firm_impresion: TdxTreeList
                Width = 32
              end
              inherited padr_prio_impresion: TdxTreeList
                Width = 32
                Height = 131
              end
            end
            inherited padr_pane_grad_1: TPCPTituloGradiente
              Width = 32
            end
          end
        end
        object fram_filtro: TPCPFrame
          Tag = 75
          Left = 0
          Top = 52
          Width = 568
          Height = 75
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
          Caption = 'Filtro de operaciones'
          Titulo_Color = 16244694
          FlatBorder = True
          object SCLDBLabel3: TSCLDBLabel
            Left = 10
            Top = 25
            Width = 100
            Height = 21
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = comb_proceso
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Proceso:'
            Transparent = True
            DataSource = myData_ventana
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'CONS_PROCESO'
            Field = 'CONS_PROCESO'
          end
          object SCLDBLabel4: TSCLDBLabel
            Left = 522
            Top = 25
            Width = 100
            Height = 21
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = comb_tipo_operacion
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Tipo operación:'
            Transparent = True
            DataSource = myData_ventana
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'CONS_OPER_COST_TIPO'
            Field = 'CONS_OPER_COST_TIPO'
          end
          object SCLDBLabel1: TSCLDBLabel
            Left = 10
            Top = 45
            Width = 100
            Height = 21
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = edit_codi_operacion
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Código:'
            Transparent = True
            DataSource = myData_ventana
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel2: TSCLDBLabel
            Left = 270
            Top = 45
            Width = 100
            Height = 21
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = edit_nomb_operacion
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Nombre operación:'
            Transparent = True
            DataSource = myData_ventana
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'NOMB_OPER_COSTURA'
            Field = 'NOMB_OPER_COSTURA'
          end
          object SCLDBLabel5: TSCLDBLabel
            Left = 270
            Top = 25
            Width = 100
            Height = 21
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = comb_componente
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Componente:'
            Transparent = True
            DataSource = myData_ventana
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'CONS_COMP_GRUPO'
            Field = 'CONS_COMP_GRUPO'
          end
          object comb_proceso: TPCPLookUpComboEdit
            Left = 112
            Top = 25
            Width = 121
            Height = 21
            DropDownCount = 8
            Ctl3D = True
            DataField = 'CONS_PROCESO'
            DataSource = myData_ventana
            KeyField = 'cons_proceso'
            ListField = 'nomb_proceso'
            ListSource = data_procesos
            ParentCtl3D = False
            TabOrder = 1
            OnChange = doFiltrarOperaciones
            DirectInput = False
          end
          object comb_tipo_operacion: TPCPLookUpComboEdit
            Left = 624
            Top = 25
            Width = 121
            Height = 21
            DropDownCount = 8
            Ctl3D = True
            DataField = 'CONS_OPER_COST_TIPO'
            DataSource = myData_ventana
            KeyField = 'cons_oper_cost_tipo'
            ListField = 'nomb_oper_cost_tipo'
            ListSource = data_oper_tipos
            ParentCtl3D = False
            TabOrder = 3
            OnChange = doFiltrarOperaciones
            DirectInput = False
          end
          object comb_componente: TPCPLookUpComboEdit
            Left = 372
            Top = 25
            Width = 121
            Height = 21
            DropDownCount = 8
            Ctl3D = True
            DataField = 'CONS_COMP_GRUPO'
            DataSource = myData_ventana
            KeyField = 'cons_comp_grupo'
            ListField = 'nomb_comp_grupo'
            ListSource = data_grupo_componentes
            ParentCtl3D = False
            TabOrder = 2
            OnChange = doFiltrarOperaciones
            DirectInput = False
          end
          object edit_codi_operacion: TdxDBEdit
            Tag = -15
            Left = 112
            Top = 45
            Width = 121
            TabOrder = 4
            OnEnter = edit_codi_operacionEnter
            OnKeyDown = edit_codi_operacionKeyDown
            CharCase = ecUpperCase
            DataField = 'CODI_OPER_COSTURA'
            DataSource = myData_ventana
            StyleController = padr_estilo
            OnChange = doFiltrarOperaciones
          end
          object edit_nomb_operacion: TdxDBEdit
            Left = 372
            Top = 45
            Width = 253
            TabOrder = 5
            DataField = 'NOMB_OPER_COSTURA'
            DataSource = myData_ventana
            StyleController = padr_estilo
            OnChange = doFiltrarOperaciones
          end
          object boto_Canc_nuevo: TTBXButtonSCL
            Left = 236
            Top = 47
            Width = 20
            Height = 20
            BorderSize = 2
            ButtonStyle = bsFlat
            Enabled = False
            ImageIndex = 8
            Images = _fMDI.imagenesPCP
            TabOrder = 6
            TabStop = False
            OnClick = boto_Canc_nuevoClick
          end
        end
        object pane_nuevo: TPCPFrame
          Tag = 390
          Left = 36
          Top = 127
          Width = 496
          Height = 379
          Align = alClient
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Visible = False
          Caption = 'Nueva operación (Tiempo cronómetro)'
          Titulo_Color = 16244694
          Boton_Visible = False
          FlatBorder = True
          object SCLDBLabel8: TSCLDBLabel
            Left = 31
            Top = 28
            Width = 100
            Height = 21
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = dxDBCurrencyEdit2
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Supl. constante:'
            Transparent = True
            DataSource = myData_ventana
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'SUPL_CONSTANTE'
            Field = 'SUPL_CONSTANTE'
          end
          object SCLDBLabel9: TSCLDBLabel
            Left = 289
            Top = 28
            Width = 100
            Height = 21
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = dxDBCurrencyEdit3
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Supl. variable:'
            Transparent = True
            DataSource = myData_ventana
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'SUPL_VARIABLE'
            Field = 'SUPL_VARIABLE'
          end
          object SCLDBLabel13: TSCLDBLabel
            Left = 29
            Top = 61
            Width = 100
            Height = 21
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = PCPLookUpComboEdit5
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Grupo de recursos:'
            Transparent = True
            DataSource = myData_ventana
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'CONS_RECU_GRUPO'
            Field = 'CONS_RECU_GRUPO'
          end
          object SCLDBLabel14: TSCLDBLabel
            Left = 289
            Top = 61
            Width = 100
            Height = 21
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = PCPLookUpComboEdit6
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Tipo de recurso:'
            Transparent = True
            DataSource = myData_ventana
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'CONS_RECU_TIPO'
            Field = 'CONS_RECU_TIPO'
          end
          object SCLDBLabel15: TSCLDBLabel
            Left = 549
            Top = 61
            Width = 100
            Height = 21
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = comb_recu_familia
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Familia del recurso:'
            Transparent = True
            DataSource = myData_ventana
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'CONS_RECU_FAMILIA'
            Field = 'CONS_RECU_FAMILIA'
          end
          object SCLDBLabel19: TSCLDBLabel
            Left = 29
            Top = 81
            Width = 100
            Height = 21
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = dxDBCurrencyEdit5
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'R.P.M.:'
            Transparent = True
            DataSource = myData_ventana
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'REVO_POR_MINUTO'
            Field = 'REVO_POR_MINUTO'
          end
          object SCLDBLabel20: TSCLDBLabel
            Left = 240
            Top = 81
            Width = 149
            Height = 21
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = dxDBCurrencyEdit6
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Suplemento máquina:'
            Transparent = True
            DataSource = myData_ventana
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'SUPL_MAQUINA'
            Field = 'SUPL_MAQUINA'
          end
          object SCLDBLabel6: TSCLDBLabel
            Left = 8
            Top = 112
            Width = 121
            Height = 21
            Alive = False
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = [fsBold]
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = edit_tiem_cronometro
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Tiempo cronómetro:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            DataSource = myData_ventana
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel37: TSCLDBLabel
            Left = 289
            Top = 113
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
            FocusControl = dxDBCurrencyEdit7
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Tiempo estándar:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel7: TSCLDBLabel
            Left = 463
            Top = 113
            Width = 27
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
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'TMU'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object labe_unid_2: TLabel
            Left = 200
            Top = 116
            Width = 3
            Height = 13
          end
          object SCLDBLabel38: TSCLDBLabel
            Left = 549
            Top = 113
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
            FocusControl = edit_valor
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Valor:'
            Transparent = True
            DataSource = myData_ventana
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'COST_OPERACION'
            Field = 'COST_OPERACION'
          end
          object DBText1: TDBText
            Left = 725
            Top = 117
            Width = 41
            Height = 13
            AutoSize = True
            DataField = 'SIMB_MONEDA'
            DataSource = _fMDI.data_configuracion
          end
          object dxDBCurrencyEdit2: TdxDBCurrencyEdit
            Left = 133
            Top = 28
            Width = 65
            TabOrder = 1
            Alignment = taRightJustify
            DataField = 'SUPL_CONSTANTE'
            DataSource = myData_ventana
            StyleController = padr_estilo
            DisplayFormat = ',0.00 %'
            MaxValue = 100
            Nullable = False
            StoredValues = 17
          end
          object dxDBCurrencyEdit3: TdxDBCurrencyEdit
            Left = 391
            Top = 28
            Width = 65
            TabOrder = 2
            Alignment = taRightJustify
            DataField = 'SUPL_VARIABLE'
            DataSource = myData_ventana
            StyleController = padr_estilo
            DisplayFormat = ',0.00 %'
            MaxValue = 100
            Nullable = False
            StoredValues = 17
          end
          object edit_tiem_cronometro: TdxDBCurrencyEdit
            Left = 131
            Top = 112
            Width = 65
            TabOrder = 8
            Alignment = taRightJustify
            DataField = 'TIEM_CRON_ASIGNADO'
            DataSource = myData_ventana
            ReadOnly = False
            StyleController = padr_estilo
            DecimalPlaces = 3
            DisplayFormat = ',0.000'
            Nullable = False
            StoredValues = 65
          end
          object PCPLookUpComboEdit5: TPCPLookUpComboEdit
            Left = 131
            Top = 61
            Width = 129
            Height = 21
            DropDownCount = 8
            Ctl3D = True
            DataField = 'CONS_RECU_GRUPO'
            DataSource = myData_ventana
            KeyField = 'cons_recu_grupo'
            ListField = 'nomb_recu_grupo'
            ListSource = data_recu_grupos
            ParentCtl3D = False
            TabOrder = 3
            DirectInput = False
          end
          object PCPLookUpComboEdit6: TPCPLookUpComboEdit
            Left = 391
            Top = 61
            Width = 129
            Height = 21
            DropDownCount = 8
            Ctl3D = True
            DataField = 'CONS_RECU_TIPO'
            DataSource = myData_ventana
            KeyField = 'cons_recu_tipo'
            ListField = 'nomb_recu_tipo'
            ListSource = data_recu_tipos
            ParentCtl3D = False
            TabOrder = 4
            DirectInput = False
          end
          object comb_recu_familia: TPCPLookUpComboEdit
            Left = 651
            Top = 61
            Width = 129
            Height = 21
            DropDownCount = 8
            Ctl3D = True
            DataField = 'CONS_RECU_FAMILIA'
            DataSource = myData_ventana
            KeyField = 'cons_recu_familia'
            ListField = 'nomb_recu_familia'
            ListSource = data_recu_familias
            ParentCtl3D = False
            TabOrder = 5
            DirectInput = False
          end
          object dxDBCurrencyEdit5: TdxDBCurrencyEdit
            Left = 131
            Top = 81
            Width = 73
            TabOrder = 6
            Alignment = taRightJustify
            DataField = 'REVO_POR_MINUTO'
            DataSource = myData_ventana
            StyleController = padr_estilo
            DisplayFormat = ',0'
            Nullable = False
            StoredValues = 1
          end
          object dxDBCurrencyEdit6: TdxDBCurrencyEdit
            Left = 391
            Top = 81
            Width = 65
            TabOrder = 7
            Alignment = taRightJustify
            DataField = 'SUPL_MAQUINA'
            DataSource = myData_ventana
            StyleController = padr_estilo
            DisplayFormat = ',0.00 %'
            MaxValue = 100
            Nullable = False
            StoredValues = 17
          end
          object dxDBCurrencyEdit7: TdxDBCurrencyEdit
            Left = 391
            Top = 113
            Width = 70
            Enabled = False
            TabOrder = 9
            Alignment = taRightJustify
            DataField = 'TIEM_ASIGNADO'
            DataSource = data_ventana
            ReadOnly = False
            StyleController = padr_estilo
            DisplayFormat = ',0.000'
            Nullable = False
            StoredValues = 65
          end
          object edit_valor: TdxDBCurrencyEdit
            Tag = -15
            Left = 651
            Top = 113
            Width = 70
            TabOrder = 10
            OnKeyDown = edit_valorKeyDown
            Alignment = taRightJustify
            DataField = 'COST_OPERACION'
            DataSource = myData_ventana
            ReadOnly = False
            StyleController = padr_estilo
            DisplayFormat = ',0.00'
            Nullable = False
            StoredValues = 65
          end
        end
      end
    end
  end
  inherited padr_dock_izquierda: TTBXDock
    Height = 540
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
    Left = 596
    Height = 540
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
    Top = 573
    Width = 804
  end
  inherited padr_dock_right: TTBXDock
    Left = 587
    Height = 540
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
    inherited padr_acti_actualizar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_excel: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_html: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_txt: TAction
      Enabled = False
      Visible = False
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
    inherited padr_acti_consultar: TAction
      Enabled = False
      Visible = False
    end
    inherited Padr_Acti_Opci_Impresion: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited padr_popu_vist_actual: TTBXPopupMenu
    Left = 458
    Top = 9
  end
  inherited Variables: TSCLPropiedadesForm
    Left = 426
    Top = 10
  end
  inherited padr_pop_grid: TTBXPopupMenu
    Left = 502
    Top = 12
  end
  object quer_oper_tipos: TQuery [26]
    DatabaseName = 'data_base_pcp'
    FilterOptions = [foCaseInsensitive]
    SQL.Strings = (
      
        'Select cons_oper_cost_tipo, codi_oper_cost_tipo, nomb_oper_cost_' +
        'tipo'
      'from pcp_oper_cost_tipos'
      'order by nomb_oper_cost_tipo')
    Left = 536
    Top = 72
  end
  object quer_procesos: TQuery [27]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_proceso, codi_proceso, nomb_proceso'
      'from pcp_procesos'
      'where anal_metodos = 1'
      'order by nomb_proceso')
    Left = 569
    Top = 73
  end
  object quer_grup_componentes: TQuery [28]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_comp_grupo, codi_comp_grupo, nomb_comp_grupo'
      'from pcp_comp_grupos'
      'order by nomb_comp_grupo')
    Left = 601
    Top = 72
  end
  object data_grupo_componentes: TDataSource [29]
    DataSet = quer_grup_componentes
    Left = 537
    Top = 104
  end
  object data_oper_tipos: TDataSource [30]
    DataSet = quer_oper_tipos
    Left = 569
    Top = 104
  end
  object data_procesos: TDataSource [31]
    DataSet = quer_procesos
    Left = 601
    Top = 104
  end
  object myTabla_ventana: TRxMemoryData
    FieldDefs = <>
    AfterInsert = myTabla_ventanaAfterInsert
    BeforePost = myTabla_ventanaBeforePost
    Left = 874
    Top = 137
    object myTabla_ventanaCODI_OPER_COSTURA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODI_OPER_COSTURA'
      Required = True
      Size = 12
    end
    object myTabla_ventanaCONS_PROCESO: TIntegerField
      DisplayLabel = 'Proceso'
      FieldName = 'CONS_PROCESO'
      Required = True
    end
    object myTabla_ventanaCONS_OPER_COST_TIPO: TIntegerField
      DisplayLabel = 'Tipo operación'
      FieldName = 'CONS_OPER_COST_TIPO'
      Required = True
    end
    object myTabla_ventanaCONS_COMP_GRUPO: TIntegerField
      DisplayLabel = 'Componente'
      FieldName = 'CONS_COMP_GRUPO'
      Required = True
    end
    object myTabla_ventanaNOMB_OPER_COSTURA: TStringField
      DisplayLabel = 'Nombre operación'
      FieldName = 'NOMB_OPER_COSTURA'
      Required = True
      Size = 30
    end
    object myTabla_ventanaSUPL_CONSTANTE: TSmallintField
      DisplayLabel = '% SuplC'
      FieldName = 'SUPL_CONSTANTE'
    end
    object myTabla_ventanaSUPL_VARIABLE: TSmallintField
      DisplayLabel = '% SuplV'
      FieldName = 'SUPL_VARIABLE'
    end
    object myTabla_ventanaCONS_RECU_GRUPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_RECU_GRUPO'
      Required = True
    end
    object myTabla_ventanaCONS_RECU_TIPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_RECU_TIPO'
      Required = True
    end
    object myTabla_ventanaCONS_RECU_FAMILIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_RECU_FAMILIA'
      Required = True
    end
    object myTabla_ventanaCONS_RECU_MARCA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_RECU_MARCA'
      Required = True
    end
    object myTabla_ventanaCLAS_RECURSO: TStringField
      FieldName = 'CLAS_RECURSO'
      Size = 60
    end
    object myTabla_ventanaSUPL_MAQUINA: TFloatField
      FieldName = 'SUPL_MAQUINA'
    end
    object myTabla_ventanaREVO_POR_MINUTO: TIntegerField
      FieldName = 'REVO_POR_MINUTO'
    end
    object myTabla_ventanaTIEM_CRONOMETRO: TIntegerField
      FieldName = 'TIEM_CRONOMETRO'
    end
    object myTabla_ventanaTIEM_ASIGNADO: TFloatField
      FieldName = 'TIEM_ASIGNADO'
    end
    object myTabla_ventanaTIEM_CRON_ASIGNADO: TFloatField
      FieldName = 'TIEM_CRON_ASIGNADO'
    end
    object myTabla_ventanaCOST_OPERACION: TFloatField
      FieldName = 'COST_OPERACION'
    end
  end
  object myData_ventana: TDataSource
    DataSet = myTabla_ventana
    Left = 902
    Top = 137
  end
  object quer_recu_grupos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_recu_grupo, nomb_recu_grupo'
      'from glo_recu_grupos'
      'order by nomb_recu_grupo'
      ' ')
    Left = 1009
    Top = 433
    object quer_recu_gruposCONS_RECU_GRUPO: TIntegerField
      FieldName = 'CONS_RECU_GRUPO'
    end
    object quer_recu_gruposNOMB_RECU_GRUPO: TStringField
      FieldName = 'NOMB_RECU_GRUPO'
      Size = 60
    end
  end
  object quer_recu_tipos: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_recu_grupos
    SQL.Strings = (
      'Select cons_recu_grupo, cons_recu_tipo, nomb_recu_tipo'
      'from glo_recu_tipos'
      'where cons_recu_grupo = :cons_recu_grupo'
      'order by nomb_recu_tipo')
    Left = 1033
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_RECU_GRUPO'
        ParamType = ptUnknown
      end>
    object quer_recu_tiposCONS_RECU_GRUPO: TIntegerField
      FieldName = 'CONS_RECU_GRUPO'
    end
    object quer_recu_tiposCONS_RECU_TIPO: TIntegerField
      FieldName = 'CONS_RECU_TIPO'
    end
    object quer_recu_tiposNOMB_RECU_TIPO: TStringField
      FieldName = 'NOMB_RECU_TIPO'
      Size = 60
    end
  end
  object quer_recu_familias: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_recu_tipos
    SQL.Strings = (
      'Select cons_recu_familia, nomb_recu_familia, porc_suplemento'
      'from glo_recu_familias'
      'where cons_recu_grupo = :cons_recu_grupo'
      'and cons_recu_tipo = :cons_recu_tipo'
      'order by nomb_recu_familia')
    Left = 1065
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_RECU_GRUPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CONS_RECU_TIPO'
        ParamType = ptUnknown
      end>
    object quer_recu_familiasCONS_RECU_FAMILIA: TIntegerField
      FieldName = 'CONS_RECU_FAMILIA'
    end
    object quer_recu_familiasNOMB_RECU_FAMILIA: TStringField
      FieldName = 'NOMB_RECU_FAMILIA'
      Size = 60
    end
    object quer_recu_familiasPORC_SUPLEMENTO: TSmallintField
      FieldName = 'PORC_SUPLEMENTO'
    end
  end
  object data_recu_grupos: TDataSource
    DataSet = quer_recu_grupos
    Left = 1009
    Top = 456
  end
  object data_recu_tipos: TDataSource
    DataSet = quer_recu_tipos
    Left = 1033
    Top = 456
  end
  object data_recu_familias: TDataSource
    DataSet = quer_recu_familias
    Left = 1065
    Top = 456
  end
  object quer_inse_operacion: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_ventana
    SQL.Strings = (
      'INSERT INTO PCP_OPER_COSTURA(CODI_OPER_COSTURA, '
      '    NOMB_OPER_COSTURA, CONS_PROCESO,'
      '    CONS_OPER_COST_TIPO, CONS_COMP_GRUPO,'
      '    SUPL_CONSTANTE, SUPL_VARIABLE,'
      '    CONS_RECU_GRUPO, CONS_RECU_TIPO,'
      '    CONS_RECU_FAMILIA, CONS_RECU_MARCA,'
      '    CLAS_RECURSO, REVO_POR_MINUTO,'
      '    SUPL_MAQUINA, TIEM_CRONOMETRO,'
      '    TIEM_CRON_ASIGNADO, COST_OPERACION)'
      'VALUES ('
      '    :CODI_OPER_COSTURA, '
      '    :NOMB_OPER_COSTURA, :CONS_PROCESO,'
      '    :CONS_OPER_COST_TIPO, :CONS_COMP_GRUPO,'
      '    :SUPL_CONSTANTE, :SUPL_VARIABLE,'
      '    :CONS_RECU_GRUPO, :CONS_RECU_TIPO,'
      '    :CONS_RECU_FAMILIA, :CONS_RECU_MARCA,'
      '    :CLAS_RECURSO, :REVO_POR_MINUTO,'
      '    :SUPL_MAQUINA, :TIEM_CRONOMETRO,'
      '    :TIEM_CRON_ASIGNADO, :COST_OPERACION)')
    Left = 1009
    Top = 492
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODI_OPER_COSTURA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMB_OPER_COSTURA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PROCESO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_OPER_COST_TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_COMP_GRUPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUPL_CONSTANTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUPL_VARIABLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_RECU_GRUPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_RECU_TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_RECU_FAMILIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_RECU_MARCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLAS_RECURSO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REVO_POR_MINUTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUPL_MAQUINA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIEM_CRONOMETRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIEM_CRON_ASIGNADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COST_OPERACION'
        ParamType = ptUnknown
      end>
  end
end

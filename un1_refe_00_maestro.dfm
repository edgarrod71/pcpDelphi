inherited fn1_refe_00_maestro: Tfn1_refe_00_maestro
  Left = 26
  Top = 104
  Width = 812
  Height = 593
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 565
    Width = 804
  end
  inherited padr_pane_1: TPanel
    Width = 578
    Height = 523
    inherited padr_pagina: TdxPageControl
      Width = 568
      Height = 513
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Top = 226
          Width = 178
          Height = 263
          KeyField = 'CONS_REFERENCIA'
          SummaryGroups = <
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  ColumnName = 'padr_gridCODI_REFERENCIA'
                  SummaryFormat = ',0'
                  SummaryType = cstSum
                end
                item
                  SummaryFormat = '(,0)'
                  SummaryType = cstCount
                end>
              Name = 'padr_summary_grid'
            end>
          Visible = False
          Filter.Criteria = {00000000}
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoSyncSelection, edgoUseBookmarks]
          object padr_gridCONS_REFE_ESTADO: TdxDBGridColumn
            Alignment = taLeftJustify
            HeaderAlignment = taCenter
            MinWidth = 16
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_ESTADO'
          end
          object padr_gridCODI_REFE_ESTADO: TdxDBGridColumn
            Alignment = taLeftJustify
            HeaderAlignment = taCenter
            MinWidth = 16
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_ESTADO'
          end
          object padr_gridNOMB_REFE_ESTADO: TdxDBGridImageColumn
            Alignment = taLeftJustify
            HeaderAlignment = taCenter
            MinWidth = 16
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_ESTADO'
            Images = _fMDI.imag_anulado
            ImageIndexes.Strings = (
              '0'
              '1')
            Values.Strings = (
              '1'
              '2')
          end
          object padr_gridCONS_REFERENCIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFERENCIA'
          end
          object padr_gridCODI_REFERENCIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 86
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFERENCIA'
            SummaryFooterType = cstCount
            SummaryFooterFormat = ',0'
          end
          object padr_gridCONS_REFE_TEMPORADA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 95
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_TEMPORADA'
          end
          object padr_gridCODI_REFE_TEMPORADA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 93
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_TEMPORADA'
          end
          object padr_gridNOMB_REFERENCIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 223
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFERENCIA'
          end
          object padr_gridNOMB_REFE_TEMPORADA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_TEMPORADA'
          end
          object padr_gridMOLDE: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 92
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MOLDE'
          end
          object padr_gridCODI_INTE_REFERENCIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_INTE_REFERENCIA'
          end
          object padr_gridCODI_BARRAS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 105
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_BARRAS'
          end
          object padr_gridCONS_REFE_MARCA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_MARCA'
          end
          object padr_gridCODI_REFE_MARCA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_MARCA'
          end
          object padr_gridNOMB_REFE_MARCA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 53
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_MARCA'
          end
          object padr_gridCONS_REFE_LINEA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_LINEA'
          end
          object padr_gridCODI_REFE_LINEA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_LINEA'
          end
          object padr_gridNOMB_REFE_LINEA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 51
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_LINEA'
          end
          object padr_gridCONS_REFE_EDAD: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_EDAD'
          end
          object padr_gridCODI_REFE_EDAD: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_EDAD'
          end
          object padr_gridNOMB_REFE_EDAD: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 48
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_EDAD'
          end
          object padr_gridCONS_REFE_ESTILO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_ESTILO'
          end
          object padr_gridCODI_REFE_ESTILO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_ESTILO'
          end
          object padr_gridNOMB_REFE_ESTILO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 48
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_ESTILO'
          end
          object padr_gridCONS_REFE_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_GRUPO'
          end
          object padr_gridCODI_REFE_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_GRUPO'
          end
          object padr_gridNOMB_REFE_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 52
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_GRUPO'
          end
          object padr_gridCONS_REFE_SEXO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_SEXO'
          end
          object padr_gridCODI_SEXO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_SEXO'
          end
          object padr_gridNOMB_SEXO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 47
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_SEXO'
          end
          object padr_gridCONS_REFE_LAVADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_LAVADO'
          end
          object padr_gridCODI_REFE_LAVADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_LAVADO'
          end
          object padr_gridNOMB_REFE_LAVADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 59
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_LAVADO'
          end
          object padr_gridCONS_REFE_BORDADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_BORDADO'
          end
          object padr_gridCODI_REFE_BORDADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_BORDADO'
          end
          object padr_gridNOMB_REFE_BORDADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 63
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_BORDADO'
          end
          object padr_gridCONS_REFE_ESTAMPADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 88
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_ESTAMPADO'
          end
          object padr_gridCODI_REFE_ESTAMPADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 83
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_ESTAMPADO'
          end
          object padr_gridNOMB_REFE_ESTAMPADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_ESTAMPADO'
          end
          object padr_gridCONS_REFE_GRUP_TALLAS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_GRUP_TALLAS'
          end
          object padr_gridCODI_GRUP_TALLAS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_GRUP_TALLAS'
          end
          object padr_gridNOMB_GRUP_TALLAS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 51
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_GRUP_TALLAS'
          end
          object padr_gridDESCRIPCION: TdxDBGridBlobColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESCRIPCION'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 180
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          Width = 568
          inherited padr_barra: TTBXToolbar
            object padr_sepa_20: TTBXSeparatorItem [13]
            end
            object padr_boto_refe_ver_imagenes: TTBXItem [14]
              Action = padr_Acti_refe_imagenes
              AutoCheck = True
              GroupIndex = 198
              ImageIndex = 52
              Images = _fMDI.imag_grandes
            end
            object padr_boto_refe_ver_lista: TTBXItem [15]
              Action = padr_Acti_refe_lista
              AutoCheck = True
              GroupIndex = 198
              ImageIndex = 53
              Images = _fMDI.imag_grandes
            end
            object padr_sepa_30: TTBXSeparatorItem [16]
            end
          end
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 568
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 568
          inherited padr_sepa_new: TShape
            Width = 562
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 226
          Height = 263
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 241
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 373
          Top = 226
          Height = 263
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 241
              inherited padr_prio_impresion: TdxTreeList
                Height = 15
              end
            end
          end
        end
        object pane_filtros: TPCPFrame
          Tag = 144
          Left = 0
          Top = 52
          Width = 568
          Height = 144
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
          Titulo_Color = 16244694
          FlatBorder = True
          object padr_labe_tipo_ficha: TSCLDBLabel
            Left = 568
            Top = 27
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
            FocusControl = comb_Tipo_Fich_Tecnica
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Tipo de ficha:'
            Transparent = True
            Visible = False
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object padr_labe_referencia: TSCLDBLabel
            Left = 8
            Top = 27
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
            FocusControl = comb_referencia
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Referencia:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object padr_labe_variacion: TSCLDBLabel
            Left = 304
            Top = 27
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
            FocusControl = comb_variacion
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Variación:'
            Transparent = True
            Visible = False
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object padr_labe_linea: TSCLDBLabel
            Left = 16
            Top = 47
            Width = 92
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
            FocusControl = comb_linea
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Línea:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object padr_labe_edad: TSCLDBLabel
            Left = 312
            Top = 47
            Width = 92
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
            FocusControl = Comb_edad
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Edad:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object padr_labe_estilo: TSCLDBLabel
            Left = 576
            Top = 47
            Width = 92
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
            FocusControl = comb_estilo
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Estilo:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object padr_labe_grupo: TSCLDBLabel
            Left = 16
            Top = 67
            Width = 92
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
            FocusControl = comb_grupo
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Grupo:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object padr_labe_temporada: TSCLDBLabel
            Left = 312
            Top = 67
            Width = 92
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
            FocusControl = comb_temporada
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Temporada:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object padr_labe_marca: TSCLDBLabel
            Left = 576
            Top = 67
            Width = 92
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
            FocusControl = comb_marca
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Marca:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object comb_Tipo_Fich_Tecnica: TPCPLookUpComboEdit
            Left = 670
            Top = 27
            Width = 220
            Height = 21
            DropDownCount = 8
            KeyField = 'cons_refe_tipo_ficha'
            ListField = 'nomb_Refe_tipo_ficha'
            TabOrder = 1
            Visible = False
            DirectInput = False
          end
          object comb_referencia: TPCPLookUpComboEdit
            Left = 110
            Top = 27
            Width = 156
            Height = 21
            DropDownCount = 8
            KeyField = 'cons_referencia'
            ListField = 'codi_referencia'
            ListSource = data_referencias
            TabOrder = 2
            OnChange = actualizarFiltros
            DirectInput = False
          end
          object comb_variacion: TPCPLookUpComboEdit
            Left = 406
            Top = 27
            Width = 156
            Height = 21
            DropDownCount = 8
            KeyField = 'CONS_REFE_TIPO_VARIACION'
            ListField = 'NOMB_REFE_TIPO_VARIACION'
            TabOrder = 3
            Visible = False
            DirectInput = False
          end
          object comb_linea: TPCPLookUpComboEdit
            Left = 110
            Top = 47
            Width = 156
            Height = 21
            DropDownCount = 8
            KeyField = 'cons_refe_linea'
            ListField = 'nomb_refe_linea'
            ListSource = data_lineas
            TabOrder = 4
            OnChange = actualizarFiltros
            DirectInput = False
          end
          object Comb_edad: TPCPLookUpComboEdit
            Left = 406
            Top = 47
            Width = 156
            Height = 21
            DropDownCount = 8
            KeyField = 'cons_refe_edad'
            ListField = 'nomb_refe_edad'
            ListSource = data_edades
            TabOrder = 5
            OnChange = actualizarFiltros
            DirectInput = False
          end
          object comb_estilo: TPCPLookUpComboEdit
            Left = 670
            Top = 47
            Width = 156
            Height = 21
            DropDownCount = 8
            KeyField = 'cons_refe_estilo'
            ListField = 'nomb_refe_estilo'
            ListSource = data_estilos
            TabOrder = 6
            OnChange = actualizarFiltros
            DirectInput = False
          end
          object comb_grupo: TPCPLookUpComboEdit
            Left = 110
            Top = 67
            Width = 156
            Height = 21
            DropDownCount = 8
            KeyField = 'cons_refe_grupo'
            ListField = 'nomb_refe_grupo'
            ListSource = data_grupos
            TabOrder = 7
            OnChange = actualizarFiltros
            DirectInput = False
          end
          object comb_temporada: TPCPLookUpComboEdit
            Left = 406
            Top = 67
            Width = 156
            Height = 21
            DropDownCount = 8
            KeyField = 'cons_refe_temporada'
            ListField = 'nomb_refe_temporada'
            ListSource = data_temporadas
            TabOrder = 8
            OnChange = actualizarFiltros
            DirectInput = False
          end
          object comb_marca: TPCPLookUpComboEdit
            Left = 670
            Top = 67
            Width = 156
            Height = 21
            DropDownCount = 8
            KeyField = 'cons_refe_marca'
            ListField = 'nomb_refe_marca'
            ListSource = data_marcas
            TabOrder = 9
            OnChange = actualizarFiltros
            DirectInput = False
          end
          object pane_fechas: TPanel
            Left = 153
            Top = 88
            Width = 673
            Height = 49
            BevelOuter = bvNone
            TabOrder = 10
            object padr_labe_fech_creacion: TLabel
              Left = 13
              Top = 8
              Width = 104
              Height = 13
              Alignment = taRightJustify
              Caption = 'Fecha de creación:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object padr_labe_fech_modificacion: TLabel
              Left = 3
              Top = 28
              Width = 114
              Height = 13
              Alignment = taRightJustify
              Caption = 'Ultima modificación:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object chec_crea_desde: TdxCheckEdit
              Left = 198
              Top = 5
              Width = 57
              TabOrder = 0
              Caption = 'Desde:'
              StyleController = padr_estilo
              OnChange = chec_crea_desdeChange
            end
            object comb_crea_desde: TdxDateEdit
              Left = 254
              Top = 5
              Width = 156
              Enabled = False
              TabOrder = 1
              StyleController = padr_estilo
              OnChange = actualizarFiltros
              Date = -700000
              DateOnError = deToday
              DateValidation = True
              UseEditMask = True
              StoredValues = 4
            end
            object chec_crea_hasta: TdxCheckEdit
              Left = 462
              Top = 5
              Width = 57
              TabOrder = 2
              Caption = 'Hasta:'
              StyleController = padr_estilo
              OnChange = chec_crea_hastaChange
            end
            object comb_crea_hasta: TdxDateEdit
              Left = 517
              Top = 5
              Width = 156
              Enabled = False
              TabOrder = 3
              StyleController = padr_estilo
              OnChange = actualizarFiltros
              Date = -700000
              DateOnError = deToday
              DateValidation = True
              UseEditMask = True
              StoredValues = 4
            end
            object chec_modi_desde: TdxCheckEdit
              Left = 198
              Top = 25
              Width = 57
              TabOrder = 4
              Caption = 'Desde:'
              StyleController = padr_estilo
              OnChange = chec_modi_desdeChange
            end
            object comb_modi_desde: TdxDateEdit
              Left = 254
              Top = 25
              Width = 156
              Enabled = False
              TabOrder = 5
              StyleController = padr_estilo
              OnChange = actualizarFiltros
              Date = -700000
              DateOnError = deToday
              DateValidation = True
              UseEditMask = True
              StoredValues = 4
            end
            object chec_modi_hasta: TdxCheckEdit
              Left = 462
              Top = 25
              Width = 57
              TabOrder = 6
              Caption = 'Hasta:'
              StyleController = padr_estilo
              OnChange = chec_modi_hastaChange
            end
            object comb_modi_hasta: TdxDateEdit
              Left = 517
              Top = 25
              Width = 156
              Enabled = False
              TabOrder = 7
              StyleController = padr_estilo
              OnChange = actualizarFiltros
              Date = -700000
              DateOnError = deToday
              DateValidation = True
              UseEditMask = True
              StoredValues = 4
            end
          end
        end
        object padr_page_seleccion: TSCLPageControl
          Left = 0
          Top = 196
          Width = 568
          Height = 30
          ActivePage = padr_page_imagenes
          ActivePageDefault = padr_page_imagenes
          Align = alTop
          BoldCurrentTab = True
          Color = 16578290
          FlatColor = 10435335
          Margin = 5
          ParentColor = False
          TabColors.Shadow = 15582631
          TabColors.Unselected = 16578290
          TabIndex = 0
          TabOrder = 7
          Transparent = True
          Visible = False
          OnChange = padr_page_seleccionChange
          FixedDimension = 17
          object padr_page_imagenes: TSCLTabSheet
            Color = 16578290
          end
          object padr_page_lista: TSCLTabSheet
            Color = 16578290
          end
        end
        object pane_imagenes: TPCPFrame
          Left = 208
          Top = 272
          Width = 537
          Height = 209
          BorderWidth = 2
          Constraints.MinHeight = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          Titulo_Color = 16244694
          TipoFrame = tfNinguno
          FlatBorder = True
          object Vistas: TThumbnailList
            Left = 3
            Top = 26
            Width = 531
            Height = 180
            Align = alClient
            BorderStyle = bsNone
            Color = 12895428
            Columns = 3
            ScrollStyle = ssNormal
            ScrollColor = clBlack
            ScrollWidth = 16
            ShowSelection = False
            TabOrder = 0
            Thumbnails = <>
            ThumbnailSize = 150
            OnClick = VistasClick
            Version = '1.1.0.2'
          end
          object padr_pane_tamano: TPanel
            Left = 3
            Top = 3
            Width = 531
            Height = 23
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object padr_pane_tama_thumbs: TPanel
              Left = 0
              Top = 0
              Width = 149
              Height = 23
              Align = alLeft
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 0
              object padr_tama_thumbs: TJvTracker
                Left = 1
                Top = 1
                Width = 148
                Height = 21
                Minimum = 50
                Maximum = 200
                Value = 150
                BackColor = 15987699
                TrackColor = clRed
                TrackPositionColored = False
                TrackBorder = False
                BorderColor = 12615680
                ThumbColor = 33023
                ShowCaption = False
                CaptionColor = clRed
                OnChangedValue = padr_tama_thumbsChangedValue
              end
            end
            object padr_pane_info_referencia: TPanel
              Left = 149
              Top = 0
              Width = 382
              Height = 23
              Align = alClient
              BevelOuter = bvNone
              BorderWidth = 2
              ParentColor = True
              TabOrder = 1
              object padr_shap_sepa_1: TShape
                Left = 2
                Top = 2
                Width = 1
                Height = 19
                Align = alLeft
              end
              object padr_labe_nume_registros: TLabel
                Left = 11
                Top = 5
                Width = 3
                Height = 13
              end
            end
          end
        end
      end
    end
  end
  inherited padr_dock_izquierda: TTBXDock
    Height = 523
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
    Height = 523
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
    Top = 556
    Width = 804
  end
  inherited padr_dock_right: TTBXDock
    Left = 587
    Height = 523
  end
  inherited data_ventana: TDataSource
    DataSet = nil
  end
  inherited padr_acciones: TActionList
    object padr_Acti_refe_imagenes: TAction [0]
      Category = '_Referencias'
      Caption = 'Ver imágenes'
      Checked = True
      OnExecute = padr_Acti_refe_imagenesExecute
    end
    object padr_Acti_refe_lista: TAction
      Category = '_Referencias'
      Caption = 'Ver lista'
      OnExecute = padr_Acti_refe_listaExecute
    end
  end
  inherited consulta: TQuery
    BeforeOpen = consultaBeforeOpen
    SQL.Strings = (
      'SELECT *'
      'FROM VIS_GLO_REFERENCIAS'
      'Where cons_referencia>0'
      'ORDER BY CODI_REFERENCIA')
    object consultaCONS_REFERENCIA: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFERENCIA'
    end
    object consultaCODI_REFERENCIA: TStringField
      DisplayLabel = 'Cód. referencia'
      FieldName = 'CODI_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFERENCIA'
      Size = 12
    end
    object consultaCONS_REFE_TEMPORADA: TIntegerField
      DisplayLabel = 'Cons. temporada'
      FieldName = 'CONS_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_TEMPORADA'
    end
    object consultaCODI_REFE_TEMPORADA: TStringField
      DisplayLabel = 'Cód. temporada'
      FieldName = 'CODI_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFE_TEMPORADA'
      Size = 12
    end
    object consultaNOMB_REFE_TEMPORADA: TStringField
      DisplayLabel = 'Temporada'
      FieldName = 'NOMB_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFE_TEMPORADA'
      Size = 60
    end
    object consultaMOLDE: TStringField
      DisplayLabel = 'Molde'
      FieldName = 'MOLDE'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.MOLDE'
      Size = 12
    end
    object consultaCODI_INTE_REFERENCIA: TStringField
      DisplayLabel = 'C.I.R.'
      FieldName = 'CODI_INTE_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_INTE_REFERENCIA'
      Size = 12
    end
    object consultaNOMB_REFERENCIA: TStringField
      DisplayLabel = 'Nombre referencia'
      FieldName = 'NOMB_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFERENCIA'
      Size = 60
    end
    object consultaCODI_BARRAS: TStringField
      DisplayLabel = 'Cód. barras'
      FieldName = 'CODI_BARRAS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_BARRAS'
      Size = 30
    end
    object consultaCONS_REFE_MARCA: TIntegerField
      DisplayLabel = 'Cons. marca'
      FieldName = 'CONS_REFE_MARCA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_MARCA'
    end
    object consultaCODI_REFE_MARCA: TStringField
      DisplayLabel = 'Cód. marca'
      FieldName = 'CODI_REFE_MARCA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFE_MARCA'
      Size = 12
    end
    object consultaNOMB_REFE_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOMB_REFE_MARCA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFE_MARCA'
      Size = 60
    end
    object consultaCONS_REFE_LINEA: TIntegerField
      DisplayLabel = 'Cons. línea'
      FieldName = 'CONS_REFE_LINEA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_LINEA'
    end
    object consultaCODI_REFE_LINEA: TStringField
      DisplayLabel = 'Cód. línea'
      FieldName = 'CODI_REFE_LINEA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFE_LINEA'
      Size = 12
    end
    object consultaNOMB_REFE_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldName = 'NOMB_REFE_LINEA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFE_LINEA'
      Size = 60
    end
    object consultaCONS_REFE_EDAD: TIntegerField
      DisplayLabel = 'Cons. edad'
      FieldName = 'CONS_REFE_EDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_EDAD'
    end
    object consultaCODI_REFE_EDAD: TStringField
      DisplayLabel = 'Cód. edad'
      FieldName = 'CODI_REFE_EDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFE_EDAD'
      Size = 12
    end
    object consultaNOMB_REFE_EDAD: TStringField
      DisplayLabel = 'Edad'
      FieldName = 'NOMB_REFE_EDAD'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFE_EDAD'
      Size = 60
    end
    object consultaCONS_REFE_ESTILO: TIntegerField
      DisplayLabel = 'Cons. estilo'
      FieldName = 'CONS_REFE_ESTILO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_ESTILO'
    end
    object consultaCODI_REFE_ESTILO: TStringField
      DisplayLabel = 'Cód. estilo'
      FieldName = 'CODI_REFE_ESTILO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFE_ESTILO'
      Size = 12
    end
    object consultaNOMB_REFE_ESTILO: TStringField
      DisplayLabel = 'Estilo'
      FieldName = 'NOMB_REFE_ESTILO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFE_ESTILO'
      Size = 60
    end
    object consultaCONS_REFE_GRUPO: TIntegerField
      DisplayLabel = 'Cons. grupo'
      FieldName = 'CONS_REFE_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_GRUPO'
    end
    object consultaCODI_REFE_GRUPO: TStringField
      DisplayLabel = 'Cód. grupo'
      FieldName = 'CODI_REFE_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFE_GRUPO'
      Size = 12
    end
    object consultaNOMB_REFE_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_REFE_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFE_GRUPO'
      Size = 60
    end
    object consultaCONS_REFE_SEXO: TIntegerField
      DisplayLabel = 'Cons. sexo'
      FieldName = 'CONS_REFE_SEXO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_SEXO'
    end
    object consultaCODI_SEXO: TStringField
      DisplayLabel = 'Cód. sexo'
      FieldName = 'CODI_SEXO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_SEXO'
      Size = 12
    end
    object consultaNOMB_SEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'NOMB_SEXO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_SEXO'
      Size = 60
    end
    object consultaCONS_REFE_LAVADO: TIntegerField
      DisplayLabel = 'Cons. lavado'
      FieldName = 'CONS_REFE_LAVADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_LAVADO'
    end
    object consultaCODI_REFE_LAVADO: TStringField
      DisplayLabel = 'Cód. lavado'
      FieldName = 'CODI_REFE_LAVADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFE_LAVADO'
      Size = 12
    end
    object consultaNOMB_REFE_LAVADO: TStringField
      DisplayLabel = 'Lavado'
      FieldName = 'NOMB_REFE_LAVADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFE_LAVADO'
      Size = 60
    end
    object consultaCONS_REFE_BORDADO: TIntegerField
      DisplayLabel = 'Cons. bordado'
      FieldName = 'CONS_REFE_BORDADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_BORDADO'
    end
    object consultaCODI_REFE_BORDADO: TStringField
      DisplayLabel = 'Cód. bordado'
      FieldName = 'CODI_REFE_BORDADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFE_BORDADO'
      Size = 12
    end
    object consultaNOMB_REFE_BORDADO: TStringField
      DisplayLabel = 'Bordado'
      FieldName = 'NOMB_REFE_BORDADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFE_BORDADO'
      Size = 60
    end
    object consultaCONS_REFE_ESTAMPADO: TIntegerField
      DisplayLabel = 'Cons. estampado'
      FieldName = 'CONS_REFE_ESTAMPADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_ESTAMPADO'
    end
    object consultaCODI_REFE_ESTAMPADO: TStringField
      DisplayLabel = 'Cód. estampado'
      FieldName = 'CODI_REFE_ESTAMPADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFE_ESTAMPADO'
      Size = 12
    end
    object consultaNOMB_REFE_ESTAMPADO: TStringField
      DisplayLabel = 'Estampado'
      FieldName = 'NOMB_REFE_ESTAMPADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFE_ESTAMPADO'
      Size = 60
    end
    object consultaCONS_REFE_GRUP_TALLAS: TIntegerField
      DisplayLabel = 'Cons. tallas'
      FieldName = 'CONS_REFE_GRUP_TALLAS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_GRUP_TALLAS'
    end
    object consultaCODI_GRUP_TALLAS: TStringField
      DisplayLabel = 'Cód. tallas'
      FieldName = 'CODI_GRUP_TALLAS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_GRUP_TALLAS'
      Size = 12
    end
    object consultaNOMB_GRUP_TALLAS: TStringField
      DisplayLabel = 'Tallas'
      FieldName = 'NOMB_GRUP_TALLAS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_GRUP_TALLAS'
      Size = 60
    end
    object consultaCONS_REFE_ESTADO: TIntegerField
      DisplayLabel = 'Cons. estado'
      FieldName = 'CONS_REFE_ESTADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CONS_REFE_ESTADO'
    end
    object consultaCODI_REFE_ESTADO: TStringField
      DisplayLabel = 'Cód. estado'
      FieldName = 'CODI_REFE_ESTADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.CODI_REFE_ESTADO'
      Size = 12
    end
    object consultaNOMB_REFE_ESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'NOMB_REFE_ESTADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.NOMB_REFE_ESTADO'
      Size = 60
    end
    object consultaDESCRIPCION: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESCRIPCION'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.DESCRIPCION'
      Size = 240
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MOST_MAESTRO.USUA_SISTEMA'
    end
  end
  object quer_referencias: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_REFERENCIA, CODI_REFERENCIA'
      'FROM GLO_REFERENCIAS'
      'WHERE ES_PROTOTIPO = -1'
      'ORDER BY CODI_REFERENCIA')
    Left = 23
    Top = 520
  end
  object data_referencias: TDataSource
    DataSet = quer_referencias
    Left = 23
    Top = 548
  end
  object quer_lineas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_REFE_LINEA, NOMB_REFE_LINEA'
      'FROM GLO_REFE_LINEAS'
      'ORDER BY NOMB_REFE_LINEA')
    Left = 51
    Top = 520
    object quer_lineasCONS_REFE_LINEA: TIntegerField
      FieldName = 'CONS_REFE_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LINEAS.CONS_REFE_LINEA'
    end
    object quer_lineasNOMB_REFE_LINEA: TStringField
      FieldName = 'NOMB_REFE_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LINEAS.NOMB_REFE_LINEA'
      Size = 60
    end
  end
  object data_lineas: TDataSource
    DataSet = quer_lineas
    Left = 51
    Top = 548
  end
  object quer_edades: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_REFE_EDAD, NOMB_REFE_EDAD'
      'FROM GLO_REFE_EDADES'
      'ORDER BY NOMB_REFE_EDAD')
    Left = 79
    Top = 520
    object quer_edadesCONS_REFE_EDAD: TIntegerField
      FieldName = 'CONS_REFE_EDAD'
      Origin = 'DATA_BASE_PCP.GLO_REFE_EDADES.CONS_REFE_EDAD'
    end
    object quer_edadesNOMB_REFE_EDAD: TStringField
      FieldName = 'NOMB_REFE_EDAD'
      Origin = 'DATA_BASE_PCP.GLO_REFE_EDADES.NOMB_REFE_EDAD'
      Size = 60
    end
  end
  object data_edades: TDataSource
    DataSet = quer_edades
    Left = 79
    Top = 548
  end
  object quer_estilos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_REFE_ESTILO, NOMB_REFE_ESTILO'
      'FROM GLO_REFE_ESTILOS'
      'ORDER BY NOMB_REFE_ESTILO')
    Left = 107
    Top = 520
    object quer_estilosCONS_REFE_ESTILO: TIntegerField
      FieldName = 'CONS_REFE_ESTILO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTILOS.CONS_REFE_ESTILO'
    end
    object quer_estilosNOMB_REFE_ESTILO: TStringField
      FieldName = 'NOMB_REFE_ESTILO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTILOS.NOMB_REFE_ESTILO'
      Size = 60
    end
  end
  object data_estilos: TDataSource
    DataSet = quer_estilos
    Left = 107
    Top = 548
  end
  object quer_grupos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_REFE_GRUPO, NOMB_REFE_GRUPO'
      'FROM GLO_REFE_GRUPOS'
      'ORDER BY NOMB_REFE_GRUPO')
    Left = 135
    Top = 520
    object quer_gruposCONS_REFE_GRUPO: TIntegerField
      FieldName = 'CONS_REFE_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_GRUPOS.CONS_REFE_GRUPO'
    end
    object quer_gruposNOMB_REFE_GRUPO: TStringField
      FieldName = 'NOMB_REFE_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_GRUPOS.NOMB_REFE_GRUPO'
      Size = 60
    end
  end
  object data_grupos: TDataSource
    DataSet = quer_grupos
    Left = 135
    Top = 548
  end
  object quer_temporadas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT '
      'CONS_REFE_TEMPORADA, NOMB_REFE_TEMPORADA'
      'FROM GLO_REFE_TEMPORADAS'
      'ORDER BY NOMB_REFE_TEMPORADA')
    Left = 163
    Top = 520
    object quer_temporadasCONS_REFE_TEMPORADA: TIntegerField
      FieldName = 'CONS_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_TEMPORADAS.CONS_REFE_TEMPORADA'
    end
    object quer_temporadasNOMB_REFE_TEMPORADA: TStringField
      FieldName = 'NOMB_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_TEMPORADAS.NOMB_REFE_TEMPORADA'
      Size = 60
    end
  end
  object data_temporadas: TDataSource
    DataSet = quer_temporadas
    Left = 163
    Top = 548
  end
  object quer_marcas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_REFE_MARCA, NOMB_REFE_MARCA'
      'FROM GLO_REFE_MARCAS'
      'ORDER BY NOMB_REFE_MARCA')
    Left = 191
    Top = 520
    object quer_marcasCONS_REFE_MARCA: TIntegerField
      FieldName = 'CONS_REFE_MARCA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_MARCAS.CONS_REFE_MARCA'
    end
    object quer_marcasNOMB_REFE_MARCA: TStringField
      FieldName = 'NOMB_REFE_MARCA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_MARCAS.NOMB_REFE_MARCA'
      Size = 60
    end
  end
  object data_marcas: TDataSource
    DataSet = quer_marcas
    Left = 191
    Top = 548
  end
  object quer_imagenes: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT IMAG_SMALL'
      'FROM GLO_REFERENCIAS'
      'WHERE CONS_REFERENCIA = :CONS_REFERENCIA')
    Left = 33
    Top = 57
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFERENCIA'
        ParamType = ptInput
      end>
    object quer_imagenesIMAG_SMALL: TBlobField
      FieldName = 'IMAG_SMALL'
      Origin = 'DATA_BASE_PCP.GLO_REFERENCIAS.IMAG_SMALL'
      BlobType = ftBlob
      Size = 1
    end
  end
end

inherited fn1_refe_camb_estado: Tfn1_refe_camb_estado
  Top = 93
  Width = 641
  Height = 489
  ActiveControl = comb_codi_referencia
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 633
  end
  inherited padr_shap_xp_down: TShape
    Top = 452
    Width = 633
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 633
    inherited padr_barra: TTBXToolbar
      inherited padr_boto_aceptar: TTBXItem
        DisplayMode = nbdmImageAndText
        Layout = tbxlGlyphLeft
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 633
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 633
    inherited padr_beve_1: TBevel
      Width = 627
    end
    inherited padr_sepa_new: TShape
      Width = 627
    end
  end
  inherited padr_pane_info: TPanel
    Top = 461
    Width = 633
    inherited _DBFecha_Creacion: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited padr_titu_ventana: TPanel
    Width = 633
    inherited padr_pane_titulo: TPanel
      Width = 592
      Caption = 'Cambio de estado (referencias)'
    end
    inherited padr_pane_2: TPanel
      Left = 594
    end
    inherited padr_pane_cerrar: TPanel
      Left = 612
    end
  end
  object page: TSCLPageControl [7]
    Left = 0
    Top = 77
    Width = 633
    Height = 375
    ActivePage = dxTabSheet1
    Align = alClient
    BoldCurrentTab = True
    Color = 16578290
    FlatColor = 10435335
    Images = _fMDI.imagenesPCP
    Margin = 5
    ParentColor = False
    TabColors.Shadow = 15582631
    TabColors.Unselected = 16578290
    TabIndex = 0
    TabOrder = 7
    Transparent = True
    FixedDimension = 22
    object dxTabSheet1: TSCLTabSheet
      Color = 16578290
      ImageIndex = 56
      Caption = 'Información del movimiento'
      object PCPFrame1: TPCPFrame
        Tag = 110
        Left = 0
        Top = 0
        Width = 629
        Height = 110
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 2
        Constraints.MinHeight = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Caption = 'Información de la referencia'
        Titulo_Color = 16244694
        Boton_Visible = False
        object SCLDBLabel1: TSCLDBLabel
          Left = 10
          Top = 26
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
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Referencia:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel2: TSCLDBLabel
          Left = 298
          Top = 26
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
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'C.I.R.:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel8: TSCLDBLabel
          Left = 10
          Top = 46
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
          FocusControl = dxDBEdit4
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Nombre:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel9: TSCLDBLabel
          Left = 298
          Top = 46
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
          FocusControl = dxDBEdit6
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Linea:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel10: TSCLDBLabel
          Left = 10
          Top = 66
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
          FocusControl = dxDBEdit5
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Grupo:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel11: TSCLDBLabel
          Left = 298
          Top = 66
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
          FocusControl = dxDBEdit7
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Estilo:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel12: TSCLDBLabel
          Left = 10
          Top = 86
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
          FocusControl = dxDBEdit8
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Marca:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object comb_codi_referencia: TPCPLookUpComboEdit
          Left = 112
          Top = 26
          Width = 145
          Height = 21
          DropDownCount = 8
          EscapeClear = False
          Ctl3D = True
          DataField = 'cons_referencia'
          DataSource = data_ventana
          KeyField = 'cons_Referencia'
          ListField = 'codi_Referencia'
          ListSource = fram_lista.data_consulta
          ParentCtl3D = False
          TabOrder = 1
          DirectInput = False
        end
        object PCPLookUpComboEdit2: TPCPLookUpComboEdit
          Left = 400
          Top = 26
          Width = 145
          Height = 21
          DropDownCount = 8
          EscapeClear = False
          Ctl3D = True
          DataField = 'cons_referencia'
          DataSource = data_ventana
          Enabled = False
          KeyField = 'cons_Referencia'
          ListField = 'codi_inte_referencia'
          ListSource = fram_lista.data_consulta
          ParentCtl3D = False
          TabOrder = 2
          DirectInput = False
          HideButton = True
        end
        object dxDBEdit4: TdxDBEdit
          Left = 112
          Top = 46
          Width = 241
          Enabled = False
          TabOrder = 3
          TabStop = False
          DataField = 'NOMB_REFERENCIA'
          DataSource = fram_lista.data_consulta
          ReadOnly = True
          StyleController = padr_estilo
          StoredValues = 64
        end
        object dxDBEdit5: TdxDBEdit
          Left = 112
          Top = 66
          Width = 145
          Enabled = False
          TabOrder = 4
          TabStop = False
          DataField = 'NOMB_REFE_GRUPO'
          DataSource = fram_lista.data_consulta
          ReadOnly = True
          StyleController = padr_estilo
          StoredValues = 64
        end
        object dxDBEdit6: TdxDBEdit
          Left = 400
          Top = 46
          Width = 145
          Enabled = False
          TabOrder = 5
          TabStop = False
          DataField = 'NOMB_REFE_LINEA'
          DataSource = fram_lista.data_consulta
          ReadOnly = True
          StyleController = padr_estilo
          StoredValues = 64
        end
        object dxDBEdit7: TdxDBEdit
          Left = 400
          Top = 66
          Width = 145
          Enabled = False
          TabOrder = 6
          TabStop = False
          DataField = 'NOMB_REFE_ESTILO'
          DataSource = fram_lista.data_consulta
          ReadOnly = True
          StyleController = padr_estilo
          StoredValues = 64
        end
        object dxDBEdit8: TdxDBEdit
          Left = 112
          Top = 86
          Width = 145
          Enabled = False
          TabOrder = 7
          TabStop = False
          DataField = 'NOMB_REFE_MARCA'
          DataSource = fram_lista.data_consulta
          ReadOnly = True
          StyleController = padr_estilo
          StoredValues = 64
        end
        object padr_boto_menu_Referencia: TTBXButtonSCL
          Left = 259
          Top = 26
          Width = 30
          Height = 20
          AllowAllUnchecked = True
          BorderSize = 2
          ButtonStyle = bsFlat
          DropDownMenu = _fMDI.mdi_menu_referencia
          ImageIndex = 64
          Images = _fMDI.imagenesPCP
          SmartFocus = False
          TabOrder = 8
          TabStop = False
        end
      end
      object PCPFrame2: TPCPFrame
        Tag = 232
        Left = 0
        Top = 110
        Width = 629
        Height = 239
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 2
        Constraints.MinHeight = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Caption = 'Información del cambio de estado'
        Titulo_Color = 16244694
        Boton_Visible = False
        object SCLDBLabel4: TSCLDBLabel
          Left = 10
          Top = 56
          Width = 100
          Height = 21
          Alive = True
          ColorActive = clBtnFace
          FontActive.Charset = DEFAULT_CHARSET
          FontActive.Color = clWindowText
          FontActive.Height = -11
          FontActive.Name = 'Tahoma'
          FontActive.Style = [fsBold]
          FocusOffset = 2
          Position = wlpLeft
          FocusControl = comb_nuev_estado
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Nuevo estado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel5: TSCLDBLabel
          Left = 10
          Top = 76
          Width = 100
          Height = 96
          Alive = True
          ColorActive = clBtnFace
          FontActive.Charset = DEFAULT_CHARSET
          FontActive.Color = clWindowText
          FontActive.Height = -11
          FontActive.Name = 'Tahoma'
          FontActive.Style = []
          FocusOffset = 2
          Position = wlpLeft
          FocusControl = dxDBMemo1
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Observaciones:'
          Layout = tlTop
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel3: TSCLDBLabel
          Left = 10
          Top = 28
          Width = 100
          Height = 21
          Alive = True
          ColorActive = clBtnFace
          FontActive.Charset = DEFAULT_CHARSET
          FontActive.Color = clWindowText
          FontActive.Height = -11
          FontActive.Name = 'Tahoma'
          FontActive.Style = [fsBold]
          FocusOffset = 2
          Position = wlpLeft
          FocusControl = dxDBEdit1
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Estado actual:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object comb_nuev_estado: TPCPLookUpComboEdit
          Left = 112
          Top = 56
          Width = 145
          Height = 21
          DropDownCount = 8
          EscapeClear = False
          Ctl3D = True
          DataField = 'cons_nuev_estado'
          DataSource = data_ventana
          KeyField = 'cons_refe_estado'
          ListField = 'nomb_refe_estado'
          ListSource = data_refe_estados
          ParentCtl3D = False
          TabOrder = 1
          DirectInput = False
        end
        object dxDBMemo1: TdxDBMemo
          Left = 112
          Top = 76
          Width = 281
          TabOrder = 2
          DataField = 'observaciones'
          DataSource = data_ventana
          StyleController = padr_estilo
          Height = 96
        end
        object Panel2: TPanel
          Left = 400
          Top = 76
          Width = 145
          Height = 97
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 3
          object dxDBCheckEdit1: TdxDBCheckEdit
            Left = 3
            Top = 2
            Width = 121
            TabOrder = 0
            Caption = 'Editar maestro'
            DataField = 'EDIT_MAESTRO'
            DataSource = data_refe_estados
            StyleController = padr_estilo_chec
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object dxDBCheckEdit2: TdxDBCheckEdit
            Left = 3
            Top = 50
            Width = 121
            TabOrder = 1
            Caption = 'Ver en O.Trabajo'
            DataField = 'MOST_ORDE_TRABAJO'
            DataSource = data_refe_estados
            StyleController = padr_estilo_chec
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object dxDBCheckEdit3: TdxDBCheckEdit
            Left = 3
            Top = 26
            Width = 121
            TabOrder = 2
            Caption = 'Ver en métodos'
            DataField = 'MOST_METODOS'
            DataSource = data_refe_estados
            StyleController = padr_estilo_chec
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object dxDBCheckEdit4: TdxDBCheckEdit
            Left = 3
            Top = 74
            Width = 121
            TabOrder = 3
            Caption = 'Ver en inventarios'
            DataField = 'MOST_INVE_MATERIALES'
            DataSource = data_refe_estados
            StyleController = padr_estilo_chec
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
        end
        object chec_mantener: TdxCheckEdit
          Left = 112
          Top = 171
          Width = 281
          TabOrder = 4
          TabStop = False
          Caption = 'Mantener las observaciones después de guardar'
          StyleController = padr_estilo
          State = cbsChecked
        end
        object dxDBEdit1: TdxDBEdit
          Left = 112
          Top = 28
          Width = 145
          Enabled = False
          TabOrder = 5
          TabStop = False
          DataField = 'NOMB_REFE_ESTADO'
          DataSource = fram_lista.data_consulta
          ReadOnly = True
          StyleController = padr_estilo
          StoredValues = 64
        end
        object TBXButtonSCL1: TTBXButtonSCL
          Left = 260
          Top = 56
          Width = 132
          Height = 20
          BorderSize = 2
          ButtonStyle = bsFlat
          ImageIndex = 35
          Images = _fMDI.ImagenesMenus
          TabOrder = 6
          Action = padr_acti_aceptar
        end
      end
    end
    object page_lista: TSCLTabSheet
      Color = 16578290
      ImageIndex = 42
      Caption = 'Listado de referencias'
      OnShow = SincronizarLista
      inline fram_lista: Tffra_list_referencias
        Width = 629
        Height = 349
        Align = alClient
        inherited padr_grid: TdxDBGrid
          Width = 629
          Height = 349
          Filter.Criteria = {00000000}
          OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoResetColumnFocus, edgoSmartRefresh, edgoUseLocate]
          OnChangeNode = fram_listapadr_gridChangeNode
        end
      end
    end
    object dxTabSheet3: TSCLTabSheet
      Color = 16578290
      ImageIndex = 48
      Caption = 'Historial de cambios de estado'
      object dxDBGrid1: TdxDBGrid
        Left = 0
        Top = 51
        Width = 629
        Height = 291
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CONS_ESTA_ANTERIOR'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        DataSource = data_historial
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
        object dxDBGrid1CONS_ESTA_ANTERIOR: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 143
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_ESTA_ANTERIOR'
        end
        object dxDBGrid1nomb_esta_anterior: TdxDBGridLookupColumn
          Caption = 'Estado inicial'
          HeaderAlignment = taCenter
          Width = 106
          BandIndex = 0
          RowIndex = 0
          FieldName = 'nomb_esta_anterior'
        end
        object dxDBGrid1CONS_ESTA_NUEVO: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 129
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_ESTA_NUEVO'
        end
        object dxDBGrid1nomb_esta_nuevo: TdxDBGridLookupColumn
          Caption = 'Estado final'
          HeaderAlignment = taCenter
          Width = 99
          BandIndex = 0
          RowIndex = 0
          FieldName = 'nomb_esta_nuevo'
        end
        object dxDBGrid1OBSERVACIONES: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 241
          BandIndex = 0
          RowIndex = 0
          FieldName = 'OBSERVACIONES'
        end
        object dxDBGrid1FECH_SISTEMA: TdxDBGridDateColumn
          HeaderAlignment = taCenter
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FECH_SISTEMA'
        end
        object dxDBGrid1USUA_SISTEMA: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 54
          BandIndex = 0
          RowIndex = 0
          FieldName = 'USUA_SISTEMA'
        end
      end
      object PCPFrame3: TPCPFrame
        Tag = 51
        Left = 0
        Top = 0
        Width = 629
        Height = 51
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 2
        Constraints.MinHeight = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Caption = 'Información de la referencia'
        Titulo_Color = 16244694
        object SCLDBLabel6: TSCLDBLabel
          Left = 10
          Top = 26
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
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Referencia:'
          Transparent = True
          DataSource = fram_lista.data_consulta
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel7: TSCLDBLabel
          Left = 250
          Top = 26
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
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Nombre:'
          Transparent = True
          DataSource = fram_lista.data_consulta
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object dxDBEdit2: TdxDBEdit
          Left = 112
          Top = 26
          Width = 121
          TabOrder = 1
          TabStop = False
          DataField = 'CODI_REFERENCIA'
          DataSource = fram_lista.data_consulta
          ReadOnly = True
          StyleController = padr_estilo
          StoredValues = 64
        end
        object dxDBEdit3: TdxDBEdit
          Left = 352
          Top = 26
          Width = 249
          TabOrder = 2
          TabStop = False
          DataField = 'NOMB_REFERENCIA'
          DataSource = fram_lista.data_consulta
          ReadOnly = True
          StyleController = padr_estilo
          StoredValues = 64
        end
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 453
    Width = 633
    inherited padr_beve_abajo: TBevel
      Width = 627
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 633
  end
  inherited data_ventana: TDataSource
    AutoEdit = False
    DataSet = tabl_falsa
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_aceptar: TAction
      Caption = 'Cambiar de estado'
      Enabled = True
      Visible = True
    end
    inherited padr_acti_actualizar: TDataSetRefresh
      Enabled = True
      Visible = True
    end
  end
  object quer_refe_estados: TQuery
    AfterOpen = quer_refe_estadosAfterOpen
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select * from'
      'glo_refe_estados'
      'order by nomb_refe_estado')
    Left = 544
    Top = 140
  end
  object data_refe_estados: TDataSource
    DataSet = quer_refe_estados
    Left = 576
    Top = 140
  end
  object tabl_falsa: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_referencia'
        DataType = ftInteger
      end
      item
        Name = 'cons_nuev_estado'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'observaciones'
        DataType = ftString
        Size = 240
      end>
    Left = 218
    Top = 4
  end
  object quer_camb_estado: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Execute procedure'
      'pro_glo_refe_camb_estado_insert'
      '(:cons_referencia, :cons_esta_anterior, :cons_esta_nuevo, '
      ':observaciones)')
    Left = 544
    Top = 172
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_referencia'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_esta_anterior'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_esta_nuevo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'observaciones'
        ParamType = ptInput
      end>
  end
  object quer_historial: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = fram_lista.data_consulta
    SQL.Strings = (
      'Select * from'
      'GLO_REFE_CAMB_ESTADO'
      'WHERE CONS_REFERENCIA = :CONS_REFERENCIA'
      'ORDER BY CONS_REFE_CAMB_ESTADO')
    Left = 416
    Top = 164
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFERENCIA'
        ParamType = ptUnknown
      end>
    object quer_historialCONS_ESTA_ANTERIOR: TIntegerField
      DisplayLabel = 'Estado anterior'
      FieldName = 'CONS_ESTA_ANTERIOR'
      Origin = 'DATA_BASE_PCP.GLO_REFE_CAMB_ESTADO.CONS_ESTA_ANTERIOR'
    end
    object quer_historialnomb_esta_anterior: TStringField
      DisplayLabel = 'Estado anterior'
      FieldKind = fkLookup
      FieldName = 'nomb_esta_anterior'
      LookupDataSet = quer_refe_estados
      LookupKeyFields = 'CONS_REFE_ESTADO'
      LookupResultField = 'NOMB_REFE_ESTADO'
      KeyFields = 'CONS_ESTA_ANTERIOR'
      Size = 60
      Lookup = True
    end
    object quer_historialCONS_ESTA_NUEVO: TIntegerField
      DisplayLabel = 'Nuevo estado'
      FieldName = 'CONS_ESTA_NUEVO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_CAMB_ESTADO.CONS_ESTA_NUEVO'
    end
    object quer_historialnomb_esta_nuevo: TStringField
      DisplayLabel = 'Nuevo estado'
      FieldKind = fkLookup
      FieldName = 'nomb_esta_nuevo'
      LookupDataSet = quer_refe_estados
      LookupKeyFields = 'CONS_REFE_ESTADO'
      LookupResultField = 'NOMB_REFE_ESTADO'
      KeyFields = 'CONS_ESTA_NUEVO'
      Size = 60
      Lookup = True
    end
    object quer_historialOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Origin = 'DATA_BASE_PCP.GLO_REFE_CAMB_ESTADO.OBSERVACIONES'
      Size = 240
    end
    object quer_historialFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_CAMB_ESTADO.FECH_SISTEMA'
    end
    object quer_historialUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_CAMB_ESTADO.USUA_SISTEMA'
    end
  end
  object data_historial: TDataSource
    DataSet = quer_historial
    Left = 456
    Top = 164
  end
end

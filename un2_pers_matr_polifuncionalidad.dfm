inherited fn2_pers_matr_polifuncionalidad: Tfn2_pers_matr_polifuncionalidad
  Left = 87
  Top = 94
  Width = 812
  Height = 585
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 548
    Width = 804
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 804
    inherited padr_beve_1: TBevel
      Width = 830
    end
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 557
    Width = 804
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
    Width = 804
    inherited padr_pane_titulo: TPanel
      Width = 763
      Caption = 'Matríz de polifuncionalidad'
    end
    inherited padr_pane_2: TPanel
      Left = 765
    end
    inherited padr_pane_cerrar: TPanel
      Left = 783
    end
  end
  object PCPFrame1: TPCPFrame [7]
    Tag = 129
    Left = 0
    Top = 77
    Width = 804
    Height = 129
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
    TabOrder = 7
    Caption = 'Información del personal'
    Titulo_Color = 16244694
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
      Top = 32
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
      Caption = 'Código:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 270
      Top = 32
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
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 56
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
      FocusControl = dxDBEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha ingreso:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 270
      Top = 56
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
      FocusControl = dxDBEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Empresa:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 530
      Top = 56
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
      FocusControl = dxDBEdit3
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Planta:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel6: TSCLDBLabel
      Left = 10
      Top = 80
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
      FocusControl = dxDBEdit4
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Línea:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel7: TSCLDBLabel
      Left = 270
      Top = 80
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
      FocusControl = dxDBEdit5
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Sección:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel8: TSCLDBLabel
      Left = 530
      Top = 80
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
      FocusControl = dxDBEdit6
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Turno:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel9: TSCLDBLabel
      Left = 10
      Top = 104
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
      FocusControl = dxDBEdit7
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Cargo:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel10: TSCLDBLabel
      Left = 270
      Top = 104
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
      FocusControl = dxDBEdit8
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Estado:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object comb_codi_personal: TPCPLookUpComboEdit
      Left = 112
      Top = 32
      Width = 160
      Height = 21
      DropDownCount = 8
      EscapeClear = False
      DataField = 'cons_personal'
      DataSource = data_ventana
      KeyField = 'cons_personal'
      ListField = 'codi_personal'
      ListSource = data_pers_codigo
      TabOrder = 1
      OnChange = doActualizarDatos
      DirectInput = False
    end
    object comb_nomb_personal: TPCPLookUpComboEdit
      Left = 372
      Top = 32
      Width = 260
      Height = 21
      DropDownCount = 8
      EscapeClear = False
      DataField = 'cons_personal'
      DataSource = data_ventana
      KeyField = 'cons_personal'
      ListField = 'nomb_completo'
      ListSource = data_pers_nombre
      TabOrder = 2
      OnChange = doActualizarDatos
      DirectInput = False
    end
    object dxDBEdit1: TdxDBEdit
      Left = 112
      Top = 56
      Width = 160
      Enabled = False
      TabOrder = 3
      DataField = 'FECH_INGRESO'
      DataSource = data_info_personal
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 372
      Top = 56
      Width = 160
      Enabled = False
      TabOrder = 4
      DataField = 'NOMB_EMPRESA'
      DataSource = data_info_personal
      StyleController = padr_estilo
    end
    object dxDBEdit3: TdxDBEdit
      Left = 632
      Top = 56
      Width = 160
      Enabled = False
      TabOrder = 5
      DataField = 'NOMB_PLANTA'
      DataSource = data_info_personal
      StyleController = padr_estilo
    end
    object dxDBEdit4: TdxDBEdit
      Left = 112
      Top = 80
      Width = 160
      Enabled = False
      TabOrder = 6
      DataField = 'NOMB_LINEA'
      DataSource = data_info_personal
      StyleController = padr_estilo
    end
    object dxDBEdit5: TdxDBEdit
      Left = 372
      Top = 80
      Width = 160
      Enabled = False
      TabOrder = 7
      DataField = 'NOMB_SECCION'
      DataSource = data_info_personal
      StyleController = padr_estilo
    end
    object dxDBEdit6: TdxDBEdit
      Left = 632
      Top = 80
      Width = 57
      Enabled = False
      TabOrder = 8
      DataField = 'CODI_TURNO'
      DataSource = data_info_personal
      StyleController = padr_estilo
    end
    object dxDBEdit7: TdxDBEdit
      Left = 112
      Top = 104
      Width = 160
      Enabled = False
      TabOrder = 9
      DataField = 'NOMB_PERS_CARGO'
      DataSource = data_info_personal
      StyleController = padr_estilo
    end
    object dxDBEdit8: TdxDBEdit
      Left = 372
      Top = 104
      Width = 160
      Enabled = False
      TabOrder = 10
      DataField = 'ESTADO'
      DataSource = data_info_personal
      StyleController = padr_estilo
    end
  end
  object Panel1: TPanel [8]
    Left = 0
    Top = 206
    Width = 804
    Height = 342
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 8
    object dfsSplitter1: TdfsSplitter
      Left = 345
      Top = 4
      Height = 334
      Cursor = crHSplit
      Align = alLeft
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object PCPFrame2: TPCPFrame
      Tag = 305
      Left = 4
      Top = 4
      Width = 341
      Height = 334
      Align = alLeft
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
      Caption = ' Selección de máquinas utilizadas '
      Titulo_Color = 16244694
      TipoFrame = tfGrupo
      BorderWidthIn = 4
      FlatBorder = True
      object grid_recursos: TdxDBGrid
        Left = 6
        Top = 25
        Width = 329
        Height = 285
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CONS_CONSULTA'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 1
        DataSource = data_poli_recursos
        Filter.Criteria = {00000000}
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        object grid_recursosCONS_CONSULTA: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_CONSULTA'
        end
        object grid_recursosHABILITADO: TdxDBGridCheckColumn
          Caption = 'H'
          HeaderAlignment = taCenter
          Width = 32
          BandIndex = 0
          RowIndex = 0
          FieldName = 'HABILITADO'
          ValueChecked = '1'
          ValueUnchecked = '-1'
          OnToggleClick = grid_recursosEToggleClick
        end
        object grid_recursosCONS_RECU_FAMILIA: TdxDBGridMaskColumn
          Color = clBtnFace
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 52
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_RECU_FAMILIA'
        end
        object grid_recursosCODI_RECU_FAMILIA: TdxDBGridMaskColumn
          Caption = 'Código'
          Color = clBtnFace
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 73
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODI_RECU_FAMILIA'
        end
        object grid_recursosNOMB_RECU_FAMILIA: TdxDBGridMaskColumn
          Caption = 'Familia'
          Color = clBtnFace
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 119
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_RECU_FAMILIA'
        end
        object grid_recursosE: TdxDBGridCheckColumn
          HeaderAlignment = taCenter
          Width = 34
          BandIndex = 0
          RowIndex = 0
          FieldName = 'E'
          ValueChecked = '1'
          ValueUnchecked = '-1'
          OnToggleClick = grid_recursosEToggleClick
        end
        object grid_recursosN: TdxDBGridCheckColumn
          HeaderAlignment = taCenter
          Width = 34
          BandIndex = 0
          RowIndex = 0
          FieldName = 'N'
          ValueChecked = '1'
          ValueUnchecked = '-1'
          OnToggleClick = grid_recursosEToggleClick
        end
        object grid_recursosA: TdxDBGridCheckColumn
          HeaderAlignment = taCenter
          Width = 33
          BandIndex = 0
          RowIndex = 0
          FieldName = 'A'
          ValueChecked = '1'
          ValueUnchecked = '-1'
          OnToggleClick = grid_recursosEToggleClick
        end
      end
      object Panel2: TPanel
        Left = 2
        Top = 314
        Width = 337
        Height = 18
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'E: Excelente (> 6), N: Normal (4 - 6), A: Aceptable (< 3)'
        TabOrder = 2
      end
    end
    object PCPFrame3: TPCPFrame
      Tag = 305
      Left = 355
      Top = 4
      Width = 445
      Height = 334
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
      Caption = ' Selección de máquinas con experiencia '
      Titulo_Color = 16244694
      TipoFrame = tfGrupo
      BorderWidthIn = 4
      FlatBorder = True
      object Panel3: TPanel
        Left = 2
        Top = 314
        Width = 441
        Height = 18
        Align = alBottom
        BevelOuter = bvNone
        Caption = 
          'E: Excelente (Más de 101%), N:Normal (De 86% a 100%), A:Aceptabl' +
          'e (de 75% a 85%)'
        TabOrder = 1
      end
      object grid_operaciones: TdxDBGrid
        Left = 6
        Top = 51
        Width = 433
        Height = 259
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CONS_CONSULTA'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 2
        DataSource = data_poli_operaciones
        Filter.Criteria = {00000000}
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        object grid_operacionesCONS_CONSULTA: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 81
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_CONSULTA'
        end
        object grid_operacionesHABILITADO: TdxDBGridCheckColumn
          Caption = 'H'
          HeaderAlignment = taCenter
          MinWidth = 20
          Visible = False
          Width = 38
          BandIndex = 0
          RowIndex = 0
          FieldName = 'HABILITADO'
          ValueChecked = '1'
          ValueUnchecked = 'False'
          OnToggleClick = grid_operacionesHABILITADOToggleClick
        end
        object grid_operacionesCONS_RECU_FAMILIA: TdxDBGridMaskColumn
          Color = clBtnFace
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 98
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_RECU_FAMILIA'
        end
        object grid_operacionesCODI_RECU_FAMILIA: TdxDBGridMaskColumn
          Caption = 'Familia'
          Color = clBtnFace
          DisableEditor = True
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODI_RECU_FAMILIA'
        end
        object grid_operacionesCONS_OPER_COSTURA: TdxDBGridMaskColumn
          Color = clBtnFace
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 105
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_OPER_COSTURA'
        end
        object grid_operacionesCODI_OPER_COSTURA: TdxDBGridMaskColumn
          Caption = 'Código'
          Color = clBtnFace
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 63
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODI_OPER_COSTURA'
        end
        object grid_operacionesNOMB_OPER_COSTURA: TdxDBGridMaskColumn
          Caption = 'Operación'
          Color = clBtnFace
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 194
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_OPER_COSTURA'
        end
        object grid_operacionesE: TdxDBGridCheckColumn
          HeaderAlignment = taCenter
          MinWidth = 20
          Width = 34
          BandIndex = 0
          RowIndex = 0
          FieldName = 'E'
          ValueChecked = '1'
          ValueUnchecked = 'False'
          OnToggleClick = grid_operacionesHABILITADOToggleClick
        end
        object grid_operacionesN: TdxDBGridCheckColumn
          HeaderAlignment = taCenter
          MinWidth = 20
          Width = 35
          BandIndex = 0
          RowIndex = 0
          FieldName = 'N'
          ValueChecked = '1'
          ValueUnchecked = 'False'
          OnToggleClick = grid_operacionesHABILITADOToggleClick
        end
        object grid_operacionesA: TdxDBGridCheckColumn
          HeaderAlignment = taCenter
          MinWidth = 20
          Width = 33
          BandIndex = 0
          RowIndex = 0
          FieldName = 'A'
          ValueChecked = '1'
          ValueUnchecked = 'False'
          OnToggleClick = grid_operacionesHABILITADOToggleClick
        end
      end
      object TBXDock1: TTBXDock
        Left = 2
        Top = 25
        Width = 441
        Height = 26
        object TBXToolbar1: TTBXToolbar
          Left = 0
          Top = 0
          BorderStyle = bsNone
          FullSize = True
          TabOrder = 0
          object TBXItem2: TTBXItem
            Caption = 'Nuevo'
            DisplayMode = nbdmImageAndText
            ImageIndex = 0
            Images = imag_pequenas
            OnClick = TBXItem2Click
          end
          object TBXItem1: TTBXItem
            Caption = 'Eliminar'
            DisplayMode = nbdmImageAndText
            ImageIndex = 2
            Images = imag_pequenas
          end
        end
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 549
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 804
  end
  inherited data_ventana: TDataSource
    DataSet = myTabla_ventana
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_actualizar: TDataSetRefresh
      Enabled = True
      Visible = True
    end
  end
  inherited padr_estilo: TdxEditStyleController
    Left = 682
    Top = 26
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController
    Left = 642
    Top = 26
  end
  inherited padr_pict_container: TPictureContainer
    Left = 610
    Top = 21
  end
  object myTabla_ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_personal'
        DataType = ftInteger
      end>
    Left = 218
    Top = 2
    object myTabla_ventanacons_personal: TIntegerField
      FieldName = 'cons_personal'
    end
  end
  object quer_info_personal: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Select *'
      'from con_glo_pers_info_gene_unidad'
      '(:cons_personal)')
    Left = 656
    Top = 125
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_personal'
        ParamType = ptUnknown
      end>
  end
  object quer_pers_codigo: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_personal, codi_personal'
      'from glo_personal'
      'order by codi_personal')
    Left = 216
    Top = 72
  end
  object quer_pers_nombre: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_personal,'
      'nomb_completo'
      'from GLO_PERSONAL'
      'order by prim_apellido, segu_apellido, nombres')
    Left = 392
    Top = 72
  end
  object data_pers_codigo: TDataSource
    DataSet = quer_pers_codigo
    Left = 216
    Top = 104
  end
  object data_pers_nombre: TDataSource
    DataSet = quer_pers_nombre
    Left = 392
    Top = 104
  end
  object data_info_personal: TDataSource
    DataSet = quer_info_personal
    Left = 688
    Top = 125
  end
  object quer_poli_recursos: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Select *'
      'from CON_PCP_PLAN_PERS_POLI_RECURSOS'
      '(:cons_personal)')
    Left = 100
    Top = 282
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_personal'
        ParamType = ptUnknown
      end>
    object quer_poli_recursosCONS_CONSULTA: TIntegerField
      FieldName = 'CONS_CONSULTA'
    end
    object quer_poli_recursosHABILITADO: TIntegerField
      DisplayLabel = 'H'
      FieldName = 'HABILITADO'
    end
    object quer_poli_recursosCONS_RECU_FAMILIA: TIntegerField
      FieldName = 'CONS_RECU_FAMILIA'
    end
    object quer_poli_recursosCODI_RECU_FAMILIA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_RECU_FAMILIA'
      Size = 12
    end
    object quer_poli_recursosNOMB_RECU_FAMILIA: TStringField
      DisplayLabel = 'Familia'
      FieldName = 'NOMB_RECU_FAMILIA'
      Size = 60
    end
    object quer_poli_recursosE: TIntegerField
      FieldName = 'E'
    end
    object quer_poli_recursosN: TIntegerField
      FieldName = 'N'
    end
    object quer_poli_recursosA: TIntegerField
      FieldName = 'A'
    end
  end
  object data_poli_recursos: TDataSource
    DataSet = tabl_poli_recursos
    Left = 132
    Top = 282
  end
  object tabl_poli_recursos: TMemoryTable
    DatabaseName = 'PCPLocal'
    TableName = 'tmpPOLI_RECURSOS'
    Left = 100
    Top = 314
  end
  object quer_poli_operaciones: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Select *'
      'from CON_PCP_PLAN_PERS_POLI_OPER'
      '(:cons_personal)')
    Left = 444
    Top = 282
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_personal'
        ParamType = ptUnknown
      end>
    object quer_poli_operacionesCONS_CONSULTA: TIntegerField
      FieldName = 'CONS_CONSULTA'
    end
    object quer_poli_operacionesHABILITADO: TIntegerField
      DisplayLabel = 'H'
      FieldName = 'HABILITADO'
    end
    object quer_poli_operacionesCONS_RECU_FAMILIA: TIntegerField
      FieldName = 'CONS_RECU_FAMILIA'
    end
    object quer_poli_operacionesCODI_RECU_FAMILIA: TStringField
      DisplayLabel = 'Familia'
      FieldName = 'CODI_RECU_FAMILIA'
      Size = 12
    end
    object quer_poli_operacionesCONS_OPER_COSTURA: TIntegerField
      FieldName = 'CONS_OPER_COSTURA'
    end
    object quer_poli_operacionesCODI_OPER_COSTURA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_OPER_COSTURA'
      Size = 12
    end
    object quer_poli_operacionesNOMB_OPER_COSTURA: TStringField
      DisplayLabel = 'Operación'
      FieldName = 'NOMB_OPER_COSTURA'
      Size = 60
    end
    object quer_poli_operacionesE: TIntegerField
      FieldName = 'E'
    end
    object quer_poli_operacionesN: TIntegerField
      FieldName = 'N'
    end
    object quer_poli_operacionesA: TIntegerField
      FieldName = 'A'
    end
  end
  object data_poli_operaciones: TDataSource
    DataSet = tabl_poli_operaciones
    Left = 476
    Top = 282
  end
  object tabl_poli_operaciones: TMemoryTable
    DatabaseName = 'PCPLocal'
    TableName = 'tmpPOLI_OPERACIONES'
    Left = 444
    Top = 314
  end
end

inherited fn1_plan_line_especialidades: Tfn1_plan_line_especialidades
  Left = 139
  Top = 138
  Width = 674
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 666
  end
  inherited padr_shap_xp_down: TShape
    Width = 666
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 666
  end
  inherited padr_pane_arriba: TPanel
    Width = 666
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 666
    inherited padr_beve_1: TBevel
      Width = 660
    end
    inherited padr_sepa_new: TShape
      Width = 660
    end
  end
  inherited padr_pane_info: TPanel
    Width = 666
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
    Width = 666
    inherited padr_pane_titulo: TPanel
      Width = 625
      Caption = 'Especialidades por línea'
    end
    inherited padr_pane_2: TPanel
      Left = 627
    end
    inherited padr_pane_cerrar: TPanel
      Left = 645
    end
  end
  object Panel1: TPanel [7]
    Left = 0
    Top = 77
    Width = 666
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 7
    object SCLDBLabel1: TSCLDBLabel
      Left = 8
      Top = 5
      Width = 45
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
      FocusControl = comb_lineas
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
    object comb_lineas: TPCPLookUpComboEdit
      Left = 55
      Top = 5
      Width = 180
      Height = 21
      DropDownCount = 8
      EscapeClear = False
      DataField = 'cons_linea'
      DataSource = data_ventana
      KeyField = 'cons_linea'
      ListField = 'nomb_linea'
      ListSource = data_lineas
      TabOrder = 0
      OnChange = comb_lineasChange
      DirectInput = False
    end
  end
  object Panel2: TPanel [8]
    Left = 0
    Top = 108
    Width = 666
    Height = 239
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 8
    object PCPFrame1: TPCPFrame
      Tag = 202
      Left = 4
      Top = 4
      Width = 658
      Height = 231
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 4
      Constraints.MinHeight = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Caption = ' Especialidades asignadas '
      Titulo_Color = 16244694
      TipoFrame = tfGrupo
      BorderWidthIn = 4
      FlatBorder = True
      object grid: TdxDBGrid
        Left = 227
        Top = 27
        Width = 423
        Height = 196
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CONS_PLAN_LINE_ESPECIALIDAD'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 2
        OnDblClick = boto_atrasClick
        DataSource = data_plan_line_especialidades
        Filter.Criteria = {00000000}
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
        object gridCONS_PLAN_LINE_ESPECIALIDAD: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 273
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_PLAN_LINE_ESPECIALIDAD'
        end
        object gridCONS_LINEA: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 110
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_LINEA'
        end
        object gridCONS_REFE_ESTILO: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 170
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_REFE_ESTILO'
        end
        object gridNOMB_REFE_ESTILO: TdxDBGridLookupColumn
          HeaderAlignment = taCenter
          Width = 154
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_REFE_ESTILO'
        end
        object gridFECH_SISTEMA: TdxDBGridDateColumn
          HeaderAlignment = taCenter
          Width = 125
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FECH_SISTEMA'
        end
        object gridUSUA_SISTEMA: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 137
          BandIndex = 0
          RowIndex = 0
          FieldName = 'USUA_SISTEMA'
        end
      end
      object grid_estilos: TdxDBGrid
        Left = 8
        Top = 27
        Width = 185
        Height = 196
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CONS_REFE_ESTILO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alLeft
        TabOrder = 0
        OnDblClick = boto_adelanteClick
        DataSource = data_refe_estilos
        Filter.Criteria = {00000000}
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
        object grid_estilosCONS_REFE_ESTILO: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_REFE_ESTILO'
        end
        object grid_estilosNOMB_REFE_ESTILO: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_REFE_ESTILO'
        end
      end
      object Panel3: TPanel
        Left = 193
        Top = 27
        Width = 34
        Height = 196
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 3
        object boto_adelante: TSCLButton
          Left = 6
          Top = 21
          Width = 23
          Height = 24
          TabOrder = 0
          TabStop = False
          OnClick = boto_adelanteClick
          Down = False
          Images = _fMDI.imag_pequenas
          ImageIndex = 34
          Flat = True
          Color = clBtnFace
          Style = bsNew
          BackColor = clBtnFace
          ColorBordeBoton = clBtnShadow
          TipoPintadoBoton = tpbContorno
          RedondeoBoton = 4
        end
        object boto_atras: TSCLButton
          Left = 6
          Top = 49
          Width = 23
          Height = 24
          TabOrder = 1
          TabStop = False
          OnClick = boto_atrasClick
          Down = False
          Images = _fMDI.imag_pequenas
          ImageIndex = 33
          Flat = True
          Color = clBtnFace
          Style = bsNew
          BackColor = clBtnFace
          ColorBordeBoton = clBtnShadow
          TipoPintadoBoton = tpbContorno
          RedondeoBoton = 4
        end
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Width = 666
    inherited padr_beve_abajo: TBevel
      Width = 660
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 666
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
    Left = 610
    Top = 66
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController
    Left = 634
    Top = 26
  end
  inherited padr_pict_container: TPictureContainer
    Left = 610
    Top = 29
  end
  object myTabla_ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_linea'
        DataType = ftInteger
      end>
    Left = 218
    Top = 6
    object myTabla_ventanacons_linea: TIntegerField
      FieldName = 'cons_linea'
    end
  end
  object quer_lineas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_linea, nomb_linea'
      'from GLO_LINEAS'
      'where cons_linea > 0'
      'order by nomb_linea')
    Left = 384
    Top = 77
  end
  object data_lineas: TDataSource
    DataSet = quer_lineas
    Left = 413
    Top = 77
  end
  object quer_refe_estilos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_Refe_estilo,'
      'nomb_refe_estilo'
      'from GLO_REFE_ESTILOS'
      'where cons_refe_estilo > 0'
      'Order by nomb_refe_estilo')
    Left = 44
    Top = 168
    object quer_refe_estilosCONS_REFE_ESTILO: TIntegerField
      FieldName = 'CONS_REFE_ESTILO'
    end
    object quer_refe_estilosNOMB_REFE_ESTILO: TStringField
      DisplayLabel = 'Estilo'
      FieldName = 'NOMB_REFE_ESTILO'
      Size = 60
    end
  end
  object data_refe_estilos: TDataSource
    DataSet = quer_refe_estilos
    Left = 76
    Top = 168
  end
  object tabl_plan_line_especialidades: TTable
    BeforePost = tabl_plan_line_especialidadesBeforePost
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_LINEA'
    MasterFields = 'cons_linea'
    MasterSource = data_ventana
    TableName = 'PCP_PLAN_LINE_ESPECIALIDADES'
    Left = 324
    Top = 216
    object tabl_plan_line_especialidadesCONS_PLAN_LINE_ESPECIALIDAD: TIntegerField
      FieldName = 'CONS_PLAN_LINE_ESPECIALIDAD'
      Required = True
    end
    object tabl_plan_line_especialidadesCONS_LINEA: TIntegerField
      FieldName = 'CONS_LINEA'
      Required = True
    end
    object tabl_plan_line_especialidadesCONS_REFE_ESTILO: TIntegerField
      FieldName = 'CONS_REFE_ESTILO'
      Required = True
    end
    object tabl_plan_line_especialidadesNOMB_REFE_ESTILO: TStringField
      DisplayLabel = 'Estilo'
      FieldKind = fkLookup
      FieldName = 'NOMB_REFE_ESTILO'
      LookupDataSet = quer_refe_estilos
      LookupKeyFields = 'CONS_REFE_ESTILO'
      LookupResultField = 'NOMB_REFE_ESTILO'
      KeyFields = 'CONS_REFE_ESTILO'
      Size = 60
      Lookup = True
    end
    object tabl_plan_line_especialidadesFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
    end
    object tabl_plan_line_especialidadesUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
    end
  end
  object data_plan_line_especialidades: TDataSource
    DataSet = tabl_plan_line_especialidades
    Left = 356
    Top = 216
  end
end

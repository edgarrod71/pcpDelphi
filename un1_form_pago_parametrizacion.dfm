inherited fn1_form_pago_parametrizacion: Tfn1_form_pago_parametrizacion
  Left = 154
  Top = -10
  Width = 812
  Height = 582
  Caption = 'Valores Hora Producción y Sistema Predeterminado de Pago'
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 554
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
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 553
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
  inherited pane_beve_abajo: TPanel
    Top = 545
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 214
    Width = 804
  end
  object PCPFrame2: TPCPFrame [8]
    Tag = 162
    Left = 0
    Top = 52
    Width = 804
    Height = 162
    Align = alTop
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Caption = 'Valores generales'
    Titulo_Color = 16244694
    FlatBorder = True
    OmitirAnimacion = False
    object SCLDBLabel14: TSCLDBLabel
      Left = 8
      Top = 103
      Width = 185
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
      FocusControl = PCPLookUpComboEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Período de Pago:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_PERI_PAGO'
      Field = 'CONS_PERI_PAGO'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 8
      Top = 35
      Width = 185
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
      Caption = 'Valor Mínimo Garantizado:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'VALO_HORA_MINI_GARANTIZADO'
      Field = 'VALO_HORA_MINI_GARANTIZADO'
    end
    object DBText1: TDBText
      Left = 300
      Top = 39
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'SIMB_MONEDA'
      DataSource = _fMDI.data_configuracion
    end
    object SCLDBLabel1: TSCLDBLabel
      Left = 8
      Top = 55
      Width = 185
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
      Caption = 'Valor Hora Producción:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'VALO_HORA_PRODUCCION'
      Field = 'VALO_HORA_PRODUCCION'
    end
    object DBText2: TDBText
      Left = 300
      Top = 59
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'SIMB_MONEDA'
      DataSource = _fMDI.data_configuracion
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 8
      Top = 83
      Width = 185
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
      FocusControl = PCPLookUpComboEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Método de pago predeterminado:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 8
      Top = 131
      Width = 185
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
      Caption = 'Días para el cálculo de promedios:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'VALO_HORA_MINI_GARANTIZADO'
      Field = 'VALO_HORA_MINI_GARANTIZADO'
    end
    object PCPLookUpComboEdit1: TPCPLookUpComboEdit
      Left = 195
      Top = 103
      Width = 166
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_PERI_PAGO'
      DataSource = data_ventana
      KeyField = 'cons_peri_pago'
      ListField = 'nomb_peri_pago'
      ListSource = data_peri_pago
      ParentCtl3D = False
      TabOrder = 4
      DirectInput = False
    end
    object dxDBEdit1: TdxDBCurrencyEdit
      Left = 195
      Top = 35
      Width = 100
      TabOrder = 1
      Alignment = taRightJustify
      DataField = 'VALO_HORA_MINI_GARANTIZADO'
      DataSource = data_ventana
      StyleController = padr_estilo
      DecimalPlaces = 3
      DisplayFormat = ',0.000'
      Nullable = False
      StoredValues = 1
    end
    object dxDBEdit2: TdxDBCurrencyEdit
      Left = 195
      Top = 55
      Width = 100
      TabOrder = 2
      Alignment = taRightJustify
      DataField = 'VALO_HORA_PRODUCCION'
      DataSource = data_ventana
      StyleController = padr_estilo
      DecimalPlaces = 3
      DisplayFormat = ',0.000'
      Nullable = False
      StoredValues = 1
    end
    object PCPLookUpComboEdit2: TPCPLookUpComboEdit
      Left = 195
      Top = 83
      Width = 286
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_SIS_FORM_PAGO'
      DataSource = data_ventana
      KeyField = 'cons_sis_form_pago'
      ListField = 'nomb_sis_form_pago'
      ListSource = data_form_pago
      ParentCtl3D = False
      TabOrder = 3
      DirectInput = False
    end
    object dxDBEdit3: TdxDBCurrencyEdit
      Left = 195
      Top = 131
      Width = 38
      TabOrder = 5
      Alignment = taRightJustify
      DataField = 'DIAS_CALC_PROMEDIOS'
      DataSource = data_ventana
      StyleController = padr_estilo
      DecimalPlaces = 0
      DisplayFormat = ',0'
      Nullable = False
      StoredValues = 1
    end
  end
  object PCPFrame1: TPCPFrame [9]
    Tag = 329
    Left = 0
    Top = 216
    Width = 804
    Height = 329
    Align = alClient
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Caption = ' Valores Hora Producción'
    Titulo_Color = 16244694
    OmitirAnimacion = False
    object page_prod_usuario: TSCLPageControl
      Left = 3
      Top = 22
      Width = 798
      Height = 304
      ActivePage = page_usuario
      ActivePageDefault = page_usuario
      Align = alClient
      BoldCurrentTab = True
      Color = 16578290
      FlatColor = 10435335
      Margin = 5
      ParentColor = False
      TabColors.Shadow = 15582631
      TabColors.Unselected = 16578290
      TabIndex = 0
      TabOrder = 1
      Transparent = True
      FixedDimension = 19
      object page_usuario: TSCLTabSheet
        Color = 16578290
        Caption = 'Definidos por el usuario'
        object pane_hora_usuario: TPanel
          Left = 0
          Top = 0
          Width = 794
          Height = 281
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 0
          object grid_hora_usuario: TSCLDBGrid
            Left = 5
            Top = 31
            Width = 784
            Height = 245
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'CONS_FORM_PAGO_VALO_HORA'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            PopupMenu = pop_grid
            TabOrder = 0
            OnDblClick = acti_modificarExecute
            OnKeyDown = grid_hora_usuarioKeyDown
            ArrowsColor = clHighlight
            AutoSearchColor = 4227327
            AutoSearchTextColor = clBlack
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = data_valo_hora_usuario
            Filter.Criteria = {00000000}
            GridLineColor = 14467501
            GroupPanelColor = 13265692
            GroupPanelFontColor = clWhite
            GroupNodeColor = 15982803
            GroupNodeTextColor = 8072450
            HeaderColor = 16578290
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = 8072450
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = []
            HideFocusRect = True
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
            OptionsView = [edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            object grid_hora_usuarioCONS_FORM_PAGO_VALO_HORA: TdxDBGridMaskColumn
              Width = 77
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_FORM_PAGO_VALO_HORA'
            end
            object grid_hora_usuarioNOMB_FORM_PAGO_VALO_HORA: TdxDBGridMaskColumn
              Width = 187
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOMB_FORM_PAGO_VALO_HORA'
            end
            object grid_hora_usuarioVALO_HORA_PRODUCCION: TdxDBGridMaskColumn
              Width = 102
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VALO_HORA_PRODUCCION'
            end
            object grid_hora_usuarioCALCULADO: TdxDBGridMaskColumn
              Visible = False
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CALCULADO'
            end
            object grid_hora_usuarioFECH_SISTEMA: TdxDBGridDateColumn
              Width = 130
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FECH_SISTEMA'
            end
            object grid_hora_usuarioUSUA_SISTEMA: TdxDBGridMaskColumn
              Width = 117
              BandIndex = 0
              RowIndex = 0
              FieldName = 'USUA_SISTEMA'
            end
          end
          object dock_menu: TTBXDock
            Left = 5
            Top = 5
            Width = 784
            Height = 26
            object barr_opci_usuario: TTBXToolbar
              Left = 0
              Top = 0
              BorderStyle = bsNone
              DockMode = dmCannotFloatOrChangeDocks
              FullSize = True
              Images = _fMDI.imagenesPCP
              TabOrder = 0
              object TBXItem3: TTBXItem
                Action = acti_nuevo
                DisplayMode = nbdmImageAndText
              end
              object TBXItem2: TTBXItem
                Action = acti_modificar
                DisplayMode = nbdmImageAndText
              end
              object TBXItem1: TTBXItem
                Action = acti_eliminar
                DisplayMode = nbdmImageAndText
              end
              object TBXSeparatorItem1: TTBXSeparatorItem
              end
              object menu_exportar: TTBXSubmenuItem
                Caption = 'Exportar'
                DisplayMode = nbdmImageAndText
                ImageIndex = 16
                object TBXItem6: TTBXItem
                  Action = acti_expo_xls
                  DisplayMode = nbdmImageAndText
                end
                object TBXItem5: TTBXItem
                  Action = acti_expo_txt
                  DisplayMode = nbdmImageAndText
                end
                object TBXItem4: TTBXItem
                  Action = acti_expo_html
                  DisplayMode = nbdmImageAndText
                end
              end
            end
          end
        end
      end
      object page_prod_sistema: TSCLTabSheet
        Color = 16578290
        Caption = 'Calculados por el sistema'
        object pane_hora_sistema: TPanel
          Left = 0
          Top = 0
          Width = 794
          Height = 281
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 0
          object SCLDBGrid1: TSCLDBGrid
            Left = 5
            Top = 28
            Width = 784
            Height = 248
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'CONS_FORM_PAGO_VALO_HORA'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyDown = grid_hora_usuarioKeyDown
            ArrowsColor = clHighlight
            AutoSearchColor = 4227327
            AutoSearchTextColor = clBlack
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = data_valo_hora_sistema
            Filter.Criteria = {00000000}
            GridLineColor = 14467501
            GroupPanelColor = 13265692
            GroupPanelFontColor = clWhite
            GroupNodeColor = 15982803
            GroupNodeTextColor = 8072450
            HeaderColor = 16578290
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = 8072450
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = []
            HideFocusRect = True
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
            OptionsView = [edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            object dxDBGridMaskColumn1: TdxDBGridMaskColumn
              Width = 88
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_FORM_PAGO_VALO_HORA'
            end
            object dxDBGridMaskColumn2: TdxDBGridMaskColumn
              Width = 248
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOMB_FORM_PAGO_VALO_HORA'
            end
            object dxDBGridMaskColumn3: TdxDBGridMaskColumn
              Visible = False
              Width = 86
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VALO_HORA_PRODUCCION'
            end
            object dxDBGridMaskColumn4: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CALCULADO'
            end
            object dxDBGridDateColumn1: TdxDBGridDateColumn
              Width = 112
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FECH_SISTEMA'
            end
            object dxDBGridMaskColumn5: TdxDBGridMaskColumn
              Width = 124
              BandIndex = 0
              RowIndex = 0
              FieldName = 'USUA_SISTEMA'
            end
          end
          inline mens_calc_sistema: Tffra_mens_atencion
            Left = 5
            Top = 5
            Width = 784
            Height = 23
            TabOrder = 1
            inherited padr_shap_top: TShape
              Width = 784
            end
            inherited padr_shap_bottom: TShape
              Top = 22
              Width = 784
            end
            inherited padr_shap_right: TShape
              Left = 783
              Height = 21
            end
            inherited padr_shap_left: TShape
              Height = 21
            end
            inherited fram_label: TAdvPanel
              Width = 782
              Height = 21
              Text = 
                '<IMG src="info">  Esta lista es <B>informativa. </B>Los items no' +
                ' pueden ser modificados.'
              FullHeight = 15
              inherited data_label: TDBText
                Left = 342
              end
            end
          end
        end
      end
    end
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_buscar: TAction
      Enabled = False
    end
    inherited padr_acti_guardar: TDataSetPost
      Enabled = True
    end
    inherited padr_acti_aceptar: TAction
      Enabled = False
    end
    inherited acti_padr_cancelar_2: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_nuevo: TDataSetInsert
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
    inherited padr_acti_expo_xls: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_HTML: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_arch_sepa_comas: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited Variables: TSCLPropiedadesForm
    verBotonesNavegacion = False
  end
  inherited Tabla_Ventana: TTable
    BeforeInsert = Tabla_VentanaBeforeInsert
    TableName = 'PCP_FORM_PAGO_PARAMETROS'
    object Tabla_VentanaVALO_HORA_MINI_GARANTIZADO: TFloatField
      DisplayLabel = 'Valor mínimo garantizado'
      FieldName = 'VALO_HORA_MINI_GARANTIZADO'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
    end
    object Tabla_VentanaVALO_HORA_PRODUCCION: TFloatField
      DisplayLabel = 'Método de pago'
      FieldName = 'VALO_HORA_PRODUCCION'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
    end
    object Tabla_VentanaCONS_PERI_PAGO: TIntegerField
      DisplayLabel = 'Período de cálculo'
      FieldName = 'CONS_PERI_PAGO'
    end
    object Tabla_VentanaCONS_SIS_FORM_PAGO: TIntegerField
      DisplayLabel = 'M'
      FieldName = 'CONS_SIS_FORM_PAGO'
    end
    object Tabla_VentanaVALO_HORA_MINI_EMPRESA: TFloatField
      DisplayLabel = 'Valor hora mínimo empresa'
      FieldName = 'VALO_HORA_MINI_EMPRESA'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
    end
    object Tabla_VentanaVALO_HORA_MEDI_EMPRESA: TFloatField
      DisplayLabel = 'Valor hora medio empresa'
      FieldName = 'VALO_HORA_MEDI_EMPRESA'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
    end
    object Tabla_VentanaVALO_HORA_MAXI_EMPRESA: TFloatField
      DisplayLabel = 'Valor hora máximo empresa'
      FieldName = 'VALO_HORA_MAXI_EMPRESA'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
    end
    object Tabla_VentanaVALO_HORA_PERSONALIZADO: TFloatField
      DisplayLabel = 'Valor personalizado'
      FieldName = 'VALO_HORA_PERSONALIZADO'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaDIAS_CALC_PROMEDIOS: TIntegerField
      DisplayLabel = 'Días para el cálculo de promedios'
      FieldName = 'DIAS_CALC_PROMEDIOS'
    end
  end
  object quer_peri_pago: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT'
      'CONS_PERI_PAGO, NOMB_PERI_PAGO'
      'FROM SIS_PERI_PAGO'
      'ORDER BY CONS_PERI_PAGO')
    Left = 592
    Top = 61
  end
  object data_peri_pago: TDataSource
    DataSet = quer_peri_pago
    Left = 624
    Top = 61
  end
  object quer_form_pago: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT'
      'CONS_SIS_FORM_PAGO, NOMB_SIS_FORM_PAGO'
      'FROM SIS_PCP_FORM_PAGO '
      'WHERE ESTA_ACTIVA = 1'
      'AND CONS_SIS_FORM_PAGO <> 5'
      'ORDER BY CONS_SIS_FORM_PAGO')
    Left = 592
    Top = 93
  end
  object data_form_pago: TDataSource
    DataSet = quer_form_pago
    Left = 624
    Top = 93
  end
  object tabl_valo_hora_usuario: TTable
    BeforePost = tabl_valo_hora_usuarioBeforePost
    AfterPost = tabl_valo_hora_usuarioAfterPostDeleteCancel
    AfterCancel = tabl_valo_hora_usuarioAfterPostDeleteCancel
    AfterDelete = tabl_valo_hora_usuarioAfterPostDeleteCancel
    DatabaseName = 'data_base_pcp'
    Filter = 'CALCULADO<>1'
    Filtered = True
    TableName = 'PCP_FORM_PAGO_VALO_HORA'
    Left = 440
    Top = 149
    object tabl_valo_hora_usuarioCONS_FORM_PAGO_VALO_HORA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Consecutivo'
      FieldName = 'CONS_FORM_PAGO_VALO_HORA'
      Required = True
      Visible = False
    end
    object tabl_valo_hora_usuarioNOMB_FORM_PAGO_VALO_HORA: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMB_FORM_PAGO_VALO_HORA'
      Required = True
      Size = 60
    end
    object tabl_valo_hora_usuarioVALO_HORA_PRODUCCION: TFloatField
      DisplayLabel = 'Valor hora'
      FieldName = 'VALO_HORA_PRODUCCION'
      Required = True
      DisplayFormat = ',0.000'
    end
    object tabl_valo_hora_usuarioCALCULADO: TIntegerField
      FieldName = 'CALCULADO'
    end
    object tabl_valo_hora_usuarioFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
    end
    object tabl_valo_hora_usuarioUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
    end
  end
  object data_valo_hora_usuario: TDataSource
    DataSet = tabl_valo_hora_usuario
    Left = 472
    Top = 149
  end
  object ActionList1: TActionList
    Images = _fMDI.imagenesPCP
    Left = 32
    Top = 328
    object acti_nuevo: TAction
      Category = 'Archivo'
      Caption = 'Nuevo'
      ImageIndex = 0
      OnExecute = acti_nuevoExecute
    end
    object acti_modificar: TAction
      Category = 'Archivo'
      Caption = 'Modificar'
      ImageIndex = 1
      OnExecute = acti_modificarExecute
    end
    object acti_eliminar: TAction
      Category = 'Archivo'
      Caption = 'Eliminar'
      ImageIndex = 2
      OnExecute = acti_eliminarExecute
      OnUpdate = acti_eliminarUpdate
    end
    object acti_expo_xls: TAction
      Category = 'Exportar'
      Caption = 'Archivo de MS-Excel'
      ImageIndex = 17
      OnExecute = acti_expo_xlsExecute
    end
    object acti_expo_txt: TAction
      Category = 'Exportar'
      Caption = 'Archivo separado por comas'
      ImageIndex = 19
      OnExecute = acti_expo_txtExecute
    end
    object acti_expo_html: TAction
      Category = 'Exportar'
      Caption = 'Archivo HTML'
      ImageIndex = 18
      OnExecute = acti_expo_htmlExecute
    end
  end
  object pop_grid: TTBXPopupMenu
    Images = _fMDI.imagenesPCP
    Left = 64
    Top = 328
    object TBXItem9: TTBXItem
      Action = acti_nuevo
    end
    object TBXItem8: TTBXItem
      Action = acti_modificar
    end
    object TBXItem7: TTBXItem
      Action = acti_eliminar
    end
    object TBXSeparatorItem2: TTBXSeparatorItem
    end
    object TBXSubmenuItem1: TTBXSubmenuItem
      Caption = 'Exportar'
      ImageIndex = 16
      object TBGroupItem1: TTBGroupItem
      end
    end
  end
  object quer_valo_hora_sistema: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM PCP_FORM_PAGO_VALO_HORA'
      'WHERE CALCULADO = 1'
      'ORDER BY CONS_FORM_PAGO_VALO_HORA')
    Left = 440
    Top = 181
    object quer_valo_hora_sistemaCONS_FORM_PAGO_VALO_HORA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Consecutivo'
      FieldName = 'CONS_FORM_PAGO_VALO_HORA'
      Required = True
    end
    object quer_valo_hora_sistemaNOMB_FORM_PAGO_VALO_HORA: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMB_FORM_PAGO_VALO_HORA'
      Required = True
      Size = 60
    end
    object quer_valo_hora_sistemaVALO_HORA_PRODUCCION: TFloatField
      DisplayLabel = 'Valor hora'
      FieldName = 'VALO_HORA_PRODUCCION'
      Required = True
      DisplayFormat = ',0.000'
    end
    object quer_valo_hora_sistemaCALCULADO: TIntegerField
      FieldName = 'CALCULADO'
    end
    object quer_valo_hora_sistemaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
    end
    object quer_valo_hora_sistemaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
    end
  end
  object data_valo_hora_sistema: TDataSource
    DataSet = quer_valo_hora_sistema
    Left = 472
    Top = 181
  end
end

inherited fn1_form_pago_para_maestro: Tfn1_form_pago_para_maestro
  Left = 85
  Top = 119
  Width = 812
  Height = 566
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 538
    Width = 804
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
    inherited padr_barra: TTBXToolbar
      inherited padr_sepa_1: TTBXSeparatorItem [3]
      end
      inherited padr_boto_guardar: TTBXItem [4]
      end
      inherited padr_boto_guar_cerrar: TTBXItem [5]
      end
      inherited padr_boto_aceptar: TTBXItem [6]
      end
      inherited padr_boto_cancelar: TTBXItem [7]
      end
      inherited padr_boto_eliminar: TTBXItem [8]
      end
      inherited padr_boto_modificar: TTBXItem [9]
      end
      inherited padr_sepa_33: TTBSeparatorItem [10]
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 804
    Height = 0
    inherited padr_sepa_new: TShape
      Width = 798
      Height = 0
    end
  end
  inherited padr_pane_info: TPanel
    Top = 538
    Width = 804
    Height = 0
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
    Top = 538
    Width = 804
    Height = 0
    inherited padr_beve_abajo: TBevel
      Width = 798
      Height = 0
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 45
    Width = 804
  end
  object padr_fram_superior: TPCPFrame [8]
    Tag = 99
    Left = 0
    Top = 47
    Width = 804
    Height = 99
    Align = alTop
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
    Boton_Visible = False
    TipoFrame = tfNinguno
    FlatBorder = True
    inline fram_ubicacion: Tffra_maqu_ubicacion
      Left = 3
      Top = 7
      Width = 798
      Height = 61
      Align = alClient
      TabOrder = 1
      inherited pane_tipo_ubicacion: TPanel
        Top = 61
        Width = 798
        Height = 0
        Visible = False
        inherited SCLDBLabel33: TSCLDBLabel
          FontActive.Name = 'Tahoma'
          DataSource = data_ventana
        end
        inherited comb_tipo_ubicacion: TPCPLookUpComboEdit
          Tag = -1
          DataSource = data_ventana
          Enabled = False
          OnChange = fram_ubicacioncomb_tipo_ubicacionChange
          HideButton = True
        end
      end
      inherited pane_ubic_propia: TPanel
        Top = 0
        Width = 798
        Height = 21
        inherited SCLDBLabel34: TSCLDBLabel
          Left = 33
          Top = 0
          Width = 144
          FontActive.Name = 'Tahoma'
          DataSource = data_ventana
        end
        inherited SCLDBLabel35: TSCLDBLabel
          Left = 386
          Top = 2
          FontActive.Name = 'Tahoma'
          Visible = False
          DataField = ''
          Field = ''
        end
        inherited comb_ubic_empresa: TPCPLookUpComboEdit
          Left = 179
          Top = 0
          DataSource = data_ventana
          OnChange = doActualizarSeleccion
        end
        inherited comb_ubic_area: TPCPLookUpComboEdit
          Left = 468
          Top = 2
          DataField = ''
          Visible = False
        end
        inherited SCLButton6: TTBXButton
          Tag = -1
          Top = 0
          Visible = False
        end
        inherited SCLButton7: TTBXButton
          Tag = -1
          Top = 1
          Visible = False
        end
      end
      inherited pane_ubic_externa: TPanel
        Top = 21
        Width = 798
        inherited SCLDBLabel36: TSCLDBLabel
          Left = 33
          Width = 144
          FontActive.Name = 'Tahoma'
          DataSource = data_ventana
        end
        inherited SCLDBLabel37: TSCLDBLabel
          Left = 33
          Width = 144
          FontActive.Name = 'Tahoma'
          DataSource = data_ventana
        end
        inherited SCLDBLabel1: TSCLDBLabel
          Left = 386
          FontActive.Name = 'Tahoma'
          DataSource = data_ventana
        end
        inherited comb_ubic_planta: TPCPLookUpComboEdit
          Left = 179
          DataSource = data_ventana
          OnChange = doActualizarSeleccion
        end
        inherited comb_ubic_seccion: TPCPLookUpComboEdit
          Left = 179
          DataSource = data_ventana
          OnChange = doActualizarSeleccion
        end
        inherited SCLButton8: TTBXButton
          Tag = -1
          Visible = False
        end
        inherited SCLButton9: TTBXButton
          Tag = -1
          Visible = False
        end
        inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
          Left = 468
          DataSource = data_ventana
          OnChange = doActualizarSeleccion
        end
        inherited SCLButton1: TTBXButton
          Tag = -1
          Visible = False
        end
      end
      inherited pane_ubic_bodega: TPanel
        Top = 61
        Width = 798
        Height = 0
        inherited SCLDBLabel39: TSCLDBLabel
          FontActive.Name = 'Tahoma'
          DataField = ''
          Field = ''
        end
        inherited comb_ubic_bodega: TPCPLookUpComboEdit
          DataField = ''
        end
      end
      inherited pane_ubic_otra: TPanel
        Top = 61
        Width = 798
        Height = 0
        inherited SCLDBLabel38: TSCLDBLabel
          FontActive.Name = 'Tahoma'
          DataField = ''
          Field = ''
        end
        inherited edit_ubic_otra_ubicacion: TdxDBEdit
          DataField = ''
        end
      end
    end
    object padr_pane_turno: TPanel
      Left = 3
      Top = 68
      Width = 798
      Height = 28
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object padr_labe_turno: TSCLDBLabel
        Left = 33
        Top = 4
        Width = 144
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
        FocusControl = comb_turno
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
      object comb_turno: TPCPLookUpComboEdit
        Left = 179
        Top = 4
        Width = 193
        Height = 21
        DropDownCount = 8
        Ctl3D = True
        DataField = 'cons_turno'
        DataSource = data_ventana
        KeyField = 'cons_turno'
        ListField = 'codi_turno'
        ListSource = data_turnos
        ParentCtl3D = False
        TabOrder = 0
        OnChange = doActualizarSeleccion
        DirectInput = False
      end
      object padr_pane_horas: TPanel
        Left = 373
        Top = 3
        Width = 372
        Height = 24
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        object padr_SCLDBLabel5: TSCLDBLabel
          Left = -5
          Top = 3
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
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Horas semanales:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object padr_SCLDBLabel6: TSCLDBLabel
          Left = 186
          Top = 3
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
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Horas diarias:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object edit_hora_semanales: TdxCurrencyEditPCP
          Left = 96
          Top = 2
          Width = 49
          Enabled = False
          TabOrder = 0
          Alignment = taRightJustify
          StyleController = padr_estilo
          DisplayFormat = ',0.00'
          StoredValues = 1
        end
        object edit_hora_diarias: TdxCurrencyEditPCP
          Left = 286
          Top = 2
          Width = 49
          Enabled = False
          TabOrder = 1
          Alignment = taRightJustify
          StyleController = padr_estilo
          DisplayFormat = ',0.00'
          StoredValues = 1
        end
      end
    end
    object padr_pane_separador: TPanel
      Left = 3
      Top = 3
      Width = 798
      Height = 4
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
    end
  end
  object pane_parametrizacion: TPCPFrame [9]
    Tag = 175
    Left = 0
    Top = 165
    Width = 804
    Height = 175
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
    Visible = False
    Caption = 'Parametrización'
    Titulo_Color = 16244694
    Boton_Visible = False
    FlatBorder = True
    object padr_SCLDBLabel14: TSCLDBLabel
      Left = 16
      Top = 27
      Width = 169
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
      FocusControl = comb_peri_pago
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Período de cálculo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object comb_peri_pago: TPCPLookUpComboEdit
      Left = 187
      Top = 27
      Width = 193
      Height = 21
      DropDownCount = 8
      EscapeClear = False
      Ctl3D = True
      KeyField = 'cons_peri_pago'
      ListField = 'nomb_peri_pago'
      ListSource = data_peri_pago
      ParentCtl3D = False
      TabOrder = 0
      OnChange = comb_peri_pagoChange
      DirectInput = False
    end
  end
  inline fram_mens_no_existe: Tffra_mens_atencion [10]
    Top = 146
    Width = 804
    TabOrder = 8
    Visible = False
    inherited padr_shap_top: TShape
      Width = 804
    end
    inherited padr_shap_bottom: TShape
      Width = 804
    end
    inherited padr_shap_right: TShape
      Left = 803
    end
    inherited fram_label: TAdvPanel
      Width = 802
      Cursor = crHandPoint
      OnClick = fram_mens_no_existefram_labelClick
      Text = 
        'No existe una parametrización de formas de pago para la ubicació' +
        'n seleccionada.  <B>De click aquí para crear una nueva.</B>'
      FullHeight = 15
      inherited data_label: TDBText
        Left = 918
      end
    end
  end
  inherited padr_acciones: TActionList [11]
    inherited padr_acti_buscar: TAction
      Enabled = False
    end
    inherited padr_acti_guardar: TDataSetPost
      DataSource = data_guardar
    end
    inherited padr_acti_cancelar: TDataSetCancel
      DataSource = data_guardar
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
      DataSource = data_guardar
    end
    inherited padr_acti_modificar: TDataSetEdit
      DataSource = data_guardar
    end
    inherited padr_acti_eliminar: TDataSetDelete
      Visible = True
      DataSource = data_guardar
    end
    inherited padr_acti_duplicar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_elim_todos: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_guar_cerrar: TDataSetPost
      Visible = False
      DataSource = data_guardar
    end
    inherited padr_acti_actualizar: TDataSetRefresh
      DataSource = data_guardar
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
  inherited Imagenes_Botones_Pequenos: TImageList [12]
  end
  inherited Variables: TSCLPropiedadesForm [13]
  end
  inherited Tabla_Ventana: TTable [14]
  end
  inherited padr_estilo: TdxEditStyleController [15]
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [16]
  end
  inherited padr_esti_panel: TAdvPanelStyler [17]
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [18]
  end
  inherited imag_pequenas: TImageList [19]
  end
  inherited padr_imag_tem1_colo: TImageList [20]
  end
  inherited data_ventana: TDataSource [22]
    DataSet = myTabla_Ventana
  end
  object myTabla_Ventana: TRxMemoryData
    FieldDefs = <>
    Left = 249
    Top = 7
    object myTabla_Ventanacons_ubic_tipo: TIntegerField
      FieldName = 'cons_ubic_tipo'
    end
    object myTabla_Ventanacons_empresa: TIntegerField
      FieldName = 'cons_empresa'
    end
    object myTabla_Ventanacons_planta: TIntegerField
      FieldName = 'cons_planta'
    end
    object myTabla_Ventanacons_plan_linea: TIntegerField
      FieldName = 'cons_plan_linea'
    end
    object myTabla_Ventanacons_line_seccion: TIntegerField
      FieldName = 'cons_line_seccion'
    end
    object myTabla_Ventanacons_turno: TIntegerField
      FieldName = 'cons_turno'
    end
  end
  object quer_turnos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM VIS_GLO_TURN_MINUTOS'
      'ORDER BY CODI_TURNO')
    Left = 296
    Top = 138
  end
  object data_turnos: TDataSource
    DataSet = quer_turnos
    Left = 328
    Top = 138
  end
  object quer_seleccionar: TQuery
    DatabaseName = 'data_base_pcp'
    Left = 856
    Top = 65
  end
  object tabl_guardar: TRxMemoryData
    FieldDefs = <>
    AfterInsert = tabl_guardarAfterInsert
    Left = 796
    Top = 65
    object tabl_guardarmyField: TIntegerField
      FieldName = 'myField'
    end
    object tabl_guardarspli_bonificacion: TIntegerField
      FieldName = 'spli_bonificacion'
    end
  end
  object data_guardar: TDataSource
    DataSet = tabl_guardar
    OnStateChange = data_guardarStateChange
    Left = 812
    Top = 29
  end
  object quer_elim_valores: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'DELETE FROM'
      'PCP_FORM_PAGO_VALORES'
      'WHERE CONS_FORM_PAGO = :CONS_FORM_PAGO')
    Left = 855
    Top = 95
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_FORM_PAGO'
        ParamType = ptInput
      end>
  end
  object quer_guar_valores: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'INSERT INTO'
      'PCP_FORM_PAGO_VALORES'
      '(CONS_FORM_PAGO, CONS_TABL_AUXI_DETALLE, VALO_PARAMETRO,'
      'PORC_PARAMETRO)'
      'VALUES'
      '(:CONS_FORM_PAGO, :CONS_TABL_AUXI_DETALLE, :VALO_PARAMETRO,'
      ':PORC_PARAMETRO)')
    Left = 883
    Top = 95
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_FORM_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_TABL_AUXI_DETALLE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALO_PARAMETRO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PORC_PARAMETRO'
        ParamType = ptInput
      end>
  end
  object quer_form_pago_parametros: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT FIRST 1 *'
      'FROM PCP_FORM_PAGO_PARAMETROS'
      '')
    Left = 828
    Top = 65
  end
  object quer_guar_maestro: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'INSERT INTO'
      'PCP_FORM_PAGO'
      '(CONS_FORM_PAGO, CONS_EMPRESA, CONS_PLANTA, '
      'CONS_PLAN_LINEA, CONS_LINE_SECCION,'
      'CONS_TURNO, CONS_SIS_FORM_PAGO, CONS_PERI_PAGO,'
      'SPLI_BONIFICACION)'
      'VALUES'
      '(:CONS_FORM_PAGO, :CONS_EMPRESA, :CONS_PLANTA, '
      ':CONS_PLAN_LINEA, :CONS_LINE_SECCION,'
      ':CONS_TURNO, :CONS_SIS_FORM_PAGO, :CONS_PERI_PAGO,'
      ':SPLI_BONIFICACION)')
    Left = 883
    Top = 65
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_FORM_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_PLANTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_PLAN_LINEA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_LINE_SECCION'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_TURNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_SIS_FORM_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_PERI_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SPLI_BONIFICACION'
        ParamType = ptInput
      end>
  end
  object quer_sele_valores: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM PCP_FORM_PAGO_VALORES'
      'WHERE CONS_FORM_PAGO = :CONS_FORM_PAGO'
      'ORDER BY SECU_PARAMETRO')
    Left = 912
    Top = 94
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_FORM_PAGO'
        ParamType = ptInput
      end>
  end
  object quer_peri_pago: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT'
      'CONS_PERI_PAGO, NOMB_PERI_PAGO'
      'FROM SIS_PERI_PAGO'
      'ORDER BY CONS_PERI_PAGO')
    Left = 624
    Top = 61
  end
  object data_peri_pago: TDataSource
    DataSet = quer_peri_pago
    Left = 656
    Top = 61
  end
  object quer_actu_maestro: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'UPDATE PCP_FORM_PAGO'
      'SET'
      'CONS_SIS_FORM_PAGO = :CONS_SIS_FORM_PAGO,'
      'CONS_PERI_PAGO = :CONS_PERI_PAGO,'
      'SPLI_BONIFICACION = :SPLI_BONIFICACION'
      'WHERE CONS_FORM_PAGO = :CONS_FORM_PAGO')
    Left = 912
    Top = 63
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_SIS_FORM_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_PERI_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SPLI_BONIFICACION'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_FORM_PAGO'
        ParamType = ptInput
      end>
  end
  object quer_elim_maestro: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'DELETE FROM PCP_FORM_PAGO'
      'WHERE CONS_FORM_PAGO = :CONS_FORM_PAGO')
    Left = 944
    Top = 63
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_FORM_PAGO'
        ParamType = ptInput
      end>
  end
end

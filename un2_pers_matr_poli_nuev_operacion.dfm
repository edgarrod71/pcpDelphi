inherited fn2_pers_matr_poli_nuev_operacion: Tfn2_pers_matr_poli_nuev_operacion
  Left = 368
  Top = 256
  Width = 413
  Height = 278
  BorderIcons = [biSystemMenu]
  Caption = 'Polifuncionalidad por operación'
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_dock_arriba: TTBXDock
    Width = 405
  end
  inherited padr_pane_arriba: TPanel
    Width = 405
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 405
    inherited padr_beve_1: TBevel
      Width = 399
    end
  end
  inherited padr_pane_info: TPanel
    Top = 220
    Width = 405
    inherited _DBFecha_Creacion: TdxDBEdit
      DataField = ''
      DataSource = nil
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      DataField = ''
      DataSource = nil
      Height = 18
      StoredValues = 64
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 212
    Width = 405
    inherited padr_beve_abajo: TBevel
      Width = 399
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 405
  end
  object Panel1: TPanel [6]
    Left = 0
    Top = 54
    Width = 405
    Height = 179
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 15
      Top = 8
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
      Caption = 'Código operación:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 15
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Operación:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object comb_codi_operacion: TPCPLookUpComboEdit
      Left = 120
      Top = 8
      Width = 145
      Height = 21
      DropDownCount = 8
      DataField = 'cons_oper_costura'
      DataSource = data_ventana
      KeyField = 'cons_oper_costura'
      ListField = 'codi_oper_costura'
      ListSource = data_oper_codigo
      TabOrder = 0
      OnChange = comb_codi_operacionChange
      DirectInput = False
    end
    object PCPLookUpComboEdit2: TPCPLookUpComboEdit
      Left = 120
      Top = 32
      Width = 273
      Height = 21
      DropDownCount = 8
      DataField = 'cons_oper_costura'
      DataSource = data_ventana
      KeyField = 'cons_oper_costura'
      ListField = 'nomb_oper_costura'
      ListSource = data_oper_nombre
      TabOrder = 1
      OnChange = comb_codi_operacionChange
      DirectInput = False
    end
    object PCPFrame1: TPCPFrame
      Tag = 113
      Left = 120
      Top = 64
      Width = 273
      Height = 113
      BevelOuter = bvNone
      BorderWidth = 2
      Constraints.MinHeight = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Caption = ' Calificación '
      Titulo_Color = 16244694
      TipoFrame = tfGrupo
      FlatBorder = True
      object TBXRadioButton1: TTBXRadioButton
        Tag = 3
        Left = 8
        Top = 32
        Width = 100
        Height = 17
        Caption = '&Excelente ( > 6)'
        TabOrder = 1
        OnChange = doAsignarCalificacion
      end
      object TBXRadioButton2: TTBXRadioButton
        Tag = 2
        Left = 8
        Top = 56
        Width = 100
        Height = 17
        Caption = '&Normal (4 - 6)'
        Checked = True
        TabOrder = 2
        TabStop = True
        OnChange = doAsignarCalificacion
      end
      object TBXRadioButton3: TTBXRadioButton
        Tag = 1
        Left = 8
        Top = 80
        Width = 103
        Height = 17
        Caption = '&Aceptable ( < 3)'
        TabOrder = 3
        OnChange = doAsignarCalificacion
      end
    end
  end
  inherited data_ventana: TDataSource
    DataSet = myTabla_ventana
  end
  inherited padr_acciones: TActionList
    OnUpdate = padr_accionesUpdate
    inherited padr_acti_buscar: TAction
      Enabled = False
    end
    inherited padr_acti_imprimir: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_ayuda: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_salir: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_aceptar: TAction
      Visible = True
      OnExecute = padr_acti_aceptarExecute
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
    inherited padr_acti_guar_cerrar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_actualizar: TDataSetRefresh
      Enabled = False
      Visible = False
    end
  end
  object myTabla_ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_oper_costura'
        DataType = ftInteger
      end
      item
        Name = 'calificacion'
        DataType = ftInteger
      end
      item
        Name = 'cons_personal'
        DataType = ftInteger
      end>
    AfterInsert = myTabla_ventanaAfterInsert
    Left = 218
    Top = 4
    object myTabla_ventanacons_oper_costura: TIntegerField
      FieldName = 'cons_oper_costura'
    end
    object myTabla_ventanacalificacion: TIntegerField
      FieldName = 'calificacion'
    end
    object myTabla_ventanacons_personal: TIntegerField
      FieldName = 'cons_personal'
    end
  end
  object quer_oper_codigo: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_oper_costura, codi_oper_costura'
      'from pcp_oper_costura'
      'order by codi_oper_costura')
    Left = 368
    Top = 46
  end
  object data_oper_codigo: TDataSource
    DataSet = quer_oper_codigo
    Left = 400
    Top = 44
  end
  object quer_oper_nombre: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_oper_costura, nomb_oper_costura'
      'from pcp_oper_costura'
      'order by nomb_oper_costura')
    Left = 368
    Top = 78
  end
  object data_oper_nombre: TDataSource
    DataSet = quer_oper_nombre
    Left = 400
    Top = 76
  end
  object quer_upda_polifuncionalidad: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Execute procedure'
      'PRO_PCP_PERS_MATR_POLI_OPER_IU'
      '(:cons_personal, :cons_oper_costura, :calificacion)')
    Left = 369
    Top = 127
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_personal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cons_oper_costura'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'calificacion'
        ParamType = ptUnknown
      end>
  end
end

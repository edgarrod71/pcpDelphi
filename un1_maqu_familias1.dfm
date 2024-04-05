inherited fn1_maqu_familias1: Tfn1_maqu_familias1
  Left = 222
  Top = 220
  Width = 624
  Height = 505
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 616
  end
  inherited padr_shap_xp_down: TShape
    Top = 468
    Width = 616
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 616
  end
  inherited padr_pane_arriba: TPanel
    Width = 616
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 616
    TabOrder = 4
    inherited padr_beve_1: TBevel
      Width = 610
    end
    inherited padr_sepa_new: TShape
      Width = 610
    end
  end
  inherited padr_pane_info: TPanel
    Top = 477
    Width = 616
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 253
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 275
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 253
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 275
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object PCaracteristicas: TPanel [6]
    Left = 0
    Top = 259
    Width = 616
    Height = 209
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 6
    object TBXDock1: TTBXDock
      Left = 0
      Top = 0
      Width = 616
      Height = 26
      object TBXToolbar1: TTBXToolbar
        Left = 0
        Top = 0
        Caption = 'TBXToolbar1'
        Stretch = True
        TabOrder = 0
        object TBXItem2: TTBXItem
          Action = Acti_Nuev_Tipo_Caracteristica
          DisplayMode = nbdmImageAndText
          ImageIndex = 0
          Images = _fMDI.imag_pequenas
          InheritOptions = False
        end
        object TBXItem1: TTBXItem
          Action = Acti_Elim_Tipo_Caracterisitica
          DisplayMode = nbdmImageAndText
          ImageIndex = 2
          Images = _fMDI.imag_pequenas
          InheritOptions = False
        end
      end
    end
    object DBAsignados: TdxDBGrid
      Left = 0
      Top = 26
      Width = 616
      Height = 183
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CONS_TIPO_CARACTERISTICA'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      BorderStyle = bsNone
      PopupMenu = PMCaracteristicas
      TabOrder = 1
      DataSource = DSQCaracteristicas_Asignadas
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
      object DBAsignadosCONS_TIPO_CARACTERISTICA: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_TIPO_CARACTERISTICA'
      end
      object DBAsignadosCODI_TIPO_CARACTERISTICA: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_TIPO_CARACTERISTICA'
      end
      object DBAsignadosNOMB_TIPO_CARACTERISTICA: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_TIPO_CARACTERISTICA'
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 469
    Width = 616
    TabOrder = 5
    inherited padr_beve_abajo: TBevel
      Width = 610
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 616
    TabOrder = 0
  end
  object Panel1: TPanel [9]
    Left = 0
    Top = 54
    Width = 616
    Height = 205
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 7
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
      FocusControl = CBTipo
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tipo de recurso:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_RECU_TIPO'
      Field = 'CONS_RECU_TIPO'
    end
    object SCLDBLabel2: TSCLDBLabel
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
      FocusControl = DBCodigo
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Código familia:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CODI_RECU_FAMILIA'
      Field = 'CODI_RECU_FAMILIA'
    end
    object SCLDBLabel3: TSCLDBLabel
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
      FocusControl = DBFamilia
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Familia:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_RECU_FAMILIA'
      Field = 'NOMB_RECU_FAMILIA'
    end
    object SCLDBLabel4: TSCLDBLabel
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
      FocusControl = SESuplemento
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = '% suplemento:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'PORC_SUPLEMENTO'
      Field = 'PORC_SUPLEMENTO'
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 10
      Top = 116
      Width = 100
      Height = 62
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = DBCaracteristicas
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Observaciones:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CARACTERISTICAS'
      Field = 'CARACTERISTICAS'
    end
    object SCLDBLabel6: TSCLDBLabel
      Left = 10
      Top = 6
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
      FocusControl = CBGrupo
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Grupo de recurso:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_RECU_GRUPO'
      Field = 'CONS_RECU_GRUPO'
    end
    object DBCodigo: TdxDBEdit
      Left = 112
      Top = 46
      Width = 121
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_RECU_FAMILIA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object CBTipo: TPCPLookUpComboEdit
      Left = 112
      Top = 26
      Width = 185
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_RECU_TIPO'
      DataSource = data_ventana
      KeyField = 'CONS_RECU_TIPO'
      ListField = 'NOMB_RECU_TIPO'
      ListSource = DSQTipos
      ParentCtl3D = False
      TabOrder = 1
      DirectInput = False
    end
    object DBFamilia: TdxDBEdit
      Left = 112
      Top = 66
      Width = 185
      TabOrder = 2
      DataField = 'NOMB_RECU_FAMILIA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object SESuplemento: TdxDBSpinEdit
      Left = 112
      Top = 86
      Width = 57
      TabOrder = 3
      DataField = 'PORC_SUPLEMENTO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object DBCaracteristicas: TdxDBMemo
      Left = 112
      Top = 116
      Width = 369
      TabOrder = 4
      DataField = 'CARACTERISTICAS'
      DataSource = data_ventana
      StyleController = padr_estilo
      Height = 62
    end
    object SCLButton1: TTBXButtonSCL
      Left = 299
      Top = 28
      Width = 21
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      SmartFocus = False
      TabOrder = 5
      TabStop = False
    end
    object CBGrupo: TPCPLookUpComboEdit
      Left = 112
      Top = 6
      Width = 185
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_RECU_GRUPO'
      DataSource = data_ventana
      KeyField = 'CONS_RECU_GRUPO'
      ListField = 'NOMB_RECU_GRUPO'
      ListSource = DSQGrupos
      ParentCtl3D = False
      TabOrder = 6
      DirectInput = False
    end
    object SCLButton2: TTBXButtonSCL
      Left = 299
      Top = 6
      Width = 21
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      SmartFocus = False
      TabOrder = 7
      TabStop = False
    end
  end
  inherited padr_acciones: TActionList
    object Acti_Nuev_Tipo_Caracteristica: TAction
      Caption = 'Nuevo Tipo de Característica'
      OnExecute = Acti_Nuev_Tipo_CaracteristicaExecute
    end
    object Acti_Elim_Tipo_Caracterisitica: TAction
      Caption = 'Eliminar tipo de Característica'
      OnExecute = Acti_Elim_Tipo_CaracterisiticaExecute
    end
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_RECU_FAMILIAS'
    object Tabla_VentanaCONS_RECU_FAMILIA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No. Familia'
      FieldName = 'CONS_RECU_FAMILIA'
      Required = True
    end
    object Tabla_VentanaCONS_RECU_TIPO: TIntegerField
      DisplayLabel = 'Tipo de recurso'
      FieldName = 'CONS_RECU_TIPO'
      Required = True
    end
    object Tabla_VentanaCONS_RECU_GRUPO: TIntegerField
      DisplayLabel = 'Grupo de recurso'
      FieldName = 'CONS_RECU_GRUPO'
      Required = True
    end
    object Tabla_VentanaCODI_RECU_FAMILIA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_RECU_FAMILIA'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_RECU_FAMILIA: TStringField
      DisplayLabel = 'Familia'
      FieldName = 'NOMB_RECU_FAMILIA'
      Required = True
      Size = 60
    end
    object Tabla_VentanaCARACTERISTICAS: TStringField
      DisplayLabel = 'Características'
      FieldName = 'CARACTERISTICAS'
      Size = 240
    end
    object Tabla_VentanaPORC_SUPLEMENTO: TSmallintField
      DisplayLabel = '% Suplemento'
      FieldName = 'PORC_SUPLEMENTO'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
  end
  object DSQTipos: TDataSource
    AutoEdit = False
    DataSet = QTipos
    Left = 384
    Top = 96
  end
  object DSQGrupos: TDataSource
    AutoEdit = False
    DataSet = QGrupos
    Left = 384
    Top = 64
  end
  object QTipos: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQGrupos
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_RECU_TIPOS'
      'WHERE CONS_RECU_GRUPO = :CONS_RECU_GRUPO'
      'ORDER BY NOMB_RECU_TIPO')
    Left = 352
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_RECU_GRUPO'
        ParamType = ptUnknown
      end>
  end
  object QGrupos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_RECU_GRUPOS'
      'ORDER BY NOMB_RECU_GRUPO')
    Left = 352
    Top = 64
  end
  object QCaracteristicas_Asignadas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT C.CONS_TIPO_CARACTERISTICA, C.CODI_TIPO_CARACTERISTICA,'
      ' C.NOMB_TIPO_CARACTERISTICA, T.CONS_RECU_TIPO_CARACTERISTICA'
      'FROM GLO_TIPO_CARACTERISTICAS C, GLO_RECU_TIPO_CARACTERISTICAS T'
      'WHERE C.CONS_TIPO_CARACTERISTICA = T.CONS_TIPO_CARACTERISTICA'
      ' AND CONS_RECU_FAMILIA = :CONS_RECU_FAMILIA'
      'ORDER BY NOMB_TIPO_CARACTERISTICA')
    Left = 31
    Top = 319
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_RECU_FAMILIA'
        ParamType = ptUnknown
      end>
    object QCaracteristicas_AsignadasCONS_TIPO_CARACTERISTICA: TIntegerField
      FieldName = 'CONS_TIPO_CARACTERISTICA'
    end
    object QCaracteristicas_AsignadasCODI_TIPO_CARACTERISTICA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_TIPO_CARACTERISTICA'
      Size = 12
    end
    object QCaracteristicas_AsignadasNOMB_TIPO_CARACTERISTICA: TStringField
      DisplayLabel = 'Tipo de Característica'
      FieldName = 'NOMB_TIPO_CARACTERISTICA'
      Size = 60
    end
    object QCaracteristicas_AsignadasCONS_RECU_TIPO_CARACTERISTICA: TIntegerField
      FieldName = 'CONS_RECU_TIPO_CARACTERISTICA'
      Origin = 
        'DATA_BASE_PCP.GLO_RECU_TIPO_CARACTERISTICAS.CONS_RECU_TIPO_CARAC' +
        'TERISTICA'
    end
  end
  object DSQCaracteristicas_Asignadas: TDataSource
    AutoEdit = False
    DataSet = QCaracteristicas_Asignadas
    Left = 63
    Top = 319
  end
  object QEliminar_Caracteristica: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQCaracteristicas_Asignadas
    SQL.Strings = (
      'DELETE FROM GLO_RECU_TIPO_CARACTERISTICAS'
      
        'WHERE CONS_RECU_TIPO_CARACTERISTICA = :CONS_RECU_TIPO_CARACTERIS' +
        'TICA')
    Left = 33
    Top = 351
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_RECU_TIPO_CARACTERISTICA'
        ParamType = ptUnknown
      end>
  end
  object PMCaracteristicas: TTBXPopupMenu
    Left = 128
    Top = 313
    object TBXItem4: TTBXItem
      Action = Acti_Nuev_Tipo_Caracteristica
      ImageIndex = 0
      Images = _fMDI.imag_pequenas
    end
    object TBXItem3: TTBXItem
      Action = Acti_Elim_Tipo_Caracterisitica
      ImageIndex = 2
      Images = _fMDI.imag_pequenas
    end
  end
end

object fn1_refe_fich_00Edicion: Tfn1_refe_fich_00Edicion
  Left = 114
  Top = 349
  Width = 712
  Height = 286
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pane_informacion: TPCPFrame
    Tag = 145
    Left = 0
    Top = 19
    Width = 704
    Height = 23
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
    Titulo_Comprimido = True
    FlatBorder = True
    object padr_labe_nomb_referencia: TSCLDBLabel
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
      Caption = 'Nombre:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object padr_labe_marca: TSCLDBLabel
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Marca:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object padr_labe_grupo: TSCLDBLabel
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Grupo:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object padr_labe_estilo: TSCLDBLabel
      Left = 270
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Estilo:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object padr_labe_linea: TSCLDBLabel
      Left = 270
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Línea:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object padr_labe_tallas: TSCLDBLabel
      Left = 269
      Top = 94
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
      FocusControl = padr_edit_tallas
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tallas:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'TALLAS'
      Field = 'TALLAS'
    end
    object padr_labe_tall_muestra: TSCLDBLabel
      Left = 10
      Top = 115
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
      FocusControl = padr_edit_tall_muestra
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Talla de muestra:'
      Transparent = True
      DataSource = padr_data_fich_Tecnicas
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'TALL_MUESTRA'
      Field = 'TALL_MUESTRA'
    end
    object padr_labe_grup_tallas: TSCLDBLabel
      Left = 10
      Top = 95
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
      Caption = 'Grupo de tallas:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_REFE_GRUP_TALLAS'
      Field = 'CONS_REFE_GRUP_TALLAS'
    end
    object padr_edit_nomb_referencia: TdxDBEdit
      Left = 112
      Top = 26
      Width = 261
      Enabled = False
      TabOrder = 1
      TabStop = False
      DataField = 'NOMB_REFERENCIA'
      DataSource = padr_data_info_Referencia
      ReadOnly = True
      StoredValues = 64
    end
    object padr_edit_marca: TdxDBEdit
      Left = 112
      Top = 46
      Width = 130
      Enabled = False
      TabOrder = 2
      TabStop = False
      DataField = 'NOMB_REFE_MARCA'
      DataSource = padr_data_info_Referencia
      ReadOnly = True
      StoredValues = 64
    end
    object padr_edit_grupo: TdxDBEdit
      Left = 112
      Top = 66
      Width = 130
      Enabled = False
      TabOrder = 3
      TabStop = False
      DataField = 'NOMB_REFE_GRUPO'
      DataSource = padr_data_info_Referencia
      ReadOnly = True
      StoredValues = 64
    end
    object padr_edit_estilo: TdxDBEdit
      Left = 372
      Top = 66
      Width = 130
      Enabled = False
      TabOrder = 4
      TabStop = False
      DataField = 'NOMB_REFE_ESTADO'
      DataSource = padr_data_info_Referencia
      ReadOnly = True
      StoredValues = 64
    end
    object padr_edit_linea: TdxDBEdit
      Left = 372
      Top = 46
      Width = 130
      Enabled = False
      TabOrder = 5
      TabStop = False
      DataField = 'NOMB_REFE_LINEA'
      DataSource = padr_data_info_Referencia
      ReadOnly = True
      StoredValues = 64
    end
    object padr_edit_tallas: TdxDBEdit
      Left = 371
      Top = 94
      Width = 391
      Enabled = False
      TabOrder = 6
      TabStop = False
      DataField = 'TALLAS'
      DataSource = padr_data_fich_Tecnicas
      ReadOnly = True
      StoredValues = 64
    end
    object padr_edit_tall_muestra: TdxDBEdit
      Left = 112
      Top = 115
      Width = 81
      TabOrder = 7
      TabStop = False
      DataField = 'TALL_MUESTRA'
      DataSource = padr_data_fich_Tecnicas
      ReadOnly = False
      StoredValues = 64
    end
    object padr_edit_grup_tallas: TdxDBEdit
      Left = 112
      Top = 95
      Width = 130
      Enabled = False
      TabOrder = 8
      TabStop = False
      DataField = 'CONS_REFE_GRUP_TALLAS'
      DataSource = padr_data_info_Referencia
      ReadOnly = True
      StoredValues = 64
    end
  end
  object padr_pane_deta_ficha: TPCPFrame
    Tag = 210
    Left = 0
    Top = 42
    Width = 704
    Height = 217
    Align = alClient
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Titulo_Color = 16244694
    Boton_Visible = False
    FlatBorder = True
  end
  inline pane_mensaje: Tffra_mens_atencion
    Width = 704
    TabOrder = 2
    inherited padr_shap_top: TShape
      Width = 704
    end
    inherited padr_shap_bottom: TShape
      Width = 704
    end
    inherited padr_shap_right: TShape
      Left = 703
    end
    inherited fram_label: TAdvPanel
      Width = 702
      FullHeight = 15
      inherited boto_Salir: TSpeedButton
        Visible = True
        OnClick = pane_mensajeboto_SalirClick
      end
    end
  end
  object padr_quer_info_Referencia: TQuery
    BeforeOpen = padr_quer_info_ReferenciaBeforeOpen
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      ':cons_referencia')
    Left = 528
    Top = 33
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_referencia'
        ParamType = ptUnknown
      end>
  end
  object padr_data_info_Referencia: TDataSource
    DataSet = padr_quer_info_Referencia
    Left = 556
    Top = 33
  end
  object padr_acciones: TActionList
    Left = 44
    Top = 13
    object padr_acti_nuevo: TAction
      Category = 'acciones'
    end
    object padr_acti_editar: TAction
      Category = 'acciones'
    end
    object padr_acti_eliminar: TAction
      Category = 'acciones'
    end
    object padr_acti_guardar: TAction
      Category = 'acciones'
    end
    object padr_acti_cancelar: TAction
      Category = 'acciones'
    end
    object padr_acti_AfterEjecutar: TAction
      Category = 'Eventos'
    end
    object padr_acti_BeforeEjecutar: TAction
      Category = 'Eventos'
    end
    object padr_acti_BeforePost: TAction
      Category = 'Eventos'
    end
    object padr_acti_AfterPost: TAction
      Category = 'Eventos'
    end
  end
  object padr_tabl_fich_tecnicas: TkbmMemTable
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
    AfterInsert = padr_tabl_fich_tecnicasAfterInsert
    BeforePost = padr_tabl_fich_tecnicasBeforePost
    AfterPost = doActualizarPadre
    AfterCancel = doActualizarPadre
    AfterDelete = doActualizarPadre
    Left = 16
    Top = 42
    object padr_tabl_fich_tecnicasCONS_REFE_FICHA: TIntegerField
      FieldName = 'CONS_REFE_FICHA'
      Required = True
    end
    object padr_tabl_fich_tecnicasCONS_REFE_TIPO_FICHA: TIntegerField
      FieldName = 'CONS_REFE_TIPO_FICHA'
      Required = True
    end
    object padr_tabl_fich_tecnicasANULADA: TIntegerField
      FieldName = 'ANULADA'
    end
    object padr_tabl_fich_tecnicasCONS_REFERENCIA: TIntegerField
      FieldName = 'CONS_REFERENCIA'
      Required = True
    end
    object padr_tabl_fich_tecnicasCONS_REFE_VARIACION: TIntegerField
      FieldName = 'CONS_REFE_VARIACION'
      Required = True
    end
    object padr_tabl_fich_tecnicasCODI_REFERENCIA: TStringField
      FieldName = 'CODI_REFERENCIA'
      Required = True
      Size = 12
    end
    object padr_tabl_fich_tecnicasCODI_INTE_REFERENCIA: TStringField
      FieldName = 'CODI_INTE_REFERENCIA'
      Size = 12
    end
    object padr_tabl_fich_tecnicasCONS_REFE_LINEA: TIntegerField
      FieldName = 'CONS_REFE_LINEA'
      Required = True
    end
    object padr_tabl_fich_tecnicasCONS_REFE_EDAD: TIntegerField
      FieldName = 'CONS_REFE_EDAD'
      Required = True
    end
    object padr_tabl_fich_tecnicasCONS_REFE_ESTILO: TIntegerField
      FieldName = 'CONS_REFE_ESTILO'
      Required = True
    end
    object padr_tabl_fich_tecnicasCONS_REFE_GRUPO: TIntegerField
      FieldName = 'CONS_REFE_GRUPO'
      Required = True
    end
    object padr_tabl_fich_tecnicasCONS_REFE_TEMPORADA: TIntegerField
      FieldName = 'CONS_REFE_TEMPORADA'
      Required = True
    end
    object padr_tabl_fich_tecnicasCONS_REFE_MARCA: TIntegerField
      FieldName = 'CONS_REFE_MARCA'
      Required = True
    end
    object padr_tabl_fich_tecnicasNOMB_REFERENCIA: TStringField
      FieldName = 'NOMB_REFERENCIA'
      Size = 60
    end
    object padr_tabl_fich_tecnicasCONS_REFE_GRUP_TALLAS: TIntegerField
      FieldName = 'CONS_REFE_GRUP_TALLAS'
      Required = True
    end
    object padr_tabl_fich_tecnicasTALLAS: TStringField
      FieldName = 'TALLAS'
      Size = 240
    end
    object padr_tabl_fich_tecnicasTALL_MUESTRA: TStringField
      FieldName = 'TALL_MUESTRA'
      Size = 12
    end
    object padr_tabl_fich_tecnicasDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 240
    end
  end
  object padr_data_fich_Tecnicas: TDataSource
    DataSet = padr_tabl_fich_tecnicas
    OnStateChange = padr_data_fich_TecnicasStateChange
    Left = 44
    Top = 42
  end
  object padr_tabl_fich_Detalles: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'CONS_REFE_FICHA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'IMAGEN'
        DataType = ftBlob
        Size = 1
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
    AfterInsert = padr_tabl_fich_DetallesAfterInsert
    AfterEdit = padr_tabl_fich_DetallesAfterInsert
    Left = 16
    Top = 70
    object padr_tabl_fich_DetallesCONS_REFE_FICHA: TIntegerField
      FieldName = 'CONS_REFE_FICHA'
      Required = True
    end
  end
  object data_tabl_fich_Detalles: TDataSource
    DataSet = padr_tabl_fich_Detalles
    Left = 45
    Top = 70
  end
  object padr_quer_tallas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT TALLAS'
      'FROM CON_GLO_GRUP_TALLAS'
      'WHERE CONS_GRUP_TALLAS = :CONS_REFE_GRUP_TALLAS')
    Left = 528
    Top = 61
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_REFE_GRUP_TALLAS'
        ParamType = ptUnknown
      end>
  end
  object padr_quer_sele_maestro: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_REFE_FICHA, CONS_REFE_TIPO_FICHA, ANULADA,'
      'CONS_REFE_VARIACION, CODI_REFERENCIA, CODI_INTE_REFERENCIA,'
      'CONS_REFE_LINEA, CONS_REFE_EDAD, CONS_REFE_ESTILO,'
      'CONS_REFE_GRUPO, CONS_REFE_TEMPORADA, CONS_REFE_MARCA,'
      'NOMB_REFERENCIA, CONS_REFE_GRUP_TALLAS, TALLAS,'
      'TALL_MUESTRA, DESCRIPCION'
      'FROM PCP_REFE_FICH_TECNICAS'
      'WHERE CONS_REFE_FICHA = :CONS_REFE_FICHA')
    Left = 556
    Top = 61
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFE_FICHA'
        ParamType = ptInput
      end>
  end
  object quer_guar_maestro: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = padr_data_fich_Tecnicas
    SQL.Strings = (
      'EXECUTE PROCEDURE PRO_PCP_REFE_FICH_TECNICAS_IU('
      ':CONS_REFE_FICHA, :CONS_REFE_TIPO_FICHA, :ANULADA,'
      ':CONS_REFE_VARIACION, :CODI_REFERENCIA, :CODI_INTE_REFERENCIA,'
      ':CONS_REFE_LINEA, :CONS_REFE_EDAD, :CONS_REFE_ESTILO,'
      ':CONS_REFE_GRUPO, :CONS_REFE_TEMPORADA, :CONS_REFE_MARCA,'
      ':NOMB_REFERENCIA, :CONS_REFE_GRUP_TALLAS, :TALLAS,'
      ':TALL_MUESTRA, :DESCRIPCION)')
    Left = 584
    Top = 61
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_REFE_FICHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_REFE_TIPO_FICHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ANULADA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_REFE_VARIACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODI_REFERENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODI_INTE_REFERENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_REFE_LINEA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_REFE_EDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_REFE_ESTILO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_REFE_GRUPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_REFE_TEMPORADA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_REFE_MARCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMB_REFERENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_REFE_GRUP_TALLAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TALLAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TALL_MUESTRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCION'
        ParamType = ptUnknown
      end>
  end
end

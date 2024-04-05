inherited FN1_Pers_Bajas1: TFN1_Pers_Bajas1
  Left = 230
  Top = 164
  Width = 728
  Height = 538
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 720
  end
  inherited padr_shap_xp_down: TShape
    Top = 501
    Width = 720
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 720
    inherited padr_barra: TTBXToolbar
      object TBXItem1: TTBXItem [0]
        Action = Acti_Modi_Bajas
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 720
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 720
    inherited padr_beve_1: TBevel
      Width = 714
    end
    inherited padr_sepa_new: TShape
      Width = 714
    end
  end
  inherited padr_pane_info: TPanel
    Top = 510
    Width = 720
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 407
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 429
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 407
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 429
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object PCPFrame2: TPCPFrame [6]
    Left = 361
    Top = 54
    Width = 359
    Height = 447
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
    TabOrder = 5
    Caption = 'Datos Modificación'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    object SCLDBLabel40: TSCLDBLabel
      Left = 8
      Top = 45
      Width = 113
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
      FocusControl = CBTipo_Documento
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tipo Documento:'
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      Field = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
    end
    object SCLDBLabel42: TSCLDBLabel
      Left = 8
      Top = 67
      Width = 113
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
      FocusControl = ENumero_Documento
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Número Documento:'
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NUME_DOCUMENTO'
      Field = 'NUME_DOCUMENTO'
    end
    object SCLDBLabel64: TSCLDBLabel
      Left = 8
      Top = 89
      Width = 113
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
      FocusControl = DBInicial
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha Inicial:'
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'FECH_INICIAL'
      Field = 'FECH_INICIAL'
    end
    object SCLDBLabel68: TSCLDBLabel
      Left = 8
      Top = 176
      Width = 113
      Height = 65
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = DBObservaciones
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Observaciones'
      Layout = tlTop
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'OBSERVACIONES'
      Field = 'OBSERVACIONES'
    end
    object SCLDBLabel65: TSCLDBLabel
      Left = 8
      Top = 111
      Width = 113
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
      FocusControl = DBFinal
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha Final:'
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'FECH_FINAL'
      Field = 'FECH_FINAL'
    end
    object SCLDBLabel1: TSCLDBLabel
      Left = 8
      Top = 23
      Width = 113
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
      FocusControl = CBTipo_Movimiento
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tipo Baja:'
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_PERS_TIPO_MOVIMIENTO'
      Field = 'CONS_PERS_TIPO_MOVIMIENTO'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 8
      Top = 133
      Width = 113
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
      FocusControl = CBSolicita
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Solicitado Por:'
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_SOLICITA'
      Field = 'CONS_SOLICITA'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 8
      Top = 154
      Width = 113
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
      FocusControl = CBAprobo
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Aprobado Por:'
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_APROBO'
      Field = 'CONS_APROBO'
    end
    object CBTipo_Documento: TPCPLookUpComboEdit
      Left = 123
      Top = 45
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      DataSource = DSMovimiento
      KeyField = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      ListField = 'NOMB_PERS_MOVI_TIPO_DOCUMENTO'
      ListSource = DSQTipo_Documento
      ParentCtl3D = False
      TabOrder = 2
      DirectInput = False
    end
    object SCLButton27: TTBXButtonSCL
      Left = 272
      Top = 46
      Width = 20
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      SmartFocus = False
      TabOrder = 11
      TabStop = False
    end
    object ENumero_Documento: TdxDBEdit
      Left = 123
      Top = 67
      Width = 145
      TabOrder = 3
      DataField = 'NUME_DOCUMENTO'
      DataSource = DSMovimiento
      StyleController = padr_estilo
    end
    object DBInicial: TdxDBDateEdit
      Left = 123
      Top = 89
      Width = 145
      TabOrder = 4
      DataField = 'FECH_INICIAL'
      DataSource = DSMovimiento
      StyleController = padr_estilo
    end
    object DBObservaciones: TdxDBEdit
      Left = 123
      Top = 176
      Width = 222
      TabOrder = 8
      AutoSize = False
      DataField = 'OBSERVACIONES'
      DataSource = DSMovimiento
      StyleController = padr_estilo
      Height = 65
    end
    object DBFinal: TdxDBDateEdit
      Left = 123
      Top = 111
      Width = 145
      TabOrder = 5
      DataField = 'FECH_FINAL'
      DataSource = DSMovimiento
      StyleController = padr_estilo
    end
    object CBTipo_Movimiento: TPCPLookUpComboEdit
      Left = 123
      Top = 23
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'CONS_PERS_TIPO_MOVIMIENTO'
      DataSource = DSMovimiento
      KeyField = 'CONS_PERS_TIPO_MOVIMIENTO'
      ListField = 'NOMB_PERS_TIPO_MOVIMIENTO'
      ListSource = DSQTipo_Movimiento
      ParentCtl3D = False
      TabOrder = 1
      DirectInput = False
    end
    object SCLButton1: TTBXButtonSCL
      Left = 272
      Top = 24
      Width = 20
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      SmartFocus = False
      TabOrder = 12
      TabStop = False
    end
    object CBSolicita: TPCPLookUpComboEdit
      Left = 123
      Top = 133
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'CONS_SOLICITA'
      DataSource = DSMovimiento
      KeyField = 'CONS_PERSONAL'
      ListField = 'NOMB_COMPLETO'
      ListSource = DSQPersonal
      ParentCtl3D = False
      TabOrder = 6
      DirectInput = False
    end
    object SCLButton2: TTBXButtonSCL
      Left = 272
      Top = 132
      Width = 20
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      SmartFocus = False
      TabOrder = 9
      TabStop = False
    end
    object SCLButton3: TTBXButtonSCL
      Left = 272
      Top = 153
      Width = 20
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      SmartFocus = False
      TabOrder = 10
      TabStop = False
    end
    object CBAprobo: TPCPLookUpComboEdit
      Left = 123
      Top = 154
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'CONS_APROBO'
      DataSource = DSMovimiento
      KeyField = 'CONS_PERSONAL'
      ListField = 'NOMB_COMPLETO'
      ListSource = DSQPersonal
      ParentCtl3D = False
      TabOrder = 7
      DirectInput = False
    end
  end
  object PCPFrame1: TPCPFrame [7]
    Left = 0
    Top = 54
    Width = 361
    Height = 447
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
    TabOrder = 6
    Caption = 'Personal Seleccionado'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    object DBPersonal: TdxDBGrid
      Left = 2
      Top = 21
      Width = 357
      Height = 424
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CONS_PERSONAL'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      BorderStyle = bsNone
      Color = clInfoBk
      TabOrder = 1
      DataSource = DSTemporal
      Filter.Criteria = {00000000}
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
      object DBPersonalCONS_PERSONAL: TdxDBGridMaskColumn
        Visible = False
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_PERSONAL'
      end
      object DBPersonalCODI_PERSONAL: TdxDBGridMaskColumn
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_PERSONAL'
      end
      object DBPersonalNOMB_COMPLETO: TdxDBGridMaskColumn
        Width = 312
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_COMPLETO'
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 502
    Width = 720
    inherited padr_beve_abajo: TBevel
      Width = 714
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 720
    TabOrder = 7
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Visible = False
    end
    inherited padr_acti_nuevo: TDataSetInsert
      Enabled = False
      Visible = False
    end
    inherited padr_acti_guar_cerrar: TDataSetPost
      Visible = False
    end
    object Acti_Modi_Bajas: TAction
      ImageIndex = 4
      OnExecute = Acti_Modi_BajasExecute
    end
  end
  inherited Imagenes_Botones_Pequenos: TImageList
    Left = 689
    Top = 40
  end
  inherited Variables: TSCLPropiedadesForm
    Left = 688
    Top = 12
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_PERS_MOVIMIENTOS'
    object Tabla_VentanaCONS_PERS_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_PERS_MOVIMIENTO'
      Required = True
    end
    object Tabla_VentanaCONS_PERSONAL: TIntegerField
      FieldName = 'CONS_PERSONAL'
      Required = True
    end
    object Tabla_VentanaCONS_PERS_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_PERS_TIPO_MOVIMIENTO'
      Required = True
    end
    object Tabla_VentanaFECH_INICIAL: TDateTimeField
      FieldName = 'FECH_INICIAL'
      Required = True
    end
    object Tabla_VentanaFECH_FINAL: TDateTimeField
      FieldName = 'FECH_FINAL'
    end
    object Tabla_VentanaCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField
      FieldName = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      Required = True
    end
    object Tabla_VentanaNUME_DOCUMENTO: TStringField
      FieldName = 'NUME_DOCUMENTO'
      Size = 12
    end
    object Tabla_VentanaOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
  inherited padr_estilo: TdxEditStyleController
    Left = 658
    Top = 106
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController
    Left = 690
    Top = 106
  end
  inherited padr_esti_panel: TAdvPanelStyler
    Left = 658
    Top = 74
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler
    Left = 690
    Top = 74
  end
  inherited imag_pequenas: TImageList
    Left = 659
    Top = 42
  end
  inherited padr_pict_container: TPictureContainer
    Left = 690
    Top = 141
  end
  object DSQTipo_Documento: TDataSource
    AutoEdit = False
    DataSet = QTipo_Documento
    Left = 104
    Top = 253
  end
  object DSQTipo_Movimiento: TDataSource
    AutoEdit = False
    DataSet = QTipo_Movimiento
    Left = 104
    Top = 220
  end
  object QTipo_Movimiento: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_TIPO_MOVIMIENTO'
      'WHERE CONS_FAMI_MOVIMIENTO IN (3, 4)')
    Left = 73
    Top = 220
    object QTipo_MovimientoCONS_PERS_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_PERS_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.CONS_PERS_TIPO_MOVIMIENTO'
    end
    object QTipo_MovimientoCONS_FAMI_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_FAMI_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.CONS_FAMI_MOVIMIENTO'
    end
    object QTipo_MovimientoCODI_PERS_TIPO_MOVIMIENTO: TStringField
      FieldName = 'CODI_PERS_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.CODI_PERS_TIPO_MOVIMIENTO'
      Size = 12
    end
    object QTipo_MovimientoNOMB_PERS_TIPO_MOVIMIENTO: TStringField
      FieldName = 'NOMB_PERS_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.NOMB_PERS_TIPO_MOVIMIENTO'
      Size = 60
    end
    object QTipo_MovimientoFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.FECH_SISTEMA'
    end
    object QTipo_MovimientoUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.USUA_SISTEMA'
    end
  end
  object TTemporal: TRxMemoryData
    FieldDefs = <>
    Left = 80
    Top = 164
    object TTemporalCONS_PERSONAL: TIntegerField
      FieldName = 'CONS_PERSONAL'
    end
    object TTemporalCODI_PERSONAL: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERSONAL'
      Size = 12
    end
    object TTemporalNOMB_COMPLETO: TStringField
      DisplayLabel = 'Nombre Completo'
      FieldName = 'NOMB_COMPLETO'
      Size = 102
    end
  end
  object DSTemporal: TDataSource
    AutoEdit = False
    DataSet = TTemporal
    Left = 112
    Top = 164
  end
  object SPModificacion: TStoredProc
    DatabaseName = 'data_base_pcp'
    StoredProcName = 'PRO_GLO_PERS_MODI_BAJAS'
    Left = 73
    Top = 288
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PE_CONS_PERS_TIPO_MOVIMIENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PERS_MOVI_TIPO_DOCU'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_NUME_DOCUMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'PE_FECH_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'PE_FECH_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_OBSERVACIONES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PERSONAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_SOLICITA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_APROBO'
        ParamType = ptInput
      end>
  end
  object QTipo_Documento: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_MOVI_TIPO_DOCUMENTO'
      'ORDER BY NOMB_PERS_MOVI_TIPO_DOCUMENTO')
    Left = 73
    Top = 254
  end
  object TMovimiento: TRxMemoryData
    FieldDefs = <>
    BeforePost = TMovimientoBeforePost
    Left = 177
    Top = 158
    object TMovimientoCONS_PERS_TIPO_MOVIMIENTO: TIntegerField
      DisplayLabel = 'Tipo Baja'
      FieldName = 'CONS_PERS_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.CONS_PERS_TIPO_MOVIMIENTO'
      Required = True
    end
    object TMovimientoCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'Tipo Documento'
      FieldName = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      Origin = 
        'DATA_BASE_PCP.GLO_PERS_MOVI_TIPO_DOCUMENTO.CONS_PERS_MOVI_TIPO_D' +
        'OCUMENTO'
      Required = True
    end
    object TMovimientoNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Número Documento'
      FieldName = 'NUME_DOCUMENTO'
    end
    object TMovimientoFECH_INICIAL: TDateField
      DisplayLabel = 'Fecha Inicial'
      FieldName = 'FECH_INICIAL'
    end
    object TMovimientoFECH_FINAL: TDateField
      DisplayLabel = 'Fecha Final'
      FieldName = 'FECH_FINAL'
      Required = True
    end
    object TMovimientoCONS_SOLICITA: TIntegerField
      DisplayLabel = 'Solicitado Por'
      FieldName = 'CONS_SOLICITA'
    end
    object TMovimientoCONS_APROBO: TIntegerField
      DisplayLabel = 'Aprobado Por'
      FieldName = 'CONS_APROBO'
    end
    object TMovimientoOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
  end
  object DSMovimiento: TDataSource
    DataSet = TMovimiento
    Left = 216
    Top = 158
  end
  object QPersonal: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERSONAL'
      'ORDER BY NOMB_COMPLETO')
    Left = 184
    Top = 222
  end
  object DSQPersonal: TDataSource
    AutoEdit = False
    DataSet = QPersonal
    Left = 216
    Top = 222
  end
end

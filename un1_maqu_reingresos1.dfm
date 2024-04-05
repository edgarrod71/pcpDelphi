inherited fn1_maqu_reingresos1: Tfn1_maqu_reingresos1
  Left = 266
  Top = 147
  Width = 669
  Height = 589
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 661
  end
  inherited padr_shap_xp_down: TShape
    Top = 552
    Width = 661
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 661
    inherited padr_barra: TTBXToolbar
      object TBXItem3: TTBXItem [0]
        Action = Acti_Reingreso
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 661
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 661
    inherited padr_beve_1: TBevel
      Width = 655
    end
    inherited padr_sepa_new: TShape
      Width = 655
    end
  end
  inherited padr_pane_info: TPanel
    Top = 561
    Width = 661
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
  object FMovimiento: TPCPFrame [6]
    Left = 0
    Top = 54
    Width = 661
    Height = 176
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
    TabOrder = 6
    Caption = 'Movimiento'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    object SCLDBLabel40: TSCLDBLabel
      Left = 10
      Top = 41
      Width = 87
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
      DataField = 'CONS_TIPO_DOCUMENTO'
      Field = 'CONS_TIPO_DOCUMENTO'
    end
    object SCLDBLabel42: TSCLDBLabel
      Left = 312
      Top = 41
      Width = 89
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
      FocusControl = DBNumero_Documento
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Nro. Documento:'
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NUME_DOCUMENTO'
      Field = 'NUME_DOCUMENTO'
    end
    object SCLDBLabel64: TSCLDBLabel
      Left = 10
      Top = 61
      Width = 87
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
      FocusControl = DBFecha_Inicial
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
    object SCLDBLabel65: TSCLDBLabel
      Left = 312
      Top = 61
      Width = 89
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
      FocusControl = DBFecha_Final
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
    object SCLDBLabel30: TSCLDBLabel
      Left = 10
      Top = 81
      Width = 87
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
      FocusControl = DBSolicitado
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Solicitado por:'
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_SOLICITA'
      Field = 'CONS_SOLICITA'
    end
    object SCLDBLabel68: TSCLDBLabel
      Left = 10
      Top = 109
      Width = 87
      Height = 49
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
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 21
      Width = 87
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
      Caption = 'Tipo Movimiento:'
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_RECU_TIPO_MOVIMIENTO'
      Field = 'CONS_RECU_TIPO_MOVIMIENTO'
    end
    object CBTipo_Documento: TPCPLookUpComboEdit
      Left = 99
      Top = 41
      Width = 185
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'CONS_TIPO_DOCUMENTO'
      DataSource = DSMovimiento
      KeyField = 'CONS_TIPO_DOCUMENTO'
      ListField = 'NOMB_TIPO_DOCUMENTO'
      ListSource = DSQTipo_Documento_movimiento
      ParentCtl3D = False
      TabOrder = 1
      DirectInput = False
    end
    object SCLButton27: TTBXButtonSCL
      Left = 287
      Top = 41
      Width = 20
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
    object DBNumero_Documento: TdxDBEdit
      Left = 403
      Top = 41
      Width = 118
      TabOrder = 2
      DataField = 'NUME_DOCUMENTO'
      DataSource = DSMovimiento
      StyleController = padr_estilo
    end
    object DBFecha_Inicial: TdxDBDateEdit
      Left = 99
      Top = 61
      Width = 118
      TabOrder = 3
      DataField = 'FECH_INICIAL'
      DataSource = DSMovimiento
      StyleController = padr_estilo
    end
    object DBObservaciones: TdxDBEdit
      Left = 99
      Top = 109
      Width = 489
      TabOrder = 6
      AutoSize = False
      DataField = 'OBSERVACIONES'
      DataSource = DSMovimiento
      StyleController = padr_estilo
      Height = 49
    end
    object DBFecha_Final: TdxDBDateEdit
      Left = 403
      Top = 61
      Width = 118
      TabOrder = 4
      DataField = 'FECH_FINAL'
      DataSource = DSMovimiento
      StyleController = padr_estilo
    end
    object DBSolicitado: TPCPLookUpComboEdit
      Left = 99
      Top = 81
      Width = 305
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'CONS_SOLICITA'
      DataSource = DSMovimiento
      KeyField = 'CONS_PERSONAL'
      ListField = 'NOMB_COMPLETO'
      ListSource = DSQPersonal
      ParentCtl3D = False
      TabOrder = 5
      DirectInput = False
    end
    object SCLButton6: TTBXButtonSCL
      Left = 407
      Top = 83
      Width = 20
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      SmartFocus = False
      TabOrder = 8
      TabStop = False
    end
    object CBTipo_Movimiento: TPCPLookUpComboEdit
      Left = 99
      Top = 21
      Width = 185
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'CONS_RECU_TIPO_MOVIMIENTO'
      DataSource = DSMovimiento
      KeyField = 'CONS_RECU_TIPO_MOVIMIENTO'
      ListField = 'NOMB_RECU_TIPO_MOVIMIENTO'
      ListSource = DSQTipo_Movimientos
      ParentCtl3D = False
      TabOrder = 9
      DirectInput = False
    end
    object SCLButton3: TTBXButtonSCL
      Left = 287
      Top = 19
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
    object CBBajas: TdxCheckEdit
      Left = 14
      Top = 156
      Width = 102
      TabOrder = 11
      Alignment = taRightJustify
      Caption = 'Todas las bajas'
      StyleController = padr_estilo_chec
      OnChange = CBBajasChange
      StoredValues = 1
    end
  end
  object FUbicacion: TPCPFrame [7]
    Left = 0
    Top = 230
    Width = 661
    Height = 160
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
    Caption = 'Nueva ubicación'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    inline ffra_maqu_ubicacion1: Tffra_maqu_ubicacion
      Left = 2
      Top = 21
      Width = 657
      Height = 136
      Align = alTop
      TabOrder = 1
      inherited pane_tipo_ubicacion: TPanel
        Width = 657
        inherited SCLDBLabel33: TSCLDBLabel
          Width = 87
          FontActive.Name = 'Tahoma'
          DataSource = DSMovimiento
        end
        inherited comb_tipo_ubicacion: TPCPLookUpComboEdit
          Left = 99
          Width = 185
          DataSource = DSMovimiento
          OnChange = ffra_maqu_ubicacion1comb_tipo_ubicacionChange
        end
      end
      inherited pane_ubic_propia: TPanel
        Width = 657
        inherited SCLDBLabel34: TSCLDBLabel
          Width = 87
          FontActive.Name = 'Tahoma'
          DataSource = DSMovimiento
        end
        inherited SCLDBLabel35: TSCLDBLabel
          Left = 312
          Width = 89
          FontActive.Name = 'Tahoma'
          DataSource = DSMovimiento
        end
        inherited comb_ubic_empresa: TPCPLookUpComboEdit
          Left = 99
          Width = 185
          DataSource = DSMovimiento
        end
        inherited comb_ubic_area: TPCPLookUpComboEdit
          Left = 403
          Width = 185
          DataSource = DSMovimiento
        end
        inherited SCLButton6: TTBXButton
          Images = Imagenes_Botones_Pequenos
        end
        inherited SCLButton7: TTBXButton
          Left = 593
          Images = Imagenes_Botones_Pequenos
        end
      end
      inherited pane_ubic_externa: TPanel
        Width = 657
        inherited SCLDBLabel36: TSCLDBLabel
          Width = 87
          FontActive.Name = 'Tahoma'
          DataSource = DSMovimiento
        end
        inherited SCLDBLabel37: TSCLDBLabel
          Width = 87
          FontActive.Name = 'Tahoma'
          DataSource = DSMovimiento
        end
        inherited SCLDBLabel1: TSCLDBLabel
          Left = 312
          Width = 89
          FontActive.Name = 'Tahoma'
          DataSource = DSMovimiento
        end
        inherited comb_ubic_planta: TPCPLookUpComboEdit
          Left = 99
          Width = 185
          DataSource = DSMovimiento
        end
        inherited comb_ubic_seccion: TPCPLookUpComboEdit
          Left = 99
          Width = 185
          DataSource = DSMovimiento
        end
        inherited SCLButton8: TTBXButton
          Images = Imagenes_Botones_Pequenos
        end
        inherited SCLButton9: TTBXButton
          Images = Imagenes_Botones_Pequenos
        end
        inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
          Left = 403
          Width = 185
          DataSource = DSMovimiento
        end
        inherited SCLButton1: TTBXButton
          Left = 593
          Images = Imagenes_Botones_Pequenos
        end
      end
      inherited pane_ubic_bodega: TPanel
        Width = 657
        inherited SCLDBLabel39: TSCLDBLabel
          Width = 87
          FontActive.Name = 'Tahoma'
          DataSource = DSMovimiento
        end
        inherited comb_ubic_bodega: TPCPLookUpComboEdit
          Left = 99
          Width = 185
          DataSource = DSMovimiento
        end
        inherited SCLButton10: TTBXButton
          Images = Imagenes_Botones_Pequenos
        end
      end
      inherited pane_ubic_otra: TPanel
        Width = 657
        inherited SCLDBLabel38: TSCLDBLabel
          Width = 87
          FontActive.Name = 'Tahoma'
          DataSource = DSMovimiento
        end
        inherited edit_ubic_otra_ubicacion: TdxDBEdit
          Left = 99
          Width = 185
          Style.BorderStyle = xbsFlat
          DataSource = DSMovimiento
          StyleController = padr_estilo
        end
      end
      inherited quer_bodegas: TQuery
        Top = 80
      end
    end
  end
  object PCPFrame1: TPCPFrame [8]
    Left = 0
    Top = 390
    Width = 661
    Height = 162
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
    TabOrder = 8
    Caption = 'Recursos'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    object DBPersonal: TdxDBGrid
      Left = 2
      Top = 21
      Width = 657
      Height = 139
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CONS_RECURSO'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 1
      DataSource = DSQRecursos
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
      object DBPersonalCONS_RECURSO: TdxDBGridMaskColumn
        Visible = False
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_RECURSO'
      end
      object DBPersonalCODI_RECURSO: TdxDBGridMaskColumn
        Sorted = csUp
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_RECURSO'
      end
      object DBPersonalCODI_INTE_RECURSO: TdxDBGridMaskColumn
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_INTE_RECURSO'
      end
      object DBPersonalNOMB_RECU_GRUPO: TdxDBGridMaskColumn
        Width = 138
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_RECU_GRUPO'
      end
      object DBPersonalNOMB_RECU_TIPO: TdxDBGridMaskColumn
        Width = 138
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_RECU_TIPO'
      end
      object DBPersonalNOMB_RECU_FAMILIA: TdxDBGridMaskColumn
        Width = 138
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_RECU_FAMILIA'
      end
      object DBPersonalNOMB_RECU_MARCA: TdxDBGridMaskColumn
        Width = 138
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_RECU_MARCA'
      end
      object DBPersonalFECH_INICIAL: TdxDBGridDateColumn
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FECH_INICIAL'
      end
      object DBPersonalNUME_SERIE: TdxDBGridMaskColumn
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUME_SERIE'
      end
      object DBPersonalCODI_EMPRESA: TdxDBGridMaskColumn
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_EMPRESA'
      end
      object DBPersonalNOMB_EMPRESA: TdxDBGridMaskColumn
        Width = 284
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_EMPRESA'
      end
      object DBPersonalCODI_AREA: TdxDBGridMaskColumn
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_AREA'
      end
      object DBPersonalNOMB_AREA: TdxDBGridMaskColumn
        Width = 138
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_AREA'
      end
      object DBPersonalCODI_PLANTA: TdxDBGridMaskColumn
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_PLANTA'
      end
      object DBPersonalNOMB_PLANTA: TdxDBGridMaskColumn
        Width = 138
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_PLANTA'
      end
      object DBPersonalCODI_LINEA: TdxDBGridMaskColumn
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_LINEA'
      end
      object DBPersonalNOMB_LINEA: TdxDBGridMaskColumn
        Width = 138
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_LINEA'
      end
      object DBPersonalCODI_SECCION: TdxDBGridMaskColumn
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_SECCION'
      end
      object DBPersonalNOMB_SECCION: TdxDBGridMaskColumn
        Width = 138
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_SECCION'
      end
      object DBPersonalCODI_BODEGA: TdxDBGridMaskColumn
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_BODEGA'
      end
      object DBPersonalNOMB_BODEGA: TdxDBGridMaskColumn
        Width = 138
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_BODEGA'
      end
      object DBPersonalOTRA_UBICACION: TdxDBGridMaskColumn
        Width = 364
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OTRA_UBICACION'
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 553
    Width = 661
    inherited padr_beve_abajo: TBevel
      Width = 655
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 661
  end
  inherited padr_imag_tem1_colo: TImageList
    Left = 633
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
    object Acti_Reingreso: TAction
      ImageIndex = 4
      OnExecute = Acti_ReingresoExecute
    end
  end
  inherited Imagenes_Botones_Pequenos: TImageList
    Left = 729
  end
  inherited Variables: TSCLPropiedadesForm
    Left = 728
  end
  inherited Tabla_Ventana: TTable
    FieldDefs = <
      item
        Name = 'CONS_RECU_MOVIMIENTO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CONS_RECU_TIPO_MOVIMIENTO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CONS_RECURSO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CONS_TIPO_DOCUMENTO'
        DataType = ftInteger
      end
      item
        Name = 'NUME_DOCUMENTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CONS_SOLICITA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CONS_ENTREGA'
        DataType = ftInteger
      end
      item
        Name = 'CONS_RECIBE'
        DataType = ftInteger
      end
      item
        Name = 'FECH_INICIAL'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'FECH_FINAL'
        DataType = ftDateTime
      end
      item
        Name = 'OBSERVACIONES'
        DataType = ftString
        Size = 240
      end
      item
        Name = 'FECH_SISTEMA'
        DataType = ftDateTime
      end
      item
        Name = 'USUA_SISTEMA'
        DataType = ftString
        Size = 20
      end>
    StoreDefs = True
    TableName = 'GLO_RECU_MOVIMIENTOS'
  end
  inherited padr_estilo: TdxEditStyleController
    Left = 698
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController
    Left = 730
  end
  inherited padr_esti_panel: TAdvPanelStyler
    Left = 698
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler
    Left = 730
  end
  inherited imag_pequenas: TImageList
    Left = 699
  end
  inherited padr_pict_container: TPictureContainer
    Left = 698
  end
  object TMovimientos: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_RECU_MOVI_TRASLADOS'
    Left = 8
    Top = 470
  end
  object DSMovimientos: TDataSource
    AutoEdit = False
    DataSet = TMovimientos
    Left = 40
    Top = 470
  end
  object TMovimiento: TRxMemoryData
    FieldDefs = <>
    Left = 8
    Top = 438
    object TMovimientoCONS_RECU_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_RECU_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_MOVIMIENTO.CONS_RECU_TIPO_MOVIMIENTO'
      Required = True
    end
    object TMovimientoCONS_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'CONS_TIPO_DOCUMENTO'
      Required = True
    end
    object TMovimientoNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Número de Documento'
      FieldName = 'NUME_DOCUMENTO'
    end
    object TMovimientoCONS_SOLICITA: TIntegerField
      DisplayLabel = 'Solicitado por'
      FieldName = 'CONS_SOLICITA'
      Required = True
    end
    object TMovimientoCONS_ENTREGA: TIntegerField
      DisplayLabel = 'Entregado por'
      FieldName = 'CONS_ENTREGA'
    end
    object TMovimientoCONS_RECIBE: TIntegerField
      DisplayLabel = 'Recibido por'
      FieldName = 'CONS_RECIBE'
    end
    object TMovimientoFECH_INICIAL: TDateTimeField
      DisplayLabel = 'Fecha Inicial'
      FieldName = 'FECH_INICIAL'
      Required = True
    end
    object TMovimientoFECH_FINAL: TDateTimeField
      DisplayLabel = 'Fecha Final'
      FieldName = 'FECH_FINAL'
    end
    object TMovimientoOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object TMovimientoCONS_UBIC_TIPO: TIntegerField
      FieldName = 'CONS_UBIC_TIPO'
      Origin = 'DATA_BASE_PCP.SIS_UBIC_TIPOS.CONS_UBIC_TIPO'
    end
    object TMovimientoCONS_EMPRESA: TIntegerField
      FieldName = 'CONS_EMPRESA'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.CONS_EMPRESA'
    end
    object TMovimientoCONS_AREA: TIntegerField
      FieldName = 'CONS_AREA'
      Origin = 'DATA_BASE_PCP.GLO_AREAS.CONS_AREA'
    end
    object TMovimientoCONS_PLANTA: TIntegerField
      FieldName = 'CONS_PLANTA'
      Origin = 'DATA_BASE_PCP.GLO_PLANTAS.CONS_PLANTA'
    end
    object TMovimientoCONS_PLAN_LINEA: TIntegerField
      FieldName = 'CONS_PLAN_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_PLAN_LINEAS.CONS_PLAN_LINEA'
    end
    object TMovimientoCONS_LINE_SECCION: TIntegerField
      FieldName = 'CONS_LINE_SECCION'
      Origin = 'DATA_BASE_PCP.GLO_LINE_SECCIONES.CONS_LINE_SECCION'
    end
    object TMovimientoCONS_BODEGA: TIntegerField
      FieldName = 'CONS_BODEGA'
      Origin = 'DATA_BASE_PCP.GLO_BODEGAS.CONS_BODEGA'
    end
    object TMovimientoOTRA_UBICACION: TStringField
      FieldName = 'OTRA_UBICACION'
      Size = 60
    end
  end
  object DSMovimiento: TDataSource
    DataSet = TMovimiento
    Left = 40
    Top = 438
  end
  object DSQTipo_Documento_movimiento: TDataSource
    AutoEdit = False
    DataSet = QTipo_Documento_movimiento
    Left = 196
    Top = 439
  end
  object DSQPersonal: TDataSource
    AutoEdit = False
    DataSet = QPersonal
    Left = 196
    Top = 467
  end
  object QRecursos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_RECU_EN_BAJA')
    Left = 96
    Top = 464
    object QRecursosCONS_RECURSO: TIntegerField
      FieldName = 'CONS_RECURSO'
    end
    object QRecursosCODI_RECURSO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_RECURSO'
      Size = 12
    end
    object QRecursosCODI_INTE_RECURSO: TStringField
      DisplayLabel = 'Código Interno'
      FieldName = 'CODI_INTE_RECURSO'
      Size = 102
    end
    object QRecursosCONS_RECU_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_RECU_TIPO_MOVIMIENTO'
    end
    object QRecursosNOMB_RECU_TIPO_MOVIMIENTO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'NOMB_RECU_TIPO_MOVIMIENTO'
      Size = 60
    end
    object QRecursosFECH_INICIAL: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_INICIAL'
    end
    object QRecursosNOMB_RECU_GRUPO: TStringField
      DisplayLabel = 'Grupo de Recurso'
      FieldName = 'NOMB_RECU_GRUPO'
      Size = 60
    end
    object QRecursosNOMB_RECU_TIPO: TStringField
      DisplayLabel = 'Tipo de Recurso'
      FieldName = 'NOMB_RECU_TIPO'
      Size = 60
    end
    object QRecursosNOMB_RECU_FAMILIA: TStringField
      DisplayLabel = 'Familia'
      FieldName = 'NOMB_RECU_FAMILIA'
      Size = 60
    end
    object QRecursosNOMB_RECU_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOMB_RECU_MARCA'
      Size = 60
    end
    object QRecursosNUME_SERIE: TStringField
      DisplayLabel = 'Número Serie'
      FieldName = 'NUME_SERIE'
    end
    object QRecursosCODI_EMPRESA: TStringField
      DisplayLabel = 'Cód. Empresa'
      FieldName = 'CODI_EMPRESA'
      Size = 12
    end
    object QRecursosNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Size = 60
    end
    object QRecursosCODI_AREA: TStringField
      DisplayLabel = 'Cód. Area'
      FieldName = 'CODI_AREA'
      Size = 12
    end
    object QRecursosNOMB_AREA: TStringField
      DisplayLabel = 'Area'
      FieldName = 'NOMB_AREA'
      Size = 60
    end
    object QRecursosCODI_PLANTA: TStringField
      DisplayLabel = 'Cód. Planta'
      FieldName = 'CODI_PLANTA'
      Size = 12
    end
    object QRecursosNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta'
      FieldName = 'NOMB_PLANTA'
      Size = 60
    end
    object QRecursosCODI_LINEA: TStringField
      DisplayLabel = 'Cód. Línea'
      FieldName = 'CODI_LINEA'
      Size = 12
    end
    object QRecursosNOMB_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldName = 'NOMB_LINEA'
      Size = 60
    end
    object QRecursosCODI_SECCION: TStringField
      DisplayLabel = 'Cód. Sección'
      FieldName = 'CODI_SECCION'
      Size = 12
    end
    object QRecursosNOMB_SECCION: TStringField
      DisplayLabel = 'Sección'
      FieldName = 'NOMB_SECCION'
      Size = 60
    end
    object QRecursosCODI_BODEGA: TStringField
      DisplayLabel = 'Cód. Bodega'
      FieldName = 'CODI_BODEGA'
      Size = 12
    end
    object QRecursosNOMB_BODEGA: TStringField
      DisplayLabel = 'Bodega'
      FieldName = 'NOMB_BODEGA'
      Size = 60
    end
    object QRecursosOTRA_UBICACION: TStringField
      DisplayLabel = 'Otra Ubicación'
      FieldName = 'OTRA_UBICACION'
      Size = 60
    end
  end
  object DSQRecursos: TDataSource
    AutoEdit = False
    DataSet = QRecursos
    Left = 128
    Top = 464
  end
  object QTipo_Movimientos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_RECU_TIPO_MOVIMIENTO'
      'WHERE CONS_FAMI_MOVIMIENTO = 5')
    Left = 96
    Top = 436
    object QTipo_MovimientosCONS_RECU_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_RECU_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_MOVIMIENTO.CONS_RECU_TIPO_MOVIMIENTO'
    end
    object QTipo_MovimientosCONS_FAMI_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_FAMI_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_MOVIMIENTO.CONS_FAMI_MOVIMIENTO'
    end
    object QTipo_MovimientosCODI_RECU_TIPO_MOVIMIENTO: TStringField
      FieldName = 'CODI_RECU_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_MOVIMIENTO.CODI_RECU_TIPO_MOVIMIENTO'
      Size = 12
    end
    object QTipo_MovimientosNOMB_RECU_TIPO_MOVIMIENTO: TStringField
      FieldName = 'NOMB_RECU_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_MOVIMIENTO.NOMB_RECU_TIPO_MOVIMIENTO'
      Size = 60
    end
    object QTipo_MovimientosOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_MOVIMIENTO.OBSERVACIONES'
      Size = 240
    end
    object QTipo_MovimientosFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_MOVIMIENTO.FECH_SISTEMA'
    end
    object QTipo_MovimientosUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_RECU_TIPO_MOVIMIENTO.USUA_SISTEMA'
    end
  end
  object DSQTipo_Movimientos: TDataSource
    AutoEdit = False
    DataSet = QTipo_Movimientos
    Left = 128
    Top = 436
  end
  object SPReingreso: TStoredProc
    DatabaseName = 'data_base_pcp'
    StoredProcName = 'PRO_GLO_RECU_MODI_TRASLADOS'
    Left = 570
    Top = 122
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PE_CONS_RECU_TIPO_MOVIMIENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_RECURSO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_TIPO_DOCUMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_NUME_DOCUMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_SOLICITA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_ENTREGA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_RECIBE'
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
        Name = 'PE_CONS_UBIC_TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_AREA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PLANTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PLAN_LINEA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_LINE_SECCION'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_BODEGA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_OTRA_UBICACION'
        ParamType = ptInput
      end>
  end
  object QTipo_Documento_movimiento: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_TIPO_DOCUMENTO'
      'ORDER BY NOMB_TIPO_DOCUMENTO')
    Left = 168
    Top = 438
  end
  object QPersonal: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERSONAL'
      'ORDER BY NOMB_COMPLETO')
    Left = 168
    Top = 467
  end
end

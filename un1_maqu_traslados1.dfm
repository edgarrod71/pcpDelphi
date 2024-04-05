inherited fn1_maqu_traslados1: Tfn1_maqu_traslados1
  Left = 225
  Top = 103
  Width = 681
  Height = 612
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 673
  end
  inherited padr_shap_xp_down: TShape
    Top = 575
    Width = 673
  end
  inherited padr_dock_arriba: TTBXDock
    Top = 1
    Width = 673
    inherited padr_barra: TTBXToolbar
      object TBXItem1: TTBXItem [0]
        Action = Acti_Modificar_Traslado
      end
      object TBXItem2: TTBXItem [9]
        Caption = 'Más detalles'
        Images = padr_imag_tem1_colo
        Visible = False
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Top = 52
    Width = 673
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 43
    Width = 673
    inherited padr_beve_1: TBevel
      Width = 667
    end
    inherited padr_sepa_new: TShape
      Width = 667
    end
  end
  inherited padr_pane_info: TPanel
    Top = 584
    Width = 673
    inherited _LFecha_Creacion: TSCLDBLabel
      Left = 210
      Top = 55
      Visible = False
    end
    inherited _LUsuario: TSCLDBLabel
      Left = 210
      Top = 77
      Visible = False
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Left = 312
      Top = 55
      Visible = False
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Left = 312
      Top = 77
      Visible = False
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
    Width = 673
    Height = 158
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
      Left = 16
      Top = 21
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
      Left = 336
      Top = 21
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
      Left = 16
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
      FocusControl = DBFecha_Inicial
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha traslado:'
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'FECH_INICIAL'
      Field = 'FECH_INICIAL'
    end
    object SCLDBLabel65: TSCLDBLabel
      Left = 336
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
      Left = 16
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
    object SCLDBLabel31: TSCLDBLabel
      Left = 336
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
      FocusControl = DBEntregado
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Entregado por:'
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_ENTREGA'
      Field = 'CONS_ENTREGA'
    end
    object SCLDBLabel33: TSCLDBLabel
      Left = 16
      Top = 81
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
      FocusControl = DBRecibido
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Recibido por:'
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_RECIBE'
      Field = 'CONS_RECIBE'
    end
    object SCLDBLabel68: TSCLDBLabel
      Left = 16
      Top = 109
      Width = 89
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
    object CBTipo_Documento: TPCPLookUpComboEdit
      Left = 107
      Top = 21
      Width = 185
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_TIPO_DOCUMENTO'
      DataSource = DSMovimiento
      KeyField = 'CONS_TIPO_DOCUMENTO'
      ListField = 'NOMB_TIPO_DOCUMENTO'
      ListSource = DSQTipo_Documento_Movimiento
      ParentCtl3D = False
      TabOrder = 1
      DirectInput = False
    end
    object SCLButton27: TTBXButtonSCL
      Left = 297
      Top = 21
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
    object DBNumero_Documento: TdxDBEdit
      Left = 427
      Top = 21
      Width = 118
      TabOrder = 2
      DataField = 'NUME_DOCUMENTO'
      DataSource = DSMovimiento
      StyleController = padr_estilo
    end
    object DBFecha_Inicial: TdxDBDateEdit
      Left = 107
      Top = 41
      Width = 118
      TabOrder = 3
      DataField = 'FECH_INICIAL'
      DataSource = DSMovimiento
      StyleController = padr_estilo
    end
    object DBObservaciones: TdxDBEdit
      Left = 107
      Top = 109
      Width = 506
      TabOrder = 8
      AutoSize = False
      DataField = 'OBSERVACIONES'
      DataSource = DSMovimiento
      StyleController = padr_estilo
      Height = 49
    end
    object DBFecha_Final: TdxDBDateEdit
      Left = 427
      Top = 41
      Width = 118
      TabOrder = 4
      DataField = 'FECH_FINAL'
      DataSource = DSMovimiento
      StyleController = padr_estilo
    end
    object DBSolicitado: TPCPLookUpComboEdit
      Left = 107
      Top = 61
      Width = 185
      Height = 21
      DropDownCount = 8
      Ctl3D = True
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
      Left = 297
      Top = 61
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
    object DBEntregado: TPCPLookUpComboEdit
      Left = 427
      Top = 61
      Width = 185
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_ENTREGA'
      DataSource = DSMovimiento
      KeyField = 'CONS_PERSONAL'
      ListField = 'NOMB_COMPLETO'
      ListSource = DSQPersonal
      ParentCtl3D = False
      TabOrder = 6
      DirectInput = False
    end
    object SCLButton7: TTBXButtonSCL
      Left = 617
      Top = 61
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
    object DBRecibido: TPCPLookUpComboEdit
      Left = 107
      Top = 81
      Width = 185
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_RECIBE'
      DataSource = DSMovimiento
      KeyField = 'CONS_PERSONAL'
      ListField = 'NOMB_COMPLETO'
      ListSource = DSQPersonal
      ParentCtl3D = False
      TabOrder = 7
      DirectInput = False
    end
    object SCLButton8: TTBXButtonSCL
      Left = 297
      Top = 82
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
  end
  object PCPFrame1: TPCPFrame [7]
    Left = 0
    Top = 372
    Width = 673
    Height = 203
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
    TabOrder = 7
    Caption = 'Recursos'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    object DBPersonal: TdxDBGrid
      Left = 2
      Top = 21
      Width = 669
      Height = 180
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
      DataSource = DSRecursos_Temporal
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
  object FUbicacion: TPCPFrame [8]
    Left = 0
    Top = 212
    Width = 673
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
    TabOrder = 8
    Caption = 'Nueva ubicación'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    inline ffra_maqu_ubicacion1: Tffra_maqu_ubicacion
      Left = 2
      Top = 21
      Width = 669
      Height = 136
      Align = alTop
      TabOrder = 1
      inherited pane_tipo_ubicacion: TPanel
        Width = 669
        inherited SCLDBLabel33: TSCLDBLabel
          FontActive.Name = 'Tahoma'
          DataSource = DSMovimiento
        end
        inherited comb_tipo_ubicacion: TPCPLookUpComboEdit
          DataSource = DSMovimiento
          OnChange = ffra_maqu_ubicacion1comb_tipo_ubicacionChange
        end
      end
      inherited pane_ubic_propia: TPanel
        Width = 669
        inherited SCLDBLabel34: TSCLDBLabel
          FontActive.Name = 'Tahoma'
          DataSource = DSMovimiento
        end
        inherited SCLDBLabel35: TSCLDBLabel
          FontActive.Name = 'Tahoma'
          DataSource = DSMovimiento
        end
        inherited comb_ubic_empresa: TPCPLookUpComboEdit
          DataSource = DSMovimiento
        end
        inherited comb_ubic_area: TPCPLookUpComboEdit
          DataSource = DSMovimiento
        end
      end
      inherited pane_ubic_externa: TPanel
        Width = 669
        inherited SCLDBLabel36: TSCLDBLabel
          FontActive.Name = 'Tahoma'
          DataSource = DSMovimiento
        end
        inherited SCLDBLabel37: TSCLDBLabel
          FontActive.Name = 'Tahoma'
          DataSource = DSMovimiento
        end
        inherited SCLDBLabel1: TSCLDBLabel
          FontActive.Name = 'Tahoma'
          DataSource = DSMovimiento
        end
        inherited comb_ubic_planta: TPCPLookUpComboEdit
          DataSource = DSMovimiento
        end
        inherited comb_ubic_seccion: TPCPLookUpComboEdit
          DataSource = DSMovimiento
        end
        inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
          DataSource = DSMovimiento
        end
      end
      inherited pane_ubic_bodega: TPanel
        Width = 669
        inherited SCLDBLabel39: TSCLDBLabel
          FontActive.Name = 'Tahoma'
          DataSource = DSMovimiento
        end
        inherited comb_ubic_bodega: TPCPLookUpComboEdit
          DataSource = DSMovimiento
        end
      end
      inherited pane_ubic_otra: TPanel
        Width = 669
        inherited SCLDBLabel38: TSCLDBLabel
          FontActive.Name = 'Tahoma'
          DataSource = DSMovimiento
        end
        inherited edit_ubic_otra_ubicacion: TdxDBEdit
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
  inherited pane_beve_abajo: TPanel
    Top = 576
    Width = 673
    inherited padr_beve_abajo: TBevel
      Width = 667
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 50
    Width = 673
  end
  inherited padr_imag_tem1_colo: TImageList
    Left = 673
    Top = 12
  end
  inherited padr_acciones: TActionList
    Left = 320
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
    object Acti_Modificar_Traslado: TAction
      Hint = 'Modificar Ubicación'
      ImageIndex = 4
      OnExecute = Acti_Modificar_TrasladoExecute
    end
  end
  inherited Imagenes_Botones_Pequenos: TImageList
    Left = 737
  end
  inherited Variables: TSCLPropiedadesForm
    TipoDeBusqueda = tbArreglo
    Left = 736
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_RECU_MOVIMIENTOS'
    object Tabla_VentanaCONS_RECU_MOVIMIENTO: TIntegerField
      DisplayLabel = 'No. Movimiento'
      FieldName = 'CONS_RECU_MOVIMIENTO'
      Required = True
    end
    object Tabla_VentanaCONS_RECU_TIPO_MOVIMIENTO: TIntegerField
      DisplayLabel = 'Tipo Movimiento'
      FieldName = 'CONS_RECU_TIPO_MOVIMIENTO'
      Required = True
    end
    object Tabla_VentanaCONS_RECURSO: TIntegerField
      DisplayLabel = 'Recurso'
      FieldName = 'CONS_RECURSO'
      Required = True
    end
    object Tabla_VentanaCONS_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'CONS_TIPO_DOCUMENTO'
      Required = True
    end
    object Tabla_VentanaNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Número de Documento'
      FieldName = 'NUME_DOCUMENTO'
    end
    object Tabla_VentanaCONS_SOLICITA: TIntegerField
      DisplayLabel = 'Solicitado por'
      FieldName = 'CONS_SOLICITA'
      Required = True
    end
    object Tabla_VentanaCONS_ENTREGA: TIntegerField
      DisplayLabel = 'Entregado por'
      FieldName = 'CONS_ENTREGA'
    end
    object Tabla_VentanaCONS_RECIBE: TIntegerField
      DisplayLabel = 'Recibido por'
      FieldName = 'CONS_RECIBE'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaFECH_INICIAL: TDateTimeField
      DisplayLabel = 'Fecha Inicial'
      FieldName = 'FECH_INICIAL'
      Required = True
    end
    object Tabla_VentanaFECH_FINAL: TDateTimeField
      DisplayLabel = 'Fecha Final'
      FieldName = 'FECH_FINAL'
    end
    object Tabla_VentanaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
  end
  inherited padr_estilo: TdxEditStyleController
    Left = 706
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController
    Left = 738
  end
  inherited padr_esti_panel: TAdvPanelStyler
    Left = 706
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler
    Left = 738
  end
  inherited imag_pequenas: TImageList
    Left = 707
  end
  inherited padr_pict_container: TPictureContainer
    Left = 706
  end
  object DSQTipo_Documento_Movimiento: TDataSource
    AutoEdit = False
    DataSet = QTipo_Documento_Movimiento
    Left = 146
    Top = 442
  end
  object DSQPersonal: TDataSource
    AutoEdit = False
    DataSet = QPersonal
    Left = 146
    Top = 470
  end
  object TRecursos_Temporal: TRxMemoryData
    FieldDefs = <>
    Left = 8
    Top = 466
    object TRecursos_TemporalCONS_RECURSO: TIntegerField
      DisplayLabel = 'No. Recurso'
      FieldName = 'CONS_RECURSO'
    end
    object TRecursos_TemporalCODI_RECURSO: TStringField
      DisplayLabel = 'Cód. Recurso'
      FieldName = 'CODI_RECURSO'
      Size = 12
    end
    object TRecursos_TemporalCODI_INTE_RECURSO: TStringField
      DisplayLabel = 'Cód. Int. Recurso'
      FieldName = 'CODI_INTE_RECURSO'
      Size = 12
    end
    object TRecursos_TemporalNOMB_RECU_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_RECU_GRUPO'
      Size = 60
    end
    object TRecursos_TemporalNOMB_RECU_TIPO: TStringField
      DisplayLabel = 'Tipo Recurso'
      FieldName = 'NOMB_RECU_TIPO'
      Size = 60
    end
    object TRecursos_TemporalNOMB_RECU_FAMILIA: TStringField
      DisplayLabel = 'Familia'
      FieldName = 'NOMB_RECU_FAMILIA'
      Size = 60
    end
    object TRecursos_TemporalNOMB_RECU_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOMB_RECU_MARCA'
      Size = 60
    end
    object TRecursos_TemporalNUME_SERIE: TStringField
      DisplayLabel = 'No. Serie'
      FieldName = 'NUME_SERIE'
    end
    object TRecursos_TemporalFECH_INICIAL: TDateTimeField
      DisplayLabel = 'Fecha Inicial'
      FieldName = 'FECH_INICIAL'
    end
    object TRecursos_TemporalCODI_EMPRESA: TStringField
      DisplayLabel = 'Cód. Empresa'
      FieldName = 'CODI_EMPRESA'
      Size = 12
    end
    object TRecursos_TemporalNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Size = 60
    end
    object TRecursos_TemporalCODI_AREA: TStringField
      DisplayLabel = 'Cód. Area'
      FieldName = 'CODI_AREA'
      Size = 12
    end
    object TRecursos_TemporalNOMB_AREA: TStringField
      DisplayLabel = 'Area'
      FieldName = 'NOMB_AREA'
      Size = 60
    end
    object TRecursos_TemporalCODI_PLANTA: TStringField
      DisplayLabel = 'Cód. Planta'
      FieldName = 'CODI_PLANTA'
      Size = 12
    end
    object TRecursos_TemporalNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta'
      FieldName = 'NOMB_PLANTA'
      Size = 60
    end
    object TRecursos_TemporalCODI_LINEA: TStringField
      DisplayLabel = 'Cód. Línea'
      FieldName = 'CODI_LINEA'
      Size = 12
    end
    object TRecursos_TemporalNOMB_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldName = 'NOMB_LINEA'
      Size = 60
    end
    object TRecursos_TemporalCODI_SECCION: TStringField
      DisplayLabel = 'Cód. Sección'
      FieldName = 'CODI_SECCION'
      Size = 12
    end
    object TRecursos_TemporalNOMB_SECCION: TStringField
      DisplayLabel = 'Sección'
      FieldName = 'NOMB_SECCION'
      Size = 60
    end
    object TRecursos_TemporalCODI_BODEGA: TStringField
      DisplayLabel = 'Cód. Bodega'
      FieldName = 'CODI_BODEGA'
      Size = 12
    end
    object TRecursos_TemporalNOMB_BODEGA: TStringField
      DisplayLabel = 'Bodega'
      FieldName = 'NOMB_BODEGA'
      Size = 60
    end
    object TRecursos_TemporalOTRA_UBICACION: TStringField
      DisplayLabel = 'Otra Ubicación'
      FieldName = 'OTRA_UBICACION'
      Size = 60
    end
  end
  object DSRecursos_Temporal: TDataSource
    AutoEdit = False
    DataSet = TRecursos_Temporal
    Left = 40
    Top = 466
  end
  object TMovimientos: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_RECU_MOVI_TRASLADOS'
    Left = 8
    Top = 502
  end
  object DSMovimientos: TDataSource
    AutoEdit = False
    DataSet = TMovimientos
    Left = 40
    Top = 502
  end
  object SPModificar_Ubicacion: TStoredProc
    DatabaseName = 'data_base_pcp'
    StoredProcName = 'PRO_GLO_RECU_MODI_TRASLADOS'
    Left = 82
    Top = 506
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
  object TMovimiento: TRxMemoryData
    FieldDefs = <>
    BeforePost = TMovimientoBeforePost
    Left = 8
    Top = 438
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
  object QTipo_Documento_Movimiento: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_TIPO_DOCUMENTO'
      'ORDER BY NOMB_TIPO_DOCUMENTO')
    Left = 80
    Top = 444
  end
  object QPersonal: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERSONAL'
      'ORDER BY NOMB_COMPLETO')
    Left = 80
    Top = 474
  end
end

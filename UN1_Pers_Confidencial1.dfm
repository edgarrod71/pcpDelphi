inherited FN1_Pers_Confidencial1: TFN1_Pers_Confidencial1
  Left = 143
  Top = 65
  Width = 812
  Height = 612
  VertScrollBar.Visible = False
  OldCreateOrder = True
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel [0]
    Left = 320
    Top = 232
    Width = 50
    Height = 50
  end
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 575
    Width = 804
  end
  inherited padr_dock_arriba: TTBXDock
    Top = 1
    Width = 804
    inherited padr_barra: TTBXToolbar
      object TBXItem1: TTBXItem [0]
        Action = Acti_Modi_Confidencial
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Top = 335
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 43
    Width = 804
    inherited padr_beve_1: TBevel
      Width = 678
    end
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 584
    Width = 804
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 457
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 480
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 457
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 480
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object PCPFrame1: TPCPFrame [7]
    Tag = 229
    Left = 0
    Top = 337
    Width = 804
    Height = 238
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
    Caption = 'Personal Seleccionado'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    object DBPersonal: TdxDBGrid
      Left = 2
      Top = 21
      Width = 800
      Height = 215
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
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
      object DBPersonalCONS_PERSONAL: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_PERSONAL'
      end
      object DBPersonalCODI_PERSONAL: TdxDBGridMaskColumn
        ReadOnly = True
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_PERSONAL'
      end
      object DBPersonalNOMB_COMPLETO: TdxDBGridMaskColumn
        ReadOnly = True
        Width = 263
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_COMPLETO'
      end
      object DBPersonalNUME_CONTRATO: TdxDBGridMaskColumn
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUME_CONTRATO'
      end
      object DBPersonalVALO_SALARIO: TdxDBGridMaskColumn
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALO_SALARIO'
      end
      object DBPersonalAUXI_TRANSPORTE: TdxDBGridMaskColumn
        Width = 108
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AUXI_TRANSPORTE'
      end
      object DBPersonalAUXI_SALARIAL: TdxDBGridMaskColumn
        Width = 109
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AUXI_SALARIAL'
      end
      object DBPersonalCONS_PERS_NIVE_SALARIAL: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_PERS_NIVE_SALARIAL'
      end
      object DBPersonalCODI_PERS_NIVE_SALARIAL: TdxDBGridMaskColumn
        ReadOnly = True
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_PERS_NIVE_SALARIAL'
      end
      object DBPersonalNOMB_PERS_NIVE_SALARIAL: TdxDBGridMaskColumn
        ReadOnly = True
        Width = 185
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_PERS_NIVE_SALARIAL'
      end
      object DBPersonalCONS_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_PERS_TIPO_CONTRATO'
      end
      object DBPersonalCODI_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn
        ReadOnly = True
        Width = 113
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_PERS_TIPO_CONTRATO'
      end
      object DBPersonalNOMB_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn
        ReadOnly = True
        Width = 364
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_PERS_TIPO_CONTRATO'
      end
      object DBPersonalDIAS_VENC_CONTRATO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DIAS_VENC_CONTRATO'
      end
      object DBPersonalAPLI_INCENTIVO: TdxDBGridCheckColumn
        MinWidth = 20
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'APLI_INCENTIVO'
        ValueChecked = '1'
        ValueGrayed = '-1'
        ValueUnchecked = '-1'
      end
      object DBPersonalCONS_PERI_PAGO: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_PERI_PAGO'
      end
      object DBPersonalCODI_PERI_PAGO: TdxDBGridMaskColumn
        ReadOnly = True
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_PERI_PAGO'
      end
      object DBPersonalNOMB_PERI_PAGO: TdxDBGridMaskColumn
        ReadOnly = True
        Width = 364
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_PERI_PAGO'
      end
      object DBPersonalFECH_SISTEMA: TdxDBGridDateColumn
        ReadOnly = True
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FECH_SISTEMA'
      end
      object DBPersonalUSUA_SISTEMA: TdxDBGridMaskColumn
        ReadOnly = True
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USUA_SISTEMA'
      end
    end
  end
  object PCPFrame2: TPCPFrame [8]
    Tag = 283
    Left = 0
    Top = 50
    Width = 804
    Height = 283
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
    Caption = 'Datos Modificación'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    object SCLDBLabel40: TSCLDBLabel
      Left = 40
      Top = 25
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
      Left = 329
      Top = 25
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
      Left = 40
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
      Left = 40
      Top = 105
      Width = 113
      Height = 32
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
      Caption = 'Observaciones:'
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
      Left = 329
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
    object SCLDBLabel2: TSCLDBLabel
      Left = 40
      Top = 156
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
      FocusControl = CBTipo_Contrato
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tipo de Contrato:'
      Layout = tlTop
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_PERS_TIPO_CONTRATO'
      Field = 'CONS_PERS_TIPO_CONTRATO'
    end
    object SCLDBLabel6: TSCLDBLabel
      Left = 329
      Top = 196
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
      FocusControl = CBPeriodo_Pago
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Período de Pago:'
      Layout = tlTop
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_PERI_PAGO'
      Field = 'CONS_PERI_PAGO'
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 40
      Top = 216
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
      FocusControl = CBNivel_Salarial
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Nivel Salarial:'
      Layout = tlTop
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_PERS_NIVE_SALARIAL'
      Field = 'CONS_PERS_NIVE_SALARIAL'
    end
    object SCLDBLabel1: TSCLDBLabel
      Left = 40
      Top = 236
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
      FocusControl = DBIncremento
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Incremeno Salarial:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel13: TSCLDBLabel
      Left = 9
      Top = 176
      Width = 144
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
      FocusControl = DBAviso
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Aviso Vencimiento Contrato:'
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'DIAS_VENC_CONTRATO'
      Field = 'DIAS_VENC_CONTRATO'
    end
    object SCLDBLabel14: TSCLDBLabel
      Left = 242
      Top = 178
      Width = 59
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
      Caption = 'Días antes'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NUME_CONTRATO'
      Field = 'NUME_CONTRATO'
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 329
      Top = 216
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
      FocusControl = DBSalario
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Salario:'
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'SALARIO'
      Field = 'SALARIO'
    end
    object SCLDBLabel7: TSCLDBLabel
      Left = 329
      Top = 236
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
      FocusControl = DBAux_Salarial
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Aux. Salarial:'
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'AUXI_SALARIAL'
      Field = 'AUXI_SALARIAL'
    end
    object SCLDBLabel8: TSCLDBLabel
      Left = 40
      Top = 256
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
      FocusControl = DBAux_Transporte
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Aux. Transporte:'
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'AUXI_SALARIAL'
      Field = 'AUXI_SALARIAL'
    end
    object SCLDBLabel9: TSCLDBLabel
      Left = 330
      Top = 156
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
      FocusControl = DBNumero_Contrato
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'No. de Contrato:'
      Layout = tlTop
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NUME_CONTRATO'
      Field = 'NUME_CONTRATO'
    end
    object SCLDBLabel10: TSCLDBLabel
      Left = 40
      Top = 65
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
    object SCLDBLabel11: TSCLDBLabel
      Left = 40
      Top = 85
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
      Left = 155
      Top = 25
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
      TabOrder = 1
      DirectInput = False
    end
    object SCLButton27: TTBXButtonSCL
      Left = 304
      Top = 26
      Width = 20
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      SmartFocus = False
      TabOrder = 21
      TabStop = False
    end
    object ENumero_Documento: TdxDBEdit
      Left = 444
      Top = 25
      Width = 145
      TabOrder = 2
      DataField = 'NUME_DOCUMENTO'
      DataSource = DSMovimiento
      StyleController = padr_estilo
    end
    object DBInicial: TdxDBDateEdit
      Left = 155
      Top = 45
      Width = 145
      TabOrder = 3
      DataField = 'FECH_INICIAL'
      DataSource = DSMovimiento
      StyleController = padr_estilo
    end
    object DBFinal: TdxDBDateEdit
      Left = 444
      Top = 45
      Width = 145
      TabOrder = 4
      DataField = 'FECH_FINAL'
      DataSource = DSMovimiento
      StyleController = padr_estilo
    end
    object CBNivel_Salarial: TPCPLookUpComboEdit
      Left = 155
      Top = 216
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'CONS_PERS_NIVE_SALARIAL'
      DataSource = DSMovimiento
      KeyField = 'CONS_PERS_NIVE_SALARIAL'
      ListField = 'NOMB_PERS_NIVE_SALARIAL'
      ListSource = DSQNivel_Salarial
      ParentCtl3D = False
      TabOrder = 13
      DirectInput = False
    end
    object CBPeriodo_Pago: TPCPLookUpComboEdit
      Left = 444
      Top = 196
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'CONS_PERI_PAGO'
      DataSource = DSMovimiento
      KeyField = 'CONS_PERI_PAGO'
      ListField = 'NOMB_PERI_PAGO'
      ListSource = DSQPeriodo_Pago
      ParentCtl3D = False
      TabOrder = 12
      DirectInput = False
    end
    object CBTipo_Contrato: TPCPLookUpComboEdit
      Left = 155
      Top = 156
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'CONS_PERS_TIPO_CONTRATO'
      DataSource = DSMovimiento
      KeyField = 'CONS_PERS_TIPO_CONTRATO'
      ListField = 'NOMB_PERS_TIPO_CONTRATO'
      ListSource = DSQTipo_Contrato
      ParentCtl3D = False
      TabOrder = 8
      DirectInput = False
    end
    object SCLButton2: TTBXButtonSCL
      Left = 305
      Top = 156
      Width = 21
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      SmartFocus = False
      TabOrder = 18
      TabStop = False
    end
    object SCLButton4: TTBXButtonSCL
      Left = 593
      Top = 200
      Width = 21
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      SmartFocus = False
      TabOrder = 19
      TabStop = False
    end
    object SCLButton3: TTBXButtonSCL
      Left = 305
      Top = 218
      Width = 21
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      SmartFocus = False
      TabOrder = 20
      TabStop = False
    end
    object DBIncremento: TdxCurrencyEdit
      Left = 155
      Top = 236
      Width = 81
      TabOrder = 15
      Alignment = taRightJustify
      StyleController = padr_estilo
      DisplayFormat = '0.00 %'
      StoredValues = 1
    end
    object DBAviso: TdxDBEdit
      Left = 155
      Top = 176
      Width = 81
      TabOrder = 10
      DataField = 'DIAS_VENC_CONTRATO'
      DataSource = DSMovimiento
      StyleController = padr_estilo
    end
    object CBIncentivo: TdxDBCheckEdit
      Left = 155
      Top = 196
      Width = 145
      TabOrder = 11
      Alignment = taLeftJustify
      Caption = 'Aplica Incentivo:'
      DataField = 'APLI_INCENTIVO'
      DataSource = DSMovimiento
      StyleController = padr_estilo
      ValueChecked = '1'
      ValueGrayed = '-1'
      ValueUnchecked = '-1'
      StoredValues = 1
    end
    object DBSalario: TdxDBCurrencyEdit
      Left = 444
      Top = 216
      Width = 81
      TabOrder = 14
      Alignment = taRightJustify
      DataField = 'SALARIO'
      DataSource = DSMovimiento
      StyleController = padr_estilo
      DisplayFormat = ',0'
      Nullable = False
      StoredValues = 1
    end
    object DBAux_Salarial: TdxDBCurrencyEdit
      Left = 444
      Top = 236
      Width = 81
      TabOrder = 16
      Alignment = taRightJustify
      DataField = 'AUXI_SALARIAL'
      DataSource = DSMovimiento
      StyleController = padr_estilo
      DisplayFormat = ',0'
      Nullable = False
      StoredValues = 1
    end
    object DBAux_Transporte: TdxDBCurrencyEdit
      Left = 155
      Top = 256
      Width = 81
      TabOrder = 17
      Alignment = taRightJustify
      DataField = 'AUXI_SALARIAL'
      DataSource = DSMovimiento
      StyleController = padr_estilo
      DisplayFormat = ',0'
      Nullable = False
      StoredValues = 1
    end
    object DBNumero_Contrato: TdxDBEdit
      Left = 445
      Top = 156
      Width = 145
      TabOrder = 9
      AutoSize = False
      DataField = 'NUME_CONTRATO'
      DataSource = DSMovimiento
      StyleController = padr_estilo
      Height = 21
    end
    object CBSolicita: TPCPLookUpComboEdit
      Left = 155
      Top = 65
      Width = 260
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
    object SCLButton5: TTBXButtonSCL
      Left = 418
      Top = 85
      Width = 20
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      SmartFocus = False
      TabOrder = 22
      TabStop = False
    end
    object CBAprobo: TPCPLookUpComboEdit
      Left = 155
      Top = 85
      Width = 260
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'CONS_APROBO'
      DataSource = DSMovimiento
      KeyField = 'CONS_PERSONAL'
      ListField = 'NOMB_COMPLETO'
      ListSource = DSQPersonal
      ParentCtl3D = False
      TabOrder = 6
      DirectInput = False
    end
    object SCLButton6: TTBXButtonSCL
      Left = 417
      Top = 65
      Width = 20
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      SmartFocus = False
      TabOrder = 23
      TabStop = False
    end
    object DBObservaciones: TdxDBEdit
      Left = 155
      Top = 105
      Width = 435
      TabOrder = 7
      AutoSize = False
      DataField = 'OBSERVACIONES'
      DataSource = DSMovimiento
      StyleController = padr_estilo
      Height = 32
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 576
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 333
    Width = 804
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
    object Acti_Modi_Confidencial: TAction
      ImageIndex = 4
      OnExecute = Acti_Modi_ConfidencialExecute
    end
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_PERS_MOVIMIENTOS'
    object Tabla_VentanaCONS_PERS_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_PERS_MOVIMIENTO'
      Required = True
    end
    object Tabla_VentanaCONS_PERSONAL: TIntegerField
      FieldName = 'CONS_PERSONAL'
    end
    object Tabla_VentanaCONS_PERS_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_PERS_TIPO_MOVIMIENTO'
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
  object TTemporal: TRxMemoryData [22]
    FieldDefs = <
      item
        Name = 'CONS_PERSONAL'
        DataType = ftInteger
      end
      item
        Name = 'CODI_PERSONAL'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'PRIM_APELLIDO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SEGU_APELLIDO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NOMBRES'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NOMB_COMPLETO'
        DataType = ftString
        Size = 102
      end
      item
        Name = 'NUME_CONTRATO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AUXI_TRANSPORTE'
        DataType = ftFloat
      end
      item
        Name = 'AUXI_SALARIAL'
        DataType = ftFloat
      end
      item
        Name = 'CONS_PERS_CARGO'
        DataType = ftInteger
      end
      item
        Name = 'CODI_PERS_CARGO'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'NOMB_PERS_CARGO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CONS_PERS_NIVE_SALARIAL'
        DataType = ftInteger
      end
      item
        Name = 'CODI_PERS_NIVE_SALARIAL'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'VALO_NIVE_SALARIAL'
        DataType = ftInteger
      end
      item
        Name = 'CONS_PERS_TIPO_CONTRATO'
        DataType = ftInteger
      end
      item
        Name = 'CODI_PERS_TIPO_CONTRATO'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'NOMB_PERS_TIPO_CONTRATO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CONS_PERI_PAGO'
        DataType = ftInteger
      end
      item
        Name = 'CODI_PERI_PAGO'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'NOMB_PERI_PAGO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'FECH_SISTEMA'
        DataType = ftDate
      end
      item
        Name = 'USUA_SISTEMA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CHEQUEADO'
        DataType = ftInteger
      end>
    Left = 40
    Top = 427
    object TTemporalCONS_PERSONAL: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERSONAL'
      Required = True
    end
    object TTemporalCODI_PERSONAL: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERSONAL'
      Required = True
      Size = 12
    end
    object TTemporalNOMB_COMPLETO: TStringField
      DisplayLabel = 'Nombre Completo'
      FieldName = 'NOMB_COMPLETO'
      Required = True
      Size = 102
    end
    object TTemporalNUME_CONTRATO: TStringField
      DisplayLabel = 'Número de Contrato'
      FieldName = 'NUME_CONTRATO'
      Required = True
    end
    object TTemporalAUXI_TRANSPORTE: TFloatField
      DisplayLabel = 'Auxilio de Transporte'
      FieldName = 'AUXI_TRANSPORTE'
      Required = True
      DisplayFormat = '$ ,0'
    end
    object TTemporalAUXI_SALARIAL: TFloatField
      DisplayLabel = 'Auxilio Salarial'
      FieldName = 'AUXI_SALARIAL'
      Required = True
      DisplayFormat = '$ ,0'
    end
    object TTemporalCONS_PERS_NIVE_SALARIAL: TIntegerField
      DisplayLabel = 'No. Nivel salarial'
      FieldName = 'CONS_PERS_NIVE_SALARIAL'
      Required = True
    end
    object TTemporalCODI_PERS_NIVE_SALARIAL: TStringField
      DisplayLabel = 'Cód. Nivel Salarial'
      FieldName = 'CODI_PERS_NIVE_SALARIAL'
      Required = True
      Size = 12
    end
    object TTemporalNOMB_PERS_NIVE_SALARIAL: TStringField
      DisplayLabel = 'Nivel Salarial'
      FieldName = 'NOMB_PERS_NIVE_SALARIAL'
      Required = True
      Size = 60
    end
    object TTemporalVALO_SALARIO: TIntegerField
      DisplayLabel = 'Salario'
      FieldName = 'VALO_SALARIO'
      Required = True
      DisplayFormat = '$ ,0'
    end
    object TTemporalCONS_PERS_TIPO_CONTRATO: TIntegerField
      DisplayLabel = 'No. Tipo de Contrato'
      FieldName = 'CONS_PERS_TIPO_CONTRATO'
      Required = True
    end
    object TTemporalCODI_PERS_TIPO_CONTRATO: TStringField
      DisplayLabel = 'Cód. Tipo de Contrato'
      FieldName = 'CODI_PERS_TIPO_CONTRATO'
      Required = True
      Size = 12
    end
    object TTemporalNOMB_PERS_TIPO_CONTRATO: TStringField
      DisplayLabel = 'Tipo de Contrato'
      FieldName = 'NOMB_PERS_TIPO_CONTRATO'
      Required = True
      Size = 60
    end
    object TTemporalDIAS_VENC_CONTRATO: TIntegerField
      DisplayLabel = 'Aviso Vencimiento Contrato'
      FieldName = 'DIAS_VENC_CONTRATO'
    end
    object TTemporalAPLI_INCENTIVO: TIntegerField
      DisplayLabel = 'Aplica Incentivos'
      FieldName = 'APLI_INCENTIVO'
    end
    object TTemporalCONS_PERI_PAGO: TIntegerField
      DisplayLabel = 'No. Período de Pago'
      FieldName = 'CONS_PERI_PAGO'
      Required = True
    end
    object TTemporalCODI_PERI_PAGO: TStringField
      DisplayLabel = 'Cód. Período de Pago'
      FieldName = 'CODI_PERI_PAGO'
      Required = True
      Size = 12
    end
    object TTemporalNOMB_PERI_PAGO: TStringField
      DisplayLabel = 'Período de Pago'
      FieldName = 'NOMB_PERI_PAGO'
      Required = True
      Size = 60
    end
    object TTemporalFECH_SISTEMA: TDateField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Required = True
    end
    object TTemporalUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Required = True
    end
  end
  object DSTemporal: TDataSource [23]
    AutoEdit = False
    DataSet = TTemporal
    Left = 72
    Top = 427
  end
  object DSQTipo_Documento: TDataSource [24]
    AutoEdit = False
    DataSet = QTipo_Documento
    Left = 72
    Top = 399
  end
  object DSQPeriodo_Pago: TDataSource [25]
    AutoEdit = False
    DataSet = QPeriodo_Pago
    Left = 72
    Top = 371
  end
  object DSQNivel_Salarial: TDataSource [26]
    AutoEdit = False
    DataSet = QNivel_Salarial
    Left = 72
    Top = 343
  end
  object DSQTipo_Contrato: TDataSource [27]
    AutoEdit = False
    DataSet = QTipo_Contrato
    Left = 72
    Top = 315
  end
  object SPModificacion: TStoredProc [28]
    DatabaseName = 'data_base_pcp'
    StoredProcName = 'PRO_GLO_PERS_MODI_CONFIDENCIAL'
    Left = 177
    Top = 296
    ParamData = <
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
        Name = 'PE_CONS_PERS_TIPO_CONTRATO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PERI_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PERS_NIVE_SALARIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_VALO_SALARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_INCR_SALARIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_INCR_NIVEL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_NUME_CONTRATO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_AUXI_TRANSPORTE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_AUXI_SALARIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_DIAS_VENC_CONTRATO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_APLI_INCENTIVO'
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
  object QTipo_Contrato: TQuery [29]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_TIPO_CONTRATO'
      'ORDER BY NOMB_PERS_TIPO_CONTRATO')
    Left = 40
    Top = 315
  end
  object QNivel_Salarial: TQuery [30]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_NIVE_SALARIALES'
      'ORDER BY NOMB_PERS_NIVE_SALARIAL')
    Left = 40
    Top = 343
  end
  object QPeriodo_Pago: TQuery [31]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_PERI_PAGO'
      'ORDER BY NOMB_PERI_PAGO')
    Left = 40
    Top = 371
  end
  object QTipo_Documento: TQuery [32]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_MOVI_TIPO_DOCUMENTO'
      'ORDER BY NOMB_PERS_MOVI_TIPO_DOCUMENTO')
    Left = 40
    Top = 399
  end
  object TMovimiento: TRxMemoryData [33]
    FieldDefs = <>
    BeforePost = TMovimientoBeforePost
    Left = 176
    Top = 333
    object TMovimientoCONS_SOLICITA: TIntegerField
      DisplayLabel = 'Solicitado Por'
      FieldName = 'CONS_SOLICITA'
    end
    object TMovimientoCONS_APROBO: TIntegerField
      DisplayLabel = 'Aprobado Por'
      FieldName = 'CONS_APROBO'
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
      Required = True
    end
    object TMovimientoFECH_FINAL: TDateField
      DisplayLabel = 'Fecha Final'
      FieldName = 'FECH_FINAL'
    end
    object TMovimientoOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object TMovimientoCONS_PERS_CARGO: TIntegerField
      DisplayLabel = 'Cargo'
      FieldName = 'CONS_PERS_CARGO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_CARGOS.CONS_PERS_CARGO'
    end
    object TMovimientoCONS_PERS_TIPO_CONTRATO: TIntegerField
      DisplayLabel = 'Tipo de Contrato'
      FieldName = 'CONS_PERS_TIPO_CONTRATO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_CONTRATO.CONS_PERS_TIPO_CONTRATO'
    end
    object TMovimientoDIAS_VENC_CONTRATO: TIntegerField
      DisplayLabel = 'Aviso Vencimiento Contrato'
      FieldName = 'DIAS_VENC_CONTRATO'
    end
    object TMovimientoAPLI_INCENTIVO: TIntegerField
      DisplayLabel = 'Aplica Incentivos'
      FieldName = 'APLI_INCENTIVO'
    end
    object TMovimientoCONS_PERI_PAGO: TIntegerField
      DisplayLabel = 'Período de Pago'
      FieldName = 'CONS_PERI_PAGO'
      Origin = 'DATA_BASE_PCP.SIS_PERI_PAGO.CONS_PERI_PAGO'
    end
    object TMovimientoCONS_PERS_NIVE_SALARIAL: TIntegerField
      DisplayLabel = 'Nivel Salarial'
      FieldName = 'CONS_PERS_NIVE_SALARIAL'
      Origin = 'DATA_BASE_PCP.GLO_PERS_NIVE_SALARIALES.CONS_PERS_NIVE_SALARIAL'
    end
    object TMovimientoSALARIO: TFloatField
      DisplayLabel = 'Salario'
      FieldName = 'SALARIO'
    end
    object TMovimientoAUXI_SALARIAL: TFloatField
      DisplayLabel = 'Aux. Salarial'
      FieldName = 'AUXI_SALARIAL'
    end
    object TMovimientoAUXI_TRANSPORTE: TFloatField
      DisplayLabel = 'Aux. Transporte'
      FieldName = 'AUXI_TRANSPORTE'
    end
    object TMovimientoNUME_CONTRATO: TStringField
      DisplayLabel = 'Número de Contrato'
      FieldName = 'NUME_CONTRATO'
    end
  end
  object DSMovimiento: TDataSource [34]
    DataSet = TMovimiento
    Left = 208
    Top = 333
  end
  object QPersonal: TQuery [35]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERSONAL'
      'ORDER BY NOMB_COMPLETO')
    Left = 144
    Top = 382
  end
  object DSQPersonal: TDataSource [36]
    AutoEdit = False
    DataSet = QPersonal
    Left = 176
    Top = 382
  end
end

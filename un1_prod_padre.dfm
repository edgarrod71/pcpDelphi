inherited fn1_prod_padre: Tfn1_prod_padre
  Left = 0
  Top = 139
  Width = 812
  Height = 436
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
    Top = 408
    Width = 804
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
    Visible = False
    inherited padr_barra: TTBXToolbar
      ProcessShortCuts = False
      object padr_boto_prod_consultar: TTBXSubmenuItem [0]
        Caption = 'Consultar'
        ImageIndex = 25
        Images = _fMDI.imag_grandes
        LinkSubitems = _fMDI.menu_produccion
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 137
    Width = 804
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 407
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
    Top = 399
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 144
    Width = 804
  end
  object padr_fram_informacion: TPCPFrame [8]
    Tag = 92
    Left = 0
    Top = 45
    Width = 804
    Height = 92
    Align = alTop
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Caption = 'Información de la orden de producción'
    Titulo_Color = 16244694
    FlatBorder = True
    object padr_SCLDBLabel1: TSCLDBLabel
      Left = 10
      Top = 24
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
      FocusControl = padr_dxDBEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'No. orden:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object padr_SCLDBLabel2: TSCLDBLabel
      Left = 530
      Top = 26
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
      FocusControl = padr_dxDBEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha creación:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object padr_SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 44
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
      FocusControl = padr_dxDBEdit3
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Usuario:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object padr_scllabel4: TSCLDBLabel
      Left = 270
      Top = 44
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
      FocusControl = padr_dxDBEdit4
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Referencia:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object padr_scllabel5: TSCLDBLabel
      Left = 530
      Top = 44
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
      FocusControl = padr_dxDBEdit5
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'C.I.R.:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object padr_scllabel6: TSCLDBLabel
      Left = 10
      Top = 64
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
      FocusControl = padr_dxDBEdit6
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Variación:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object padr_scllabel7: TSCLDBLabel
      Left = 270
      Top = 64
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
      FocusControl = padr_dxDBEdit7
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Nombre referencia:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object padr_labe_nume_lote: TSCLDBLabel
      Left = 270
      Top = 24
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
      FocusControl = padr_comb_nume_lote
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Lote:'
      Transparent = True
      Visible = False
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object padr_dxDBEdit1: TdxDBEdit
      Left = 112
      Top = 24
      Width = 130
      Enabled = False
      TabOrder = 1
      Visible = False
      DataField = 'NUME_PROD_ORDEN'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object padr_dxDBEdit2: TdxDBEdit
      Tag = -1
      Left = 632
      Top = 26
      Width = 130
      Enabled = False
      TabOrder = 2
      DataField = 'FECH_SISTEMA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object padr_comb_nume_lote: TPCPLookUpComboEdit
      Left = 372
      Top = 24
      Width = 61
      Height = 21
      DropDownCount = 8
      EscapeClear = False
      Ctl3D = True
      KeyField = 'cons_prod_lote'
      ListField = 'nume_lote'
      ListSource = padr_data_lotes
      ParentCtl3D = False
      TabOrder = 9
      Visible = False
      DirectInput = False
    end
    object padr_boto_menu_Referencia: TTBXButtonSCL
      Left = 504
      Top = 44
      Width = 24
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      DropDownMenu = _fMDI.mdi_menu_referencia
      ImageIndex = 64
      Images = _fMDI.imagenesPCP
      SmartFocus = False
      TabOrder = 10
      TabStop = False
    end
    object padr_boto_info_orden: TTBXButtonSCL
      Left = 245
      Top = 25
      Width = 24
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      DropDownMenu = _fMDI.mdi_menu_orde_produccion
      ImageIndex = 64
      Images = _fMDI.imagenesPCP
      SmartFocus = False
      TabOrder = 11
      TabStop = False
    end
    object padr_dxDBEdit4: TdxDBEdit
      Tag = -1
      Left = 372
      Top = 44
      Width = 130
      Enabled = False
      TabOrder = 4
      DataField = 'CODI_REFERENCIA'
      DataSource = padr_data_prod_referencias
      StyleController = padr_estilo
    end
    object padr_dxDBEdit5: TdxDBEdit
      Tag = -1
      Left = 632
      Top = 44
      Width = 130
      Color = clWhite
      Enabled = False
      TabOrder = 5
      DataField = 'CODI_INTE_REFERENCIA'
      DataSource = padr_data_prod_referencias
      StyleController = padr_estilo
    end
    object padr_dxDBEdit6: TdxDBEdit
      Tag = -1
      Left = 112
      Top = 64
      Width = 130
      Enabled = False
      TabOrder = 6
      DataField = 'NOMB_REFE_TIPO_VARIACION'
      DataSource = padr_data_prod_referencias
      StyleController = padr_estilo
    end
    object padr_dxDBEdit7: TdxDBEdit
      Tag = -1
      Left = 372
      Top = 64
      Width = 261
      Enabled = False
      TabOrder = 7
      DataField = 'NOMB_REFERENCIA'
      DataSource = padr_data_prod_referencias
      StyleController = padr_estilo
    end
    object comb_nume_orden: TPCPLookUpComboEdit
      Left = 112
      Top = 24
      Width = 130
      Height = 21
      DropDownCount = 8
      EscapeClear = False
      Ctl3D = True
      KeyField = 'cons_prod_orden'
      ListField = 'nume_prod_orden'
      ListSource = data_ventana
      ParentCtl3D = False
      TabOrder = 8
      DirectInput = False
    end
    object padr_dxDBEdit3: TdxDBEdit
      Tag = -1
      Left = 112
      Top = 44
      Width = 130
      Enabled = False
      TabOrder = 3
      DataField = 'USUA_SISTEMA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
  end
  inherited data_ventana: TDataSource
    DataSet = padr_quer_ordenes
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_buscar: TAction
      Enabled = False
      Visible = True
    end
    inherited padr_acti_imprimir: TAction
      Enabled = False
    end
    inherited padr_acti_ayuda: TAction
      Enabled = False
    end
    inherited padr_acti_salir: TAction
      Enabled = False
    end
    inherited padr_acti_aceptar: TAction
      Enabled = False
      Visible = True
    end
    inherited acti_padr_cancelar_2: TAction
      Enabled = False
    end
    inherited padr_acti_nuevo: TDataSetInsert
      Enabled = False
    end
    inherited padr_acti_modificar: TDataSetEdit
      Visible = True
    end
    inherited padr_acti_eliminar: TDataSetDelete
      Visible = True
    end
    inherited padr_acti_duplicar: TAction
      Enabled = False
    end
    inherited padr_acti_elim_todos: TAction
      Enabled = False
    end
    inherited padr_acti_actualizar: TDataSetRefresh
      Caption = ''
    end
    inherited padr_acti_expo_xls: TAction
      Enabled = False
    end
    inherited padr_acti_expo_HTML: TAction
      Enabled = False
    end
    inherited padr_acti_expo_arch_sepa_comas: TAction
      Enabled = False
    end
  end
  inherited padr_estilo: TdxEditStyleController
    Left = 674
    Top = 10
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController
    Left = 706
    Top = 10
  end
  inherited padr_esti_panel: TAdvPanelStyler
    Left = 610
    Top = 10
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler
    Left = 642
    Top = 10
  end
  inherited padr_pict_container: TPictureContainer
    Left = 738
    Top = 13
  end
  object padr_quer_ordenes: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_prod_orden, nume_prod_orden,'
      'cons_referencia, fech_sistema, usua_sistema'
      'from pcp_prod_ordenes'
      'where anulada = -1'
      'order by nume_prod_orden')
    Left = 250
    Top = 5
  end
  object padr_quer_prod_referencias: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Select * from'
      'vis_pcp_prod_orde_referencias'
      'where cons_prod_orden = :cons_prod_orden'
      'order by cons_referencia')
    Left = 427
    Top = 4
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_ORDEN'
        ParamType = ptUnknown
      end>
  end
  object padr_data_prod_referencias: TDataSource
    DataSet = padr_quer_prod_referencias
    Left = 427
    Top = 32
  end
  object padr_quer_lotes: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      
        'Select cons_prod_lote, cast(nume_lote as VARCHAR(12)) as nume_lo' +
        'te'
      'from pcp_prod_lotes'
      'where cons_prod_orden = :cons_prod_orden'
      'order by nume_lote')
    Left = 828
    Top = 6
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_orden'
        ParamType = ptInput
      end>
  end
  object padr_data_lotes: TDataSource
    DataSet = padr_quer_lotes
    Left = 857
    Top = 6
  end
end

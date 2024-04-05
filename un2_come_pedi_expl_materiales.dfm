inherited fn2_come_pedi_expl_materiales: Tfn2_come_pedi_expl_materiales
  Left = 66
  Top = 33
  Width = 812
  Height = 612
  Caption = 'Explosión de materiales por pedido'
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 575
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
    inherited padr_beve_1: TBevel
      Width = 1010
    end
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 584
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
  object PCPFrame1: TPCPFrame [6]
    Tag = 124
    Left = 0
    Top = 54
    Width = 804
    Height = 124
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
    Caption = 'Información del pedido'
    Titulo_Color = 16244694
    FlatBorder = True
    object SCLDBLabel2: TSCLDBLabel
      Left = 10
      Top = 48
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
      FocusControl = dxDBEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Temporada:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 270
      Top = 48
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
      FocusControl = dxDBEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Cliente:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 10
      Top = 72
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
      FocusControl = dxDBEdit3
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha pedido:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 10
      Top = 96
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
      FocusControl = dxDBEdit5
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha entrega:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel6: TSCLDBLabel
      Left = 270
      Top = 72
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
      FocusControl = dxDBEdit4
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Vendedor:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel8: TSCLDBLabel
      Left = 270
      Top = 96
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
      FocusControl = edit_prio_pedido
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Prioridad:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel1: TSCLDBLabel
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'No. pedido:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel7: TSCLDBLabel
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
      FocusControl = comb_orde_compra
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Orden de compra:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object dxDBEdit1: TdxDBEdit
      Left = 112
      Top = 48
      Width = 130
      Enabled = False
      TabOrder = 1
      DataField = 'NOMB_REFE_TEMPORADA'
      DataSource = data_pedidos
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 372
      Top = 48
      Width = 260
      Enabled = False
      TabOrder = 2
      DataField = 'NOMB_TERCERO'
      DataSource = data_pedidos
      StyleController = padr_estilo
    end
    object dxDBEdit3: TdxDBEdit
      Left = 112
      Top = 72
      Width = 130
      Enabled = False
      TabOrder = 3
      DataField = 'FECH_PEDIDO'
      DataSource = data_pedidos
      StyleController = padr_estilo
    end
    object dxDBEdit4: TdxDBEdit
      Left = 372
      Top = 72
      Width = 260
      Enabled = False
      TabOrder = 4
      DataField = 'NOMB_COME_VENDEDOR'
      DataSource = data_pedidos
      StyleController = padr_estilo
    end
    object dxDBEdit5: TdxDBEdit
      Left = 112
      Top = 96
      Width = 130
      Enabled = False
      TabOrder = 5
      DataField = 'FECH_ENTREGA'
      DataSource = data_pedidos
      StyleController = padr_estilo
    end
    object edit_prio_pedido: TdxDBEdit
      Left = 372
      Top = 96
      Width = 130
      Color = clWhite
      TabOrder = 6
      TabStop = False
      DataField = 'NOMB_COME_PRIO_PEDIDO'
      DataSource = data_pedidos
      ReadOnly = True
      StyleController = padr_estilo
      StoredValues = 64
    end
    object comb_pedido: TPCPLookUpComboEdit
      Left = 112
      Top = 24
      Width = 130
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'cons_pedido'
      DataSource = data_ventana
      KeyField = 'cons_pedido'
      ListField = 'nume_pedido'
      ListSource = data_pedidos
      ParentCtl3D = False
      TabOrder = 7
      OnChange = comb_pedidoChange
      DirectInput = False
    end
    object comb_orde_compra: TPCPLookUpComboEdit
      Left = 372
      Top = 24
      Width = 130
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'cons_pedi_referencia'
      DataSource = data_ventana
      KeyField = 'cons_pedi_Referencia'
      ListField = 'orde_compra'
      ListSource = data_pedi_referencias
      ParentCtl3D = False
      TabOrder = 8
      OnChange = comb_orde_compraChange
      DirectInput = False
    end
    object padr_boto_menu_Referencia: TSCLButton
      Left = 245
      Top = 25
      Width = 19
      Height = 19
      TabOrder = 9
      TabStop = False
      Down = False
      DropDownMenu = _fMDI.mdi_menu_comercial
      MarkDropDown = False
      Images = _fMDI.imagenesPCP
      ImageIndex = 64
      Flat = True
      Color = clBtnFace
      Style = bsNew
      BackColor = clBtnFace
      ColorBordeBoton = clBtnShadow
      TipoPintadoBoton = tpbContorno
      RedondeoBoton = 4
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
    Width = 804
  end
  inline pane_info_referencia: Tffra_info_refe_basico [9]
    Top = 178
    Width = 804
    Align = alTop
    TabOrder = 7
    inherited fram_pane_sele_referencia: TPCPFrame
      Width = 804
      Align = alTop
      OnResize = pane_info_referenciafram_pane_sele_referenciaResize
      inherited Panel1: TPanel
        Width = 798
        inherited dxDBEdit9: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit10: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
      end
      inherited dxDBEdit4: TdxDBEdit
        StyleController = padr_estilo
        StoredValues = 64
      end
      inherited dxDBEdit6: TdxDBEdit
        StyleController = padr_estilo
        StoredValues = 64
      end
      inherited dxDBEdit7: TdxDBEdit
        StyleController = padr_estilo
        StoredValues = 64
      end
      inherited dxDBEdit5: TdxDBEdit
        StyleController = padr_estilo
        StoredValues = 64
      end
      inherited dxDBEdit8: TdxDBEdit
        StyleController = padr_estilo
        StoredValues = 64
      end
      inherited dxDBEdit3: TdxDBEdit
        StyleController = padr_estilo
        StoredValues = 64
      end
      inherited dxDBEdit2: TdxDBEdit
        StyleController = padr_estilo
        StoredValues = 64
      end
      inherited dxDBEdit1: TdxDBEdit
        StyleController = padr_estilo
        StoredValues = 64
      end
    end
    inherited quer_referencias: TQuery
      DataSource = data_pedi_referencias
    end
  end
  object PCPFrame2: TPCPFrame [10]
    Tag = 299
    Left = 0
    Top = 303
    Width = 804
    Height = 272
    Align = alClient
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Caption = 'Explosión de materiales e insumos'
    Titulo_Color = 16244694
    Boton_Visible = False
    FlatBorder = True
    object page: TdxPageControl
      Left = 3
      Top = 22
      Width = 798
      Height = 247
      ActivePage = dxTabSheet1
      Align = alClient
      HideButtons = False
      HotTrack = False
      MultiLine = False
      OwnerDraw = False
      RaggedRight = False
      ScrollOpposite = False
      TabHeight = 0
      TabOrder = 1
      TabPosition = dxtpTop
      TabWidth = 0
      object dxTabSheet1: TdxTabSheet
        Caption = 'Detallada'
        object grid_detallada: TSCLDBGrid
          Left = 0
          Top = 0
          Width = 798
          Height = 224
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CONS_PEDI_REFERENCIA'
          ShowGroupPanel = True
          ShowSummaryFooter = True
          SummaryGroups = <
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  SummaryField = 'CONS_UNIDAD'
                  SummaryFormat = ',0.00000'
                  SummaryType = cstAvg
                end
                item
                  SummaryField = 'CONS_TOTAL'
                  SummaryFormat = ',0.00000'
                  SummaryType = cstSum
                end
                item
                  SummaryField = 'EXISTENTE'
                  SummaryFormat = ',0.00000'
                  SummaryType = cstSum
                end
                item
                  SummaryField = 'DISPONIBLE'
                  SummaryFormat = ',0.00000'
                  SummaryType = cstSum
                end
                item
                  SummaryField = 'ENTREGADO'
                  SummaryFormat = ',0.00000'
                  SummaryType = cstSum
                end
                item
                  SummaryField = 'DIFERENCIA'
                  SummaryFormat = ',0.00000'
                  SummaryType = cstSum
                end>
              Name = 'grid_detalladaSummaryGroup1'
            end>
          SummarySeparator = ', '
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ArrowsColor = clHighlight
          AutoSearchColor = 4227327
          AutoSearchTextColor = clBlack
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = data_detallada
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
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          ShowRowFooter = True
          object grid_detalladaTIPO: TdxDBGridImageColumn
            Alignment = taLeftJustify
            MinWidth = 16
            Width = 33
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIPO'
          end
          object grid_detalladaCONS_PEDI_REFERENCIA: TdxDBGridMaskColumn
            Visible = False
            Width = 210
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PEDI_REFERENCIA'
          end
          object grid_detalladaNUME_PEDIDO: TdxDBGridMaskColumn
            Visible = False
            Width = 127
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_PEDIDO'
          end
          object grid_detalladaORDE_COMPRA: TdxDBGridMaskColumn
            Width = 79
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ORDE_COMPRA'
          end
          object grid_detalladaCONS_REFE_MATERIAL: TdxDBGridMaskColumn
            Visible = False
            Width = 195
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_MATERIAL'
          end
          object grid_detalladaCONS_MATE_REFERENCIA: TdxDBGridMaskColumn
            Visible = False
            Width = 218
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_MATE_REFERENCIA'
          end
          object grid_detalladaNOMB_MATE_GRUPO: TdxDBGridMaskColumn
            Width = 92
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MATE_GRUPO'
          end
          object grid_detalladaNOMB_MATE_SUBGRUPO: TdxDBGridMaskColumn
            Width = 129
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MATE_SUBGRUPO'
          end
          object grid_detalladaCODI_MATE_REFERENCIA: TdxDBGridMaskColumn
            Width = 143
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_MATE_REFERENCIA'
            SummaryFooterType = cstCount
            SummaryFooterFormat = ',0'
          end
          object grid_detalladaNOMB_MATE_REFERENCIA: TdxDBGridMaskColumn
            Width = 174
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MATE_REFERENCIA'
          end
          object grid_detalladaCONS_MATE_GRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 175
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_MATE_GRUPO'
          end
          object grid_detalladaCODI_MATE_GRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 168
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_MATE_GRUPO'
          end
          object grid_detalladaCONS_MATE_SUBGRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 208
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_MATE_SUBGRUPO'
          end
          object grid_detalladaCODI_MATE_SUBGRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 205
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_MATE_SUBGRUPO'
          end
          object grid_detalladaCONS_PROVEEDOR: TdxDBGridMaskColumn
            Visible = False
            Width = 163
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PROVEEDOR'
          end
          object grid_detalladaCODI_PROVEEDOR: TdxDBGridMaskColumn
            Visible = False
            Width = 159
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PROVEEDOR'
          end
          object grid_detalladaNOMB_PROVEEDOR: TdxDBGridMaskColumn
            Width = 154
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PROVEEDOR'
          end
          object grid_detalladaCONS_COLOR: TdxDBGridMaskColumn
            Visible = False
            Width = 116
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COLOR'
          end
          object grid_detalladaCODI_COLOR: TdxDBGridMaskColumn
            Visible = False
            Width = 114
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COLOR'
          end
          object grid_detalladaNOMB_COLOR: TdxDBGridMaskColumn
            Width = 131
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COLOR'
          end
          object grid_detalladaCONS_UNIDAD: TdxDBGridMaskColumn
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_UNIDAD'
          end
          object grid_detalladaNOMB_UNID_MEDIDA: TdxDBGridMaskColumn
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_UNID_MEDIDA'
          end
          object grid_detalladaCONS_TOTAL: TdxDBGridMaskColumn
            Width = 111
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_TOTAL'
          end
          object grid_detalladaEXISTENTE: TdxDBGridMaskColumn
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EXISTENTE'
          end
          object grid_detalladaDISPONIBLE: TdxDBGridMaskColumn
            Width = 94
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DISPONIBLE'
          end
          object grid_detalladaENTREGADO: TdxDBGridMaskColumn
            Width = 87
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ENTREGADO'
          end
          object grid_detalladaDIFERENCIA: TdxDBGridMaskColumn
            Width = 89
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DIFERENCIA'
          end
        end
      end
      object dxTabSheet4: TdxTabSheet
        Caption = 'Agrupada por Orden de compra y material'
      end
      object dxTabSheet2: TdxTabSheet
        Caption = 'Agrupada por material y color'
      end
      object dxTabSheet3: TdxTabSheet
        Caption = 'Agrupada por material'
      end
    end
  end
  inherited padr_acciones: TActionList [11]
    inherited padr_acti_buscar: TAction
      Enabled = False
    end
    inherited padr_acti_ayuda: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Visible = False
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
    inherited padr_acti_guar_cerrar: TDataSetPost
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
    DataSet = myTabla_ventana
  end
  object quer_pedidos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select *'
      'FROM vis_pcp_pedidos'
      'order by nume_pedido')
    Left = 8
    Top = 22
    object quer_pedidosCONS_PEDIDO: TIntegerField
      FieldName = 'CONS_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_PEDIDO'
    end
    object quer_pedidosNUME_PEDIDO: TStringField
      FieldName = 'NUME_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.NUME_PEDIDO'
    end
    object quer_pedidosCONS_REFE_TEMPORADA: TIntegerField
      FieldName = 'CONS_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_REFE_TEMPORADA'
    end
    object quer_pedidosNOMB_REFE_TEMPORADA: TStringField
      FieldName = 'NOMB_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.NOMB_REFE_TEMPORADA'
      Size = 60
    end
    object quer_pedidosCONS_TERCERO: TIntegerField
      FieldName = 'CONS_TERCERO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_TERCERO'
    end
    object quer_pedidosNOMB_TERCERO: TStringField
      FieldName = 'NOMB_TERCERO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.NOMB_TERCERO'
      Size = 120
    end
    object quer_pedidosFECH_PEDIDO: TDateTimeField
      FieldName = 'FECH_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.FECH_PEDIDO'
      DisplayFormat = 'dd MMM yyyy'
    end
    object quer_pedidosFECH_ENTREGA: TDateTimeField
      FieldName = 'FECH_ENTREGA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.FECH_ENTREGA'
      DisplayFormat = 'dd MMM yyyy'
    end
    object quer_pedidosOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.OBSERVACIONES'
      Size = 240
    end
    object quer_pedidosCONS_COME_VENDEDOR: TIntegerField
      FieldName = 'CONS_COME_VENDEDOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_COME_VENDEDOR'
    end
    object quer_pedidosNOMB_COME_VENDEDOR: TStringField
      FieldName = 'NOMB_COME_VENDEDOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.NOMB_COME_VENDEDOR'
      Size = 60
    end
    object quer_pedidosCONS_COME_PRIO_PEDIDO: TIntegerField
      FieldName = 'CONS_COME_PRIO_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_COME_PRIO_PEDIDO'
    end
    object quer_pedidosNOMB_COME_PRIO_PEDIDO: TStringField
      FieldName = 'NOMB_COME_PRIO_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.NOMB_COME_PRIO_PEDIDO'
      Size = 60
    end
    object quer_pedidosCOLO_COME_PRIO_PEDIDO: TIntegerField
      FieldName = 'COLO_COME_PRIO_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.COLO_COME_PRIO_PEDIDO'
    end
    object quer_pedidosCONS_DESPACHAR_A: TIntegerField
      FieldName = 'CONS_DESPACHAR_A'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_DESPACHAR_A'
    end
    object quer_pedidosCONS_FACTURAR_A: TIntegerField
      FieldName = 'CONS_FACTURAR_A'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_FACTURAR_A'
    end
    object quer_pedidosFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.FECH_SISTEMA'
    end
    object quer_pedidosUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.USUA_SISTEMA'
    end
  end
  object data_pedidos: TDataSource
    DataSet = quer_pedidos
    Left = 40
    Top = 14
  end
  object myTabla_ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_pedido'
        DataType = ftInteger
      end
      item
        Name = 'cons_pedi_referencia'
        DataType = ftInteger
      end
      item
        Name = 'todos'
        DataType = ftBoolean
      end>
    AfterInsert = myTabla_ventanaAfterInsert
    AfterPost = myTabla_ventanaAfterPost
    Left = 218
    Top = 4
    object myTabla_ventanacons_pedido: TIntegerField
      FieldName = 'cons_pedido'
    end
    object myTabla_ventanacons_pedi_referencia: TIntegerField
      FieldName = 'cons_pedi_referencia'
    end
    object myTabla_ventanatodos: TBooleanField
      FieldName = 'todos'
    end
  end
  object quer_pedi_referencias: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT *'
      'FROM VIS_PCP_PEDI_REFERENCIAS'
      'WHERE CONS_PEDIDO = :CONS_PEDIDO')
    Left = 786
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_pedido'
        ParamType = ptUnknown
      end>
  end
  object data_pedi_referencias: TDataSource
    DataSet = quer_pedi_referencias
    Left = 818
    Top = 5
  end
  object quer_detallada: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      
        'SELECT TIPO, CONS_PEDI_REFERENCIA, NUME_PEDIDO, ORDE_COMPRA, CON' +
        'S_REFE_MATERIAL,'
      
        '    CONS_MATE_REFERENCIA, CODI_MATE_REFERENCIA, NOMB_MATE_REFERE' +
        'NCIA,'
      '    CONS_MATE_GRUPO, CODI_MATE_GRUPO, NOMB_MATE_GRUPO,'
      '    CONS_MATE_SUBGRUPO, CODI_MATE_SUBGRUPO, NOMB_MATE_SUBGRUPO,'
      '    CONS_PROVEEDOR, CODI_PROVEEDOR, NOMB_PROVEEDOR,'
      '    CONS_COLOR, CODI_COLOR, NOMB_COLOR,'
      '    NOMB_UNID_MEDIDA,'
      '    AVG(CONS_UNIDAD) CONS_UNIDAD,'
      '    AVG(CONS_TOTAL) CONS_TOTAL,'
      '    AVG(COST_UNIDAD) COST_UNIDAD,'
      '    SUM(COST_TOTAL) COST_TOTAL,'
      '    AVG(EXISTENTE) EXISTENTE,'
      '    AVG(DISPONIBLE) DISPONIBLE,'
      '    AVG(ENTREGADO) ENTREGADO,'
      '    SUM(DIFERENCIA) DIFERENCIA'
      'FROM CON_PCP_PEDI_EXPL_COMPLETO(:CONS_PEDIDO)'
      
        'GROUP BY TIPO, CONS_PEDI_REFERENCIA, NUME_PEDIDO, ORDE_COMPRA, C' +
        'ONS_REFE_MATERIAL,'
      
        '    CONS_MATE_REFERENCIA, CODI_MATE_REFERENCIA, NOMB_MATE_REFERE' +
        'NCIA,'
      '    CONS_MATE_GRUPO, CODI_MATE_GRUPO, NOMB_MATE_GRUPO,'
      '    CONS_MATE_SUBGRUPO, CODI_MATE_SUBGRUPO, NOMB_MATE_SUBGRUPO,'
      '    CONS_PROVEEDOR, CODI_PROVEEDOR, NOMB_PROVEEDOR,'
      '    CONS_COLOR, CODI_COLOR, NOMB_COLOR, NOMB_UNID_MEDIDA')
    Left = 19
    Top = 396
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_pedido'
        ParamType = ptUnknown
      end>
    object quer_detalladaTIPO: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
    end
    object quer_detalladaCONS_PEDI_REFERENCIA: TIntegerField
      FieldName = 'CONS_PEDI_REFERENCIA'
    end
    object quer_detalladaNUME_PEDIDO: TStringField
      FieldName = 'NUME_PEDIDO'
      Size = 12
    end
    object quer_detalladaORDE_COMPRA: TStringField
      DisplayLabel = 'Orden compra'
      FieldName = 'ORDE_COMPRA'
      Size = 12
    end
    object quer_detalladaCONS_REFE_MATERIAL: TIntegerField
      FieldName = 'CONS_REFE_MATERIAL'
    end
    object quer_detalladaCONS_MATE_REFERENCIA: TIntegerField
      FieldName = 'CONS_MATE_REFERENCIA'
    end
    object quer_detalladaCODI_MATE_REFERENCIA: TStringField
      DisplayLabel = 'Cód. material'
      FieldName = 'CODI_MATE_REFERENCIA'
      Size = 12
    end
    object quer_detalladaNOMB_MATE_REFERENCIA: TStringField
      DisplayLabel = 'Nombre material'
      FieldName = 'NOMB_MATE_REFERENCIA'
      Size = 60
    end
    object quer_detalladaCONS_MATE_GRUPO: TIntegerField
      FieldName = 'CONS_MATE_GRUPO'
    end
    object quer_detalladaCODI_MATE_GRUPO: TStringField
      FieldName = 'CODI_MATE_GRUPO'
      Size = 12
    end
    object quer_detalladaNOMB_MATE_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_MATE_GRUPO'
      Size = 60
    end
    object quer_detalladaCONS_MATE_SUBGRUPO: TIntegerField
      FieldName = 'CONS_MATE_SUBGRUPO'
    end
    object quer_detalladaCODI_MATE_SUBGRUPO: TStringField
      FieldName = 'CODI_MATE_SUBGRUPO'
      Size = 12
    end
    object quer_detalladaNOMB_MATE_SUBGRUPO: TStringField
      DisplayLabel = 'Subgrupo'
      FieldName = 'NOMB_MATE_SUBGRUPO'
      Size = 60
    end
    object quer_detalladaCONS_PROVEEDOR: TIntegerField
      FieldName = 'CONS_PROVEEDOR'
    end
    object quer_detalladaCODI_PROVEEDOR: TIntegerField
      FieldName = 'CODI_PROVEEDOR'
    end
    object quer_detalladaNOMB_PROVEEDOR: TIntegerField
      DisplayLabel = 'Proveedor'
      FieldName = 'NOMB_PROVEEDOR'
    end
    object quer_detalladaCONS_COLOR: TIntegerField
      FieldName = 'CONS_COLOR'
    end
    object quer_detalladaCODI_COLOR: TStringField
      FieldName = 'CODI_COLOR'
      Size = 12
    end
    object quer_detalladaNOMB_COLOR: TStringField
      DisplayLabel = 'Color'
      FieldName = 'NOMB_COLOR'
      Size = 60
    end
    object quer_detalladaNOMB_UNID_MEDIDA: TStringField
      DisplayLabel = 'U. medida'
      FieldName = 'NOMB_UNID_MEDIDA'
      Size = 60
    end
    object quer_detalladaCONS_UNIDAD: TFloatField
      DisplayLabel = 'Consumo prenda'
      FieldName = 'CONS_UNIDAD'
    end
    object quer_detalladaCONS_TOTAL: TFloatField
      DisplayLabel = 'Total requerido'
      FieldName = 'CONS_TOTAL'
    end
    object quer_detalladaEXISTENTE: TFloatField
      DisplayLabel = 'Existente'
      FieldName = 'EXISTENTE'
    end
    object quer_detalladaDISPONIBLE: TFloatField
      DisplayLabel = 'Disponible'
      FieldName = 'DISPONIBLE'
    end
    object quer_detalladaENTREGADO: TFloatField
      DisplayLabel = 'Entregado'
      FieldName = 'ENTREGADO'
    end
    object quer_detalladaDIFERENCIA: TFloatField
      DisplayLabel = 'Diferencia'
      FieldName = 'DIFERENCIA'
    end
  end
  object data_detallada: TDataSource
    DataSet = quer_detallada
    Left = 51
    Top = 396
  end
end

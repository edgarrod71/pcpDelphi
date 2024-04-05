inherited fcn1_prod_cons_pedidos: Tfcn1_prod_cons_pedidos
  Left = 15
  Top = 112
  Width = 812
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Width = 804
  end
  inherited padr_pane_1: TPanel
    Width = 578
    inherited padr_pagina: TdxPageControl
      Width = 568
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Top = 151
          Width = 178
          Height = 281
          KeyField = 'CONS_PROD_ORDEN'
          SummaryGroups = <
            item
              DefaultGroup = False
              SummaryItems = <>
              Name = 'padr_summary_grid'
            end
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  ColumnName = 'padr_gridNUME_PROD_ORDEN'
                  SummaryField = 'CONS_PROD_ORDEN'
                  SummaryFormat = ',0'
                  SummaryType = cstCount
                end
                item
                  ColumnName = 'padr_gridUNIDADES'
                  SummaryField = 'UNIDADES'
                  SummaryFormat = ',0'
                  SummaryType = cstSum
                end>
              Name = 'padr_gridSummaryGroup2'
            end>
          Filter.Criteria = {00000000}
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
          object padr_gridCONS_PROD_ORDEN: TdxDBGridMaskColumn
            Visible = False
            Width = 109
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PROD_ORDEN'
          end
          object padr_gridNUME_PROD_ORDEN: TdxDBGridMaskColumn
            Sorted = csUp
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_PROD_ORDEN'
            SummaryFooterType = cstCount
            SummaryFooterField = 'CONS_PROD_ORDEN'
            SummaryFooterFormat = ',0'
          end
          object padr_gridNOMB_REFERENCIA: TdxDBGridMaskColumn
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFERENCIA'
          end
          object padr_gridNUME_PEDIDO: TdxDBGridMaskColumn
            Width = 83
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_PEDIDO'
          end
          object padr_gridORDE_COMPRA: TdxDBGridMaskColumn
            Width = 95
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ORDE_COMPRA'
          end
          object padr_gridCODI_REFERENCIA: TdxDBGridMaskColumn
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFERENCIA'
          end
          object padr_gridUNIDADES: TdxDBGridMaskColumn
            Width = 101
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UNIDADES'
            SummaryFooterType = cstSum
            SummaryFooterField = 'UNIDADES'
            SummaryFooterFormat = ',0'
          end
          object padr_gridNOMB_TERCERO: TdxDBGridMaskColumn
            Width = 228
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_TERCERO'
          end
          object padr_gridNOMB_REFE_TEMPORADA: TdxDBGridMaskColumn
            Width = 104
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_TEMPORADA'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridFECH_PEDIDO: TdxDBGridDateColumn
            Visible = False
            Width = 103
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_PEDIDO'
          end
          object padr_gridFECH_ENTREGA: TdxDBGridDateColumn
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_ENTREGA'
          end
          object padr_gridCONS_PEDIDO: TdxDBGridMaskColumn
            Visible = False
            Width = 66
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PEDIDO'
          end
          object padr_gridCONS_REFE_TEMPORADA: TdxDBGridMaskColumn
            Visible = False
            Width = 79
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_TEMPORADA'
          end
          object padr_gridCONS_TERCERO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_TERCERO'
          end
          object padr_gridCONS_PEDI_REFERENCIA: TdxDBGridMaskColumn
            Visible = False
            Width = 108
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PEDI_REFERENCIA'
          end
          object padr_gridCONS_REFERENCIA: TdxDBGridMaskColumn
            Visible = False
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFERENCIA'
          end
          object padr_gridCODI_INTE_REFERENCIA: TdxDBGridMaskColumn
            Visible = False
            Width = 71
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_INTE_REFERENCIA'
          end
          object padr_gridCONS_REFE_VARIACION: TdxDBGridMaskColumn
            Visible = False
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_VARIACION'
          end
          object padr_gridNOMB_REFE_TIPO_VARIACION: TdxDBGridMaskColumn
            Visible = False
            Width = 334
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_TIPO_VARIACION'
          end
          object padr_gridCONS_COME_VENDEDOR: TdxDBGridColumn
            Visible = False
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COME_VENDEDOR'
          end
          object padr_gridNOMB_COME_VENDEDOR: TdxDBGridColumn
            Width = 250
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COME_VENDEDOR'
          end
          object padr_gridTOLE_INFERIOR: TdxDBGridMaskColumn
            Visible = False
            Width = 61
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TOLE_INFERIOR'
          end
          object padr_gridTOLE_SUPERIOR: TdxDBGridMaskColumn
            Visible = False
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TOLE_SUPERIOR'
          end
          object padr_gridANULADA: TdxDBGridImageColumn
            Alignment = taLeftJustify
            MinWidth = 16
            Visible = False
            Width = 92
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ANULADA'
          end
          object padr_gridFINALIZADO: TdxDBGridImageColumn
            Alignment = taLeftJustify
            MinWidth = 16
            Visible = False
            Width = 92
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FINALIZADO'
          end
          object padr_gridNOMB_COME_PRIO_PEDIDO: TdxDBGridColumn
            Width = 130
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COME_PRIO_PEDIDO'
          end
          object padr_gridCOLO_COME_PRIO_PEDIDO: TdxDBGridColumn
            Visible = False
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COLO_COME_PRIO_PEDIDO'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            Visible = False
            Width = 107
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          Width = 568
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 568
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 568
          inherited padr_sepa_new: TShape
            Width = 562
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 151
          Height = 281
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 259
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 373
          Top = 151
          Height = 281
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 259
              inherited padr_prio_impresion: TdxTreeList
                Height = 33
              end
            end
          end
        end
        object pane_filtros: TPCPFrame
          Tag = 99
          Left = 0
          Top = 52
          Width = 568
          Height = 99
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
          Titulo_Color = 16244694
          FlatBorder = True
          object SCLDBLabel1: TSCLDBLabel
            Left = 8
            Top = 27
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
            Caption = 'Referencia:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel2: TSCLDBLabel
            Left = 272
            Top = 27
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
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel3: TSCLDBLabel
            Left = 531
            Top = 27
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
            Caption = 'Sub-pedido:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel5: TSCLDBLabel
            Left = 8
            Top = 47
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
            Caption = 'Cliente:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel7: TSCLDBLabel
            Left = 401
            Top = 47
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
            Caption = 'Vendedor:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object comb_referencia: TPCPLookUpComboEdit
            Left = 112
            Top = 27
            Width = 130
            Height = 21
            DropDownCount = 8
            Ctl3D = True
            KeyField = 'cons_referencia'
            ListField = 'codi_referencia'
            ListSource = data_referencias
            ParentCtl3D = False
            TabOrder = 1
            OnChange = doActualizarConsulta
            DirectInput = False
          end
          object comb_nume_pedido: TPCPLookUpComboEdit
            Left = 376
            Top = 27
            Width = 130
            Height = 21
            DropDownCount = 8
            Ctl3D = True
            KeyField = 'cons_pedido'
            ListField = 'nume_pedido'
            ListSource = data_pedidos
            ParentCtl3D = False
            TabOrder = 2
            OnChange = doActualizarConsulta
            DirectInput = False
          end
          object comb_orde_compra: TPCPLookUpComboEdit
            Left = 635
            Top = 27
            Width = 130
            Height = 21
            DropDownCount = 8
            Ctl3D = True
            KeyField = 'cons_pedi_referencia'
            ListField = 'orde_compra'
            ListSource = data_pedi_referencias
            ParentCtl3D = False
            TabOrder = 3
            OnChange = doActualizarConsulta
            DirectInput = False
          end
          object comb_cliente: TPCPLookUpComboEdit
            Left = 112
            Top = 47
            Width = 265
            Height = 21
            DropDownCount = 8
            Ctl3D = True
            KeyField = 'cons_tercero'
            ListField = 'nomb_tercero'
            ListSource = data_clientes
            ParentCtl3D = False
            TabOrder = 4
            OnChange = doActualizarConsulta
            DirectInput = False
          end
          object comb_vendedor: TPCPLookUpComboEdit
            Left = 505
            Top = 47
            Width = 260
            Height = 21
            DropDownCount = 8
            Ctl3D = True
            KeyField = 'cons_come_vendedor'
            ListField = 'nomb_come_vendedor'
            ListSource = data_vendedores
            ParentCtl3D = False
            TabOrder = 5
            OnChange = doActualizarConsulta
            DirectInput = False
          end
          object chec_fech_creacion: TdxCheckEdit
            Left = 21
            Top = 67
            Width = 220
            TabOrder = 6
            Caption = 'Fecha orden:'
            StyleController = padr_estilo
            OnChange = chec_fech_creacionChange
          end
          object comb_fech_creacion: TdxDateEdit
            Left = 112
            Top = 67
            Width = 130
            Enabled = False
            TabOrder = 7
            StyleController = padr_estilo
            Date = -700000
            DateOnError = deToday
            DateValidation = True
            UseEditMask = True
            StoredValues = 4
          end
          object chec_fech_pedido: TdxCheckEdit
            Left = 281
            Top = 67
            Width = 225
            TabOrder = 8
            Caption = 'Fecha pedido:'
            StyleController = padr_estilo
            OnChange = chec_fech_pedidoChange
          end
          object comb_fech_pedido: TdxDateEdit
            Left = 376
            Top = 67
            Width = 130
            Enabled = False
            TabOrder = 9
            StyleController = padr_estilo
            Date = -700000
            DateOnError = deToday
            DateValidation = True
            UseEditMask = True
            StoredValues = 4
          end
          object chec_fech_entrega: TdxCheckEdit
            Left = 533
            Top = 67
            Width = 231
            TabOrder = 10
            Caption = 'Fecha entrega:'
            StyleController = padr_estilo
            OnChange = chec_fech_entregaChange
          end
          object comb_fech_entrega: TdxDateEdit
            Left = 635
            Top = 67
            Width = 130
            Enabled = False
            TabOrder = 11
            StyleController = padr_estilo
            Date = -700000
            DateOnError = deToday
            DateValidation = True
            UseEditMask = True
            StoredValues = 4
          end
          object padr_boto_info_orden: TTBXButtonSCL
            Left = 244
            Top = 27
            Width = 24
            Height = 20
            AllowAllUnchecked = True
            BorderSize = 2
            ButtonStyle = bsFlat
            DropDownMenu = _fMDI.mdi_menu_referencia
            ImageIndex = 64
            Images = _fMDI.imagenesPCP
            SmartFocus = False
            TabOrder = 12
            TabStop = False
          end
          object TBXButtonSCL1: TTBXButtonSCL
            Left = 509
            Top = 27
            Width = 24
            Height = 20
            AllowAllUnchecked = True
            BorderSize = 2
            ButtonStyle = bsFlat
            DropDownMenu = _fMDI.mdi_menu_comercial
            ImageIndex = 64
            Images = _fMDI.imagenesPCP
            SmartFocus = False
            TabOrder = 13
            TabStop = False
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    Width = 804
    inherited padr_pane_2: TPanel
      Left = 733
    end
    inherited padr_pane_cerrar: TPanel
      Left = 751
    end
    inherited padr_pane_titulo: TPCPTituloGradiente
      Width = 733
      LabelCaption = 'Consulta general de planeación de ordenes de producción'
      Caption = 'Consulta general de planeación de ordenes de producción'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 596
    inherited padr_page_ocul_reporte: TdxTabSheet
      inherited padr_repo_fortes: Tffra_edit_reportes
        inherited TBXDock3: TTBXDock
          inherited pane_insp_objetos: TTBXDockablePanel
            inherited page: TSCLPageControl
              FixedDimension = 19
              inherited page_propiedades: TSCLTabSheet
                inherited page_prop: TSCLPageControl
                  FixedDimension = 19
                end
              end
              inherited page_campos: TSCLTabSheet
                inherited grid_camp_disponibles: TSCLDBGrid
                  Filter.Criteria = {00000000}
                end
              end
            end
          end
        end
      end
    end
  end
  inherited padr_dock_top: TTBXDock
    Width = 804
  end
  inherited padr_dock_bottom: TTBXDock
    Width = 804
  end
  inherited padr_dock_right: TTBXDock
    Left = 587
  end
  inherited data_ventana: TDataSource
    Tag = -1
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_nuevo: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_modificar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_eliminar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_consultar: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited consulta: TQuery
    object consultaCONS_PROD_ORDEN: TIntegerField
      DisplayLabel = 'Cons. orden producción'
      FieldName = 'CONS_PROD_ORDEN'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.CONS_PROD_ORDEN'
    end
    object consultaNUME_PROD_ORDEN: TStringField
      DisplayLabel = 'Orden producción'
      FieldName = 'NUME_PROD_ORDEN'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.NUME_PROD_ORDEN'
      Size = 12
    end
    object consultaANULADA: TIntegerField
      DisplayLabel = 'Anulada'
      FieldName = 'ANULADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.ANULADA'
    end
    object consultaFINALIZADO: TIntegerField
      DisplayLabel = 'Finalizada'
      FieldName = 'FINALIZADO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.FINALIZADO'
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.USUA_SISTEMA'
    end
    object consultaCONS_PEDIDO: TIntegerField
      DisplayLabel = 'Cons. pedido'
      FieldName = 'CONS_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.CONS_PEDIDO'
    end
    object consultaNUME_PEDIDO: TStringField
      DisplayLabel = 'No. pedido'
      FieldName = 'NUME_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.NUME_PEDIDO'
    end
    object consultaCONS_REFE_TEMPORADA: TIntegerField
      DisplayLabel = 'Cons. temporada'
      FieldName = 'CONS_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.CONS_REFE_TEMPORADA'
    end
    object consultaNOMB_REFE_TEMPORADA: TStringField
      DisplayLabel = 'Temporada'
      FieldName = 'NOMB_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.NOMB_REFE_TEMPORADA'
      Size = 60
    end
    object consultaCONS_TERCERO: TIntegerField
      DisplayLabel = 'Cons. cliente'
      FieldName = 'CONS_TERCERO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.CONS_TERCERO'
    end
    object consultaNOMB_TERCERO: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOMB_TERCERO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.NOMB_TERCERO'
      Size = 120
    end
    object consultaCONS_PEDI_REFERENCIA: TIntegerField
      DisplayLabel = 'Cons. referencia pedido'
      FieldName = 'CONS_PEDI_REFERENCIA'
      Origin = 
        'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.CONS_PEDI_REFERENCI' +
        'A'
    end
    object consultaCONS_REFERENCIA: TIntegerField
      DisplayLabel = 'Cons. referencia'
      FieldName = 'CONS_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.CONS_REFERENCIA'
    end
    object consultaCODI_REFERENCIA: TStringField
      DisplayLabel = 'Cód. referencia'
      FieldName = 'CODI_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.CODI_REFERENCIA'
      Size = 12
    end
    object consultaCODI_INTE_REFERENCIA: TStringField
      DisplayLabel = 'C.I.R.'
      FieldName = 'CODI_INTE_REFERENCIA'
      Origin = 
        'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.CODI_INTE_REFERENCI' +
        'A'
      Size = 12
    end
    object consultaNOMB_REFERENCIA: TStringField
      DisplayLabel = 'Referencia'
      FieldName = 'NOMB_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.NOMB_REFERENCIA'
      Size = 60
    end
    object consultaCONS_REFE_VARIACION: TIntegerField
      DisplayLabel = 'Cons. variación'
      FieldName = 'CONS_REFE_VARIACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.CONS_REFE_VARIACION'
    end
    object consultaNOMB_REFE_TIPO_VARIACION: TStringField
      DisplayLabel = 'Variación referencia'
      FieldName = 'NOMB_REFE_TIPO_VARIACION'
      Origin = 
        'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.NOMB_REFE_TIPO_VARI' +
        'ACION'
      Size = 60
    end
    object consultaORDE_COMPRA: TStringField
      DisplayLabel = 'Sub-pedido'
      FieldName = 'ORDE_COMPRA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.ORDE_COMPRA'
    end
    object consultaTOLE_INFERIOR: TSmallintField
      DisplayLabel = '% tol. inferior'
      FieldName = 'TOLE_INFERIOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.TOLE_INFERIOR'
    end
    object consultaTOLE_SUPERIOR: TSmallintField
      DisplayLabel = '% tol. superior'
      FieldName = 'TOLE_SUPERIOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.TOLE_SUPERIOR'
    end
    object consultaUNIDADES: TIntegerField
      DisplayLabel = 'Unidades'
      FieldName = 'UNIDADES'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.UNIDADES'
    end
    object consultaFECH_PEDIDO: TDateTimeField
      DisplayLabel = 'Fecha pedido'
      FieldName = 'FECH_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.FECH_PEDIDO'
    end
    object consultaFECH_ENTREGA: TDateTimeField
      DisplayLabel = 'Fecha entrega'
      FieldName = 'FECH_ENTREGA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.FECH_ENTREGA'
    end
    object consultaCONS_COME_VENDEDOR: TIntegerField
      DisplayLabel = 'Cons. vendedor'
      FieldName = 'CONS_COME_VENDEDOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.CONS_COME_VENDEDOR'
    end
    object consultaNOMB_COME_VENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOMB_COME_VENDEDOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.NOMB_COME_VENDEDOR'
      Size = 60
    end
    object consultaNOMB_COME_PRIO_PEDIDO: TStringField
      DisplayLabel = 'Prioridad'
      FieldName = 'NOMB_COME_PRIO_PEDIDO'
      Origin = 
        'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.NOMB_COME_PRIO_PEDI' +
        'DO'
      Size = 60
    end
    object consultaCOLO_COME_PRIO_PEDIDO: TIntegerField
      DisplayLabel = 'Color prioridad'
      FieldName = 'COLO_COME_PRIO_PEDIDO'
      Origin = 
        'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_UNID_PEDIDAS.COLO_COME_PRIO_PEDI' +
        'DO'
    end
  end
  inherited padr_popu_vist_actual: TTBXPopupMenu
    Left = 610
    Top = 65529
  end
  inherited Variables: TSCLPropiedadesForm
    Left = 570
    Top = 65530
  end
  inherited padr_pop_grid: TTBXPopupMenu
    Left = 646
    Top = 65532
  end
  object quer_referencias: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_referencia, codi_Referencia'
      'from VIS_GLO_REFERENCIAS'
      'Order by codi_Referencia')
    Left = 958
    Top = 113
  end
  object data_referencias: TDataSource
    DataSet = quer_referencias
    Left = 990
    Top = 113
  end
  object quer_pedidos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_pedido, nume_pedido'
      'from PCP_PEDIDOS'
      'Order by nume_pedido')
    Left = 958
    Top = 145
  end
  object data_pedidos: TDataSource
    DataSet = quer_pedidos
    Left = 990
    Top = 145
  end
  object quer_pedi_Referencias: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_pedi_referencia, orde_Compra'
      'from pcp_pedi_Referencias'
      'order by orde_compra')
    Left = 958
    Top = 177
  end
  object data_pedi_referencias: TDataSource
    DataSet = quer_pedi_Referencias
    Left = 990
    Top = 177
  end
  object quer_clientes: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_Tercero, nomb_tercero'
      'from vis_pcp_clientes'
      'order by nomb_tercero')
    Left = 1022
    Top = 113
  end
  object data_clientes: TDataSource
    DataSet = quer_clientes
    Left = 1054
    Top = 113
  end
  object quer_vendedores: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_come_vendedor, nomb_come_vendedor'
      'from glo_come_vendedores'
      'order by nomb_come_vendedor')
    Left = 1022
    Top = 145
  end
  object data_vendedores: TDataSource
    DataSet = quer_vendedores
    Left = 1054
    Top = 145
  end
end

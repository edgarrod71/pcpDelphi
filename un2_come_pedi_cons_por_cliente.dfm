inherited fn2_come_pedi_cons_por_cliente: Tfn2_come_pedi_cons_por_cliente
  Left = 23
  Top = 142
  Width = 812
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  OnDestroy = FormDestroy
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
          Top = 105
          Width = 178
          Height = 327
          KeyField = 'CONS_PEDI_REFERENCIA'
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
                  ColumnName = 'grid_resultadosNUME_PEDIDO'
                  SummaryFormat = ',0'
                  SummaryType = cstCount
                end
                item
                  ColumnName = 'grid_resultadosUNIDADES'
                  SummaryField = 'UNIDADES'
                  SummaryFormat = ',0'
                  SummaryType = cstSum
                end>
              Name = 'padr_gridSummaryGroup2'
            end>
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Filter.Criteria = {00000000}
          object grid_resultadosCONS_PEDIDO: TdxDBGridMaskColumn
            Visible = False
            Width = 66
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PEDIDO'
          end
          object grid_resultadosNUME_PEDIDO: TdxDBGridMaskColumn
            Width = 89
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_PEDIDO'
            SummaryFooterType = cstCount
            SummaryFooterFormat = ',0'
          end
          object grid_resultadosFECH_PEDIDO: TdxDBGridDateColumn
            Alignment = taLeftJustify
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_PEDIDO'
          end
          object grid_resultadosNOMB_TERCERO: TdxDBGridMaskColumn
            Width = 171
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_TERCERO'
          end
          object grid_resultadosORDE_COMPRA: TdxDBGridMaskColumn
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ORDE_COMPRA'
          end
          object grid_resultadosCODI_REFERENCIA: TdxDBGridMaskColumn
            Width = 92
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFERENCIA'
          end
          object grid_resultadosNOMB_REFE_TIPO_VARIACION: TdxDBGridMaskColumn
            Width = 97
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_TIPO_VARIACION'
          end
          object grid_resultadosFECH_ENTREGA: TdxDBGridDateColumn
            Alignment = taLeftJustify
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_ENTREGA'
          end
          object padr_gridALERTA: TdxDBGridImageColumn
            Alignment = taCenter
            Caption = 'Estado'
            DisableCaption = True
            DisableEditor = True
            MinWidth = 16
            Width = 28
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_ENTR_ALERTA'
            Descriptions.Strings = (
              'Programado'
              'Optimo'
              'A vencerse'
              'Vencido')
            Images = _fMDI.imag_estados
            ImageIndexes.Strings = (
              '0'
              '1'
              '2'
              '3')
            Values.Strings = (
              '0'
              '1'
              '2'
              '3')
          end
          object grid_resultadosUNIDADES: TdxDBGridMaskColumn
            Width = 62
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UNIDADES'
            SummaryFooterType = cstSum
            SummaryFooterField = 'UNIDADES'
            SummaryFooterFormat = ',0'
          end
          object grid_resultadosNOMB_COME_PRIO_PEDIDO: TdxDBGridMaskColumn
            Width = 79
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COME_PRIO_PEDIDO'
          end
          object grid_resultadosNOMB_REFE_LAVADO: TdxDBGridMaskColumn
            Width = 89
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_LAVADO'
          end
          object grid_resultadosNOMB_REFE_BORDADO: TdxDBGridMaskColumn
            Width = 101
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_BORDADO'
          end
          object grid_resultadosNOMB_REFE_ESTAMPADO: TdxDBGridMaskColumn
            Width = 107
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_ESTAMPADO'
          end
          object grid_resultadosNOMB_REFERENCIA: TdxDBGridMaskColumn
            Width = 202
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFERENCIA'
          end
          object grid_resultadosNOMB_REFE_TEMPORADA: TdxDBGridMaskColumn
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_TEMPORADA'
          end
          object grid_resultadosNOMB_COME_VENDEDOR: TdxDBGridMaskColumn
            Width = 144
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COME_VENDEDOR'
          end
          object grid_resultadosCOLO_COME_PRIO_PEDIDO: TdxDBGridMaskColumn
            Visible = False
            Width = 123
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COLO_COME_PRIO_PEDIDO'
          end
          object grid_resultadosTOLE_INFERIOR: TdxDBGridMaskColumn
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TOLE_INFERIOR'
          end
          object grid_resultadosTOLE_SUPERIOR: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TOLE_SUPERIOR'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          Width = 568
          inherited padr_barra: TTBXToolbar
            inherited padr_boto_aceptar: TTBXItem
              Enabled = False
            end
            inherited padr_boto_cancelar: TTBXItem
              Enabled = False
            end
            inherited padr_boto_nuevo: TTBXItem
              Enabled = False
              Visible = False
            end
            inherited padr_boto_editar: TTBXItem
              Enabled = False
              Visible = False
            end
            inherited padr_boto_consultar: TTBXItem
              Enabled = False
              Visible = False
            end
            inherited padr_boto_eliminar: TTBXItem
              Enabled = False
              Visible = False
            end
          end
        end
        inherited padr_pane_sepa_2: TPanel
          Top = 102
          Width = 568
          TabOrder = 3
        end
        inherited padr_pane_sepa_1: TPanel
          Top = 95
          Width = 568
          TabOrder = 4
          inherited padr_sepa_new: TShape
            Width = 562
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 105
          Height = 327
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 305
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 373
          Top = 105
          Height = 327
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 305
              inherited padr_prio_impresion: TdxTreeList
                Height = 79
              end
            end
          end
        end
        object PCPFrame1: TPCPFrame
          Tag = 53
          Left = 0
          Top = 42
          Width = 568
          Height = 53
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
          TabOrder = 0
          Caption = 'Filtros de la consulta'
          Titulo_Color = 16244694
          FlatBorder = True
          object SCLDBLabel1: TSCLDBLabel
            Left = 8
            Top = 25
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
            FocusControl = comb_codi_cliente
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Código del cliente:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel2: TSCLDBLabel
            Left = 544
            Top = 25
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
            FocusControl = comb_nomb_cliente
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Razón social:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel3: TSCLDBLabel
            Left = 264
            Top = 25
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
            FocusControl = PCPLookUpComboEdit1
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Cédula o NIT:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object comb_codi_cliente: TPCPLookUpComboEdit
            Left = 110
            Top = 25
            Width = 145
            Height = 21
            DropDownCount = 8
            Ctl3D = True
            DataField = 'cons_tercero'
            DataSource = myData
            KeyField = 'cons_tercero'
            ListField = 'codi_tercero'
            ListSource = data_clientes
            ParentCtl3D = False
            TabOrder = 0
            OnChange = comb_codi_clienteChange
            DirectInput = False
          end
          object comb_nomb_cliente: TPCPLookUpComboEdit
            Left = 646
            Top = 25
            Width = 312
            Height = 21
            DropDownCount = 8
            Ctl3D = True
            DataField = 'cons_tercero'
            DataSource = myData
            KeyField = 'cons_tercero'
            ListField = 'nomb_tercero'
            ListSource = data_clientes
            ParentCtl3D = False
            TabOrder = 2
            OnChange = comb_codi_clienteChange
            DirectInput = False
          end
          object PCPLookUpComboEdit1: TPCPLookUpComboEdit
            Left = 366
            Top = 25
            Width = 145
            Height = 21
            DropDownCount = 8
            Ctl3D = True
            DataField = 'cons_tercero'
            DataSource = myData
            KeyField = 'cons_tercero'
            ListField = 'iden_terc_digi_verificacion'
            ListSource = data_clientes
            ParentCtl3D = False
            TabOrder = 1
            OnChange = comb_codi_clienteChange
            DirectInput = False
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
      LabelCaption = 'Consulta de pedidos por cliente'
      Caption = 'Consulta de pedidos por cliente'
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
  inherited consulta: TQuery
    BeforeOpen = consultaBeforeOpen
    OnCalcFields = consultaCalcFields
    DataSource = myData
    SQL.Strings = (
      'Select *'
      'from VIS_PCP_PEDI_UNID_TOTALES'
      'Where cons_tercero = :cons_tercero')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_tercero'
        ParamType = ptUnknown
      end>
    object consultaCONS_PEDIDO: TIntegerField
      DisplayLabel = 'Cons. pedido'
      FieldName = 'CONS_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.CONS_PEDIDO'
    end
    object consultaNUME_PEDIDO: TStringField
      DisplayLabel = 'No. pedido'
      FieldName = 'NUME_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.NUME_PEDIDO'
    end
    object consultaNOMB_REFE_TEMPORADA: TStringField
      DisplayLabel = 'Temporada'
      FieldName = 'NOMB_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.NOMB_REFE_TEMPORADA'
      Size = 60
    end
    object consultaCONS_TERCERO: TIntegerField
      DisplayLabel = 'Cons. cliente'
      FieldName = 'CONS_TERCERO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.CONS_TERCERO'
    end
    object consultaNOMB_TERCERO: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOMB_TERCERO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.NOMB_TERCERO'
      Size = 120
    end
    object consultaFECH_PEDIDO: TDateTimeField
      DisplayLabel = 'Fecha pedido'
      FieldName = 'FECH_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.FECH_PEDIDO'
    end
    object consultaFECH_ENTREGA: TDateTimeField
      DisplayLabel = 'Fecha entrega'
      FieldName = 'FECH_ENTREGA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.FECH_ENTREGA'
    end
    object consultaNOMB_COME_VENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOMB_COME_VENDEDOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.NOMB_COME_VENDEDOR'
      Size = 60
    end
    object consultaNOMB_COME_PRIO_PEDIDO: TStringField
      DisplayLabel = 'Prioridad'
      FieldName = 'NOMB_COME_PRIO_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.NOMB_COME_PRIO_PEDIDO'
      Size = 60
    end
    object consultaCOLO_COME_PRIO_PEDIDO: TIntegerField
      FieldName = 'COLO_COME_PRIO_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.COLO_COME_PRIO_PEDIDO'
    end
    object consultaCONS_PEDI_REFERENCIA: TIntegerField
      FieldName = 'CONS_PEDI_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.CONS_PEDI_REFERENCIA'
    end
    object consultaCONS_REFERENCIA: TIntegerField
      FieldName = 'CONS_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.CONS_REFERENCIA'
    end
    object consultaCODI_REFERENCIA: TStringField
      DisplayLabel = 'Cód. referencia'
      FieldName = 'CODI_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.CODI_REFERENCIA'
      Size = 12
    end
    object consultaNOMB_REFERENCIA: TStringField
      DisplayLabel = 'Nombre referencia'
      FieldName = 'NOMB_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.NOMB_REFERENCIA'
      Size = 60
    end
    object consultaCONS_REFE_VARIACION: TIntegerField
      FieldName = 'CONS_REFE_VARIACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.CONS_REFE_VARIACION'
    end
    object consultaCONS_REFE_TIPO_VARIACION: TIntegerField
      FieldName = 'CONS_REFE_TIPO_VARIACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.CONS_REFE_TIPO_VARIACION'
    end
    object consultaNOMB_REFE_TIPO_VARIACION: TStringField
      DisplayLabel = 'Variación'
      FieldName = 'NOMB_REFE_TIPO_VARIACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.NOMB_REFE_TIPO_VARIACION'
      Size = 60
    end
    object consultaORDE_COMPRA: TStringField
      DisplayLabel = 'Sub-pedido'
      FieldName = 'ORDE_COMPRA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.ORDE_COMPRA'
    end
    object consultaNOMB_REFE_LAVADO: TStringField
      DisplayLabel = 'Lavado'
      FieldName = 'NOMB_REFE_LAVADO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.NOMB_REFE_LAVADO'
      Size = 60
    end
    object consultaNOMB_REFE_BORDADO: TStringField
      DisplayLabel = 'Bordado'
      FieldName = 'NOMB_REFE_BORDADO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.NOMB_REFE_BORDADO'
      Size = 60
    end
    object consultaNOMB_REFE_ESTAMPADO: TStringField
      DisplayLabel = 'Estampado'
      FieldName = 'NOMB_REFE_ESTAMPADO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.NOMB_REFE_ESTAMPADO'
      Size = 60
    end
    object consultaTOLE_INFERIOR: TSmallintField
      DisplayLabel = '% Tol. inf.'
      FieldName = 'TOLE_INFERIOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.TOLE_INFERIOR'
    end
    object consultaTOLE_SUPERIOR: TSmallintField
      DisplayLabel = '% Tol. sup.'
      FieldName = 'TOLE_SUPERIOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.TOLE_SUPERIOR'
    end
    object consultaUNIDADES: TIntegerField
      DisplayLabel = 'Unidades'
      FieldName = 'UNIDADES'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.UNIDADES'
      DisplayFormat = ',0'
    end
    object consultaFECH_ENTR_ALERTA: TIntegerField
      DisplayLabel = 'A'
      FieldKind = fkCalculated
      FieldName = 'FECH_ENTR_ALERTA'
      Calculated = True
    end
  end
  inherited Variables: TSCLPropiedadesForm
    TablaMaestra = ' '
  end
  inherited padr_pop_grid: TTBXPopupMenu
    inherited padr_boto_aceptar2: TTBXItem
      Enabled = False
    end
    inherited padr_boto_cancelar2: TTBXItem
      Enabled = False
    end
    inherited padr_boto_nuevo2: TTBXItem
      Enabled = False
    end
    inherited padr_boto_modificar2: TTBXItem
      Enabled = False
    end
    inherited padr_boto_eliminar_2: TTBXItem
      Enabled = False
    end
  end
  object myData: TDataSource
    DataSet = myTabla
    Left = 278
    Top = 274
  end
  object myTabla: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_tercero'
        DataType = ftInteger
      end>
    Left = 246
    Top = 274
    object myTablacons_tercero: TIntegerField
      FieldName = 'cons_tercero'
    end
  end
  object quer_clientes: TQuery
    DatabaseName = 'data_base_pcp'
    FilterOptions = [foCaseInsensitive]
    SQL.Strings = (
      'Select cons_tercero, codi_tercero, nomb_tercero ,'
      'iden_terc_digi_verificacion'
      'from VIS_PCP_CLIENTES'
      'order by nomb_tercero')
    Left = 733
    Top = 55
    object quer_clientesCONS_TERCERO: TIntegerField
      FieldName = 'CONS_TERCERO'
    end
    object quer_clientesNOMB_TERCERO: TStringField
      FieldName = 'NOMB_TERCERO'
      Size = 120
    end
    object quer_clientesIDEN_TERC_DIGI_VERIFICACION: TStringField
      FieldName = 'IDEN_TERC_DIGI_VERIFICACION'
      Size = 32
    end
    object quer_clientesCODI_TERCERO: TStringField
      FieldName = 'CODI_TERCERO'
      Size = 12
    end
  end
  object data_clientes: TDataSource
    DataSet = quer_clientes
    Left = 765
    Top = 55
  end
end

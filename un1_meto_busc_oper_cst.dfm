inherited fn1_meto_busc_oper_cst: Tfn1_meto_busc_oper_cst
  Left = 82
  Top = 126
  Width = 693
  Height = 394
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 685
  end
  inherited padr_shap_xp_down: TShape
    Top = 366
    Width = 685
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 685
  end
  inherited padr_pane_arriba: TPanel
    Width = 685
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 685
    inherited padr_beve_1: TBevel
      Width = 679
    end
    inherited padr_sepa_new: TShape
      Width = 679
    end
  end
  inherited padr_pane_info: TPanel
    Top = 365
    Width = 685
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
  inherited padr_titu_ventana: TPanel
    Width = 685
    inherited padr_pane_titulo: TPanel
      Width = 644
      Caption = 'Buscar operación'
    end
    inherited padr_pane_2: TPanel
      Left = 646
    end
    inherited padr_pane_cerrar: TPanel
      Left = 664
    end
  end
  object Panel1: TPanel [7]
    Left = 0
    Top = 77
    Width = 685
    Height = 59
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 7
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
      Top = 8
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
      FocusControl = edit_codi_operacion
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Código operación:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 330
      Top = 8
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
      FocusControl = comb_proceso
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Proceso:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 32
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
      FocusControl = comb_componente
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Componente:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 330
      Top = 31
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
      FocusControl = comb_tipo_operacion
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tipo de operación:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object edit_codi_operacion: TdxDBEdit
      Left = 112
      Top = 8
      Width = 113
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'codi_oper_costura'
      DataSource = data_ventana
      StyleController = padr_estilo
      OnChange = edit_codi_operacionChange
    end
    object comb_proceso: TPCPLookUpComboEdit
      Left = 432
      Top = 8
      Width = 170
      Height = 21
      DropDownCount = 8
      DataField = 'cons_proceso'
      DataSource = data_ventana
      TabOrder = 1
      DirectInput = False
    end
    object comb_componente: TPCPLookUpComboEdit
      Left = 112
      Top = 32
      Width = 170
      Height = 21
      DropDownCount = 8
      DataField = 'cons_comp_grupo'
      DataSource = data_ventana
      TabOrder = 2
      DirectInput = False
    end
    object comb_tipo_operacion: TPCPLookUpComboEdit
      Left = 432
      Top = 31
      Width = 170
      Height = 21
      DropDownCount = 8
      DataField = 'cons_oper_cost_tipo'
      DataSource = data_ventana
      TabOrder = 3
      DirectInput = False
    end
  end
  object PCPFrame1: TPCPFrame [8]
    Left = 0
    Top = 136
    Width = 685
    Height = 221
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
    Caption = 'Operaciones encontradas'
    Titulo_Color = 16244694
    object Panel2: TPanel
      Left = 2
      Top = 21
      Width = 681
      Height = 198
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 5
      TabOrder = 1
      object grid: TdxDBGrid
        Left = 5
        Top = 5
        Width = 671
        Height = 188
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CONS_OPER_COSTURA'
        ShowGroupPanel = True
        ShowSummaryFooter = True
        SummaryGroups = <
          item
            DefaultGroup = True
            SummaryItems = <
              item
                SummaryField = 'TIEM_CRONOMETRO'
                SummaryFormat = '0'
                SummaryType = cstCount
              end>
            Name = 'gridSummaryGroup1'
          end>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        DataSource = data_oper_costura
        Filter.Criteria = {00000000}
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        ShowRowFooter = True
        object gridTIEM_CRONOMETRO: TdxDBGridGraphicColumn
          HeaderAlignment = taCenter
          Width = 39
          BandIndex = 0
          RowIndex = 0
          OnCustomDrawCell = gridTIEM_CRONOMETROCustomDrawCell
          FieldName = 'TIEM_CRONOMETRO'
          SummaryFooterType = cstCount
          SummaryFooterFormat = '0'
        end
        object gridCONS_OPER_COSTURA: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 81
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_OPER_COSTURA'
        end
        object gridCODI_OPER_COSTURA: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODI_OPER_COSTURA'
        end
        object gridNOMB_OPER_COSTURA: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 189
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_OPER_COSTURA'
        end
        object gridNOMB_PROCESO: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 117
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_PROCESO'
        end
        object gridNOMB_COMP_GRUPO: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 133
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_COMP_GRUPO'
        end
        object gridNOMB_OPER_COST_TIPO: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 108
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_OPER_COST_TIPO'
        end
        object gridTIEM_ASIGNADO: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 93
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TIEM_ASIGNADO'
        end
        object gridNOMB_COMPLETO: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 198
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_COMPLETO'
        end
        object gridPUNT_POR_CENTIMETRO: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PUNT_POR_CENTIMETRO'
        end
        object gridLARG_COSTURA: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LARG_COSTURA'
        end
        object gridCOMP_LARG_COSTURA: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 121
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COMP_LARG_COSTURA'
        end
        object gridNOMB_RECU_FAMILIA: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 132
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_RECU_FAMILIA'
        end
        object gridREVO_POR_MINUTO: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 99
          BandIndex = 0
          RowIndex = 0
          FieldName = 'REVO_POR_MINUTO'
        end
        object gridSECU_MOVIMIENTOS: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 1769
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SECU_MOVIMIENTOS'
        end
        object gridDESCRIPCION: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 887
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DESCRIPCION'
        end
        object gridFECH_SISTEMA: TdxDBGridDateColumn
          HeaderAlignment = taCenter
          Width = 157
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FECH_SISTEMA'
        end
        object gridUSUA_SISTEMA: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 118
          BandIndex = 0
          RowIndex = 0
          FieldName = 'USUA_SISTEMA'
        end
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 357
    Width = 685
    inherited padr_beve_abajo: TBevel
      Width = 679
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 685
  end
  inherited data_ventana: TDataSource
    DataSet = myTabla_Ventana
  end
  inherited padr_acciones: TActionList
    OnUpdate = padr_accionesUpdate
    inherited padr_acti_cancelar: TDataSetCancel
      Enabled = True
      Visible = True
    end
    inherited padr_acti_aceptar: TAction
      Enabled = True
      Visible = True
    end
  end
  inherited padr_estilo: TdxEditStyleController
    Left = 602
    Top = 34
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController
    Left = 642
    Top = 34
  end
  inherited padr_esti_panel: TAdvPanelStyler
    Left = 474
    Top = 34
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler
    Left = 522
  end
  inherited padr_pict_container: TPictureContainer
    Left = 602
    Top = 65533
  end
  object myTabla_Ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'codi_oper_costura'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'cons_proceso'
        DataType = ftInteger
      end
      item
        Name = 'cons_oper_cost_tipo'
        DataType = ftInteger
      end
      item
        Name = 'cons_comp_grupo'
        DataType = ftInteger
      end>
    Left = 218
    Top = 5
  end
  object quer_oper_costura: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select * from vis_pcp_oper_costura')
    Left = 482
    Top = 170
    object quer_oper_costuraTIEM_CRONOMETRO: TIntegerField
      DisplayLabel = 'C'
      FieldName = 'TIEM_CRONOMETRO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.TIEM_CRONOMETRO'
    end
    object quer_oper_costuraCONS_OPER_COSTURA: TIntegerField
      DisplayLabel = 'Consecutivo'
      FieldName = 'CONS_OPER_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_OPER_COSTURA'
    end
    object quer_oper_costuraCODI_OPER_COSTURA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_OPER_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_OPER_COSTURA'
      Size = 12
    end
    object quer_oper_costuraNOMB_OPER_COSTURA: TStringField
      DisplayLabel = 'Nombre operación'
      FieldName = 'NOMB_OPER_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_OPER_COSTURA'
      Size = 30
    end
    object quer_oper_costuraNOMB_PROCESO: TStringField
      DisplayLabel = 'Proceso'
      FieldName = 'NOMB_PROCESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_PROCESO'
      Size = 60
    end
    object quer_oper_costuraNOMB_COMP_GRUPO: TStringField
      DisplayLabel = 'Componente'
      FieldName = 'NOMB_COMP_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_COMP_GRUPO'
      Size = 60
    end
    object quer_oper_costuraNOMB_OPER_COST_TIPO: TStringField
      DisplayLabel = 'Tipo de operación'
      FieldName = 'NOMB_OPER_COST_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_OPER_COST_TIPO'
      Size = 60
    end
    object quer_oper_costuraTIEM_ASIGNADO: TFloatField
      DisplayLabel = 'Tiempo'
      FieldName = 'TIEM_ASIGNADO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.TIEM_ASIGNADO'
    end
    object quer_oper_costuraNOMB_COMPLETO: TStringField
      DisplayLabel = 'Analista'
      FieldName = 'NOMB_COMPLETO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_COMPLETO'
      Size = 102
    end
    object quer_oper_costuraPUNT_POR_CENTIMETRO: TIntegerField
      DisplayLabel = 'P.P.C.'
      FieldName = 'PUNT_POR_CENTIMETRO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.PUNT_POR_CENTIMETRO'
    end
    object quer_oper_costuraLARG_COSTURA: TIntegerField
      DisplayLabel = 'L.C.'
      FieldName = 'LARG_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.LARG_COSTURA'
    end
    object quer_oper_costuraCOMP_LARG_COSTURA: TStringField
      DisplayLabel = 'Composición costura'
      FieldName = 'COMP_LARG_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.COMP_LARG_COSTURA'
      Size = 60
    end
    object quer_oper_costuraNOMB_RECU_FAMILIA: TStringField
      DisplayLabel = 'Máquina'
      FieldName = 'NOMB_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_RECU_FAMILIA'
      Size = 60
    end
    object quer_oper_costuraREVO_POR_MINUTO: TIntegerField
      DisplayLabel = 'R.P.M.'
      FieldName = 'REVO_POR_MINUTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.REVO_POR_MINUTO'
    end
    object quer_oper_costuraSECU_MOVIMIENTOS: TStringField
      DisplayLabel = 'Secuencia'
      FieldName = 'SECU_MOVIMIENTOS'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.SECU_MOVIMIENTOS'
      Size = 240
    end
    object quer_oper_costuraDESCRIPCION: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESCRIPCION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.DESCRIPCION'
      Size = 120
    end
    object quer_oper_costuraUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.USUA_SISTEMA'
    end
    object quer_oper_costuraFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.FECH_SISTEMA'
    end
  end
  object data_oper_costura: TDataSource
    DataSet = quer_oper_costura
    Left = 514
    Top = 170
  end
end

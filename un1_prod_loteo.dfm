inherited fn1_prod_loteo: Tfn1_prod_loteo
  Left = 63
  Top = 34
  Height = 612
  Caption = 'Planeación de lotes y espigas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 584
  end
  inherited padr_pane_info: TPanel
    Top = 583
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
    Top = 575
  end
  inherited padr_fram_informacion: TPCPFrame
    Tag = -1
    object SCLDBLabel1: TSCLDBLabel [0]
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
      FocusControl = dxDBEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'No. Pedido'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    inherited padr_labe_nume_lote: TSCLDBLabel
      Left = 774
    end
    inherited padr_comb_nume_lote: TPCPLookUpComboEdit
      Left = 876
    end
    inherited comb_nume_orden: TPCPLookUpComboEdit
      OnChange = comb_nume_ordenChange
    end
    object dxDBEdit1: TdxDBEdit
      Tag = -1
      Left = 372
      Top = 24
      Width = 130
      Enabled = False
      TabOrder = 12
      DataField = 'NUME_PEDIDO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
  end
  inline fram_orde_trazo: Tffra_prod_orde_trazo [9]
    Top = 146
    Height = 429
    Align = alClient
    PopupMenu = fram_orde_trazo.fram_pop_lotes
    TabOrder = 7
    Visible = False
    inherited page: TSCLPageControl
      Height = 377
      FixedDimension = 22
      inherited page_proceso: TSCLTabSheet
        inherited fram_unidades: TPCPFrame
          inherited fram_orde_unidades: Tffra_prod_orde_unidades
            inherited quer_cons_unidades: TQuery
              DataSource = fram_orde_trazo.data_prod_ordenes
            end
            inherited quer_elim_unidades: TQuery
              DataSource = fram_orde_trazo.data_prod_ordenes
            end
          end
        end
        inherited fram_pane_lotes: TPCPFrame
          Tag = 144
          Height = 171
          inherited fram_mens_material: Tffra_mens_atencion
            inherited fram_label: TAdvPanel
              FullHeight = 18
            end
          end
          inherited pane_grids: TPanel
            Height = 96
            inherited dfsSplitter2: TdfsSplitter
              Height = 96
            end
            inherited grid: TSCLColumnGrid
              Height = 96
            end
            inherited grid_unidades: TSCLColumnGrid
              Height = 96
            end
          end
          inherited padr_page_lotes: TSCLPageControl
            FixedDimension = 19
          end
        end
      end
      inherited page_avance: TSCLTabSheet
        inherited fram_avance: Tffra_prod_resp_lote_proceso
          inherited pane_arriba: TPanel
            inherited pane_finalizacion: TPanel
              inherited edit_fech_finalizacion: TdxDBDateEdit
                StyleController = padr_estilo
              end
            end
          end
          inherited pane_observaciones: TPanel
            inherited PCPFrame1: TPCPFrame
              inherited dxDBMemo1: TdxDBMemo
                Width = 1142
                Height = 246
              end
            end
          end
          inherited quer_sele_responsables: TQuery
            ParamData = <
              item
                DataType = ftUnknown
                Name = 'cons_prod_lote'
                ParamType = ptUnknown
              end
              item
                DataType = ftUnknown
                Name = 'cons_proceso'
                ParamType = ptUnknown
              end>
          end
        end
        inherited fram_nume_lote: Tffra_mens_atencion
          inherited fram_label: TAdvPanel
            FullHeight = 15
            inherited data_label: TDBText
              DataSource = fram_orde_trazo.myData_Ventana
            end
          end
        end
      end
      inherited page_tota_lote: TSCLTabSheet
        inherited pane_material: Tffra_mens_atencion
          inherited fram_label: TAdvPanel
            FullHeight = 15
            inherited data_label: TDBText
              DataSource = fram_refe_material.data_refe_materiales
            end
          end
        end
      end
    end
    inherited fram_dock_lotes: TTBXDock
      inherited fram_tool_lotes: TTBXToolbar
        inherited fram_espigas: Tffra_prod_sele_espiga
          inherited comb_espiga: TPCPLookUpComboEdit
            DataSource = fram_orde_trazo.myData_Ventana
          end
          inherited quer_espigas: TQuery
            DataSource = fram_orde_trazo.myData_Ventana
          end
        end
        inherited fram_refe_material: Tffra_refe_material
          inherited fram_comb_codi_material: TPCPLookUpComboEdit
            DataSource = fram_orde_trazo.myData_Ventana
          end
          inherited fram_comb_nomb_material: TPCPLookUpComboEdit
            DataSource = fram_orde_trazo.myData_Ventana
          end
          inherited quer_refe_materiales: TQuery
            DataSource = padr_data_prod_referencias
          end
        end
        inherited fram_lote: Tffra_prod_sele_lote
          inherited comb_nume_lote: TPCPLookUpComboEdit
            DataSource = fram_orde_trazo.myData_Ventana
            OnChange = fram_lotecomb_nume_loteChange
          end
          inherited quer_lotes: TQuery
            DataSource = fram_orde_trazo.data_prod_ordenes
            ParamData = <
              item
                DataType = ftInteger
                Name = 'CONS_PROD_ORDEN'
                ParamType = ptInput
              end>
          end
        end
      end
      inherited TBXToolbar1: TTBXToolbar
        inherited fram_aten_lote_finalizado: Tffra_mens_atencion
          inherited fram_label: TAdvPanel
            FullHeight = 18
          end
        end
        inherited edit_consumo: TdxDBCurrencyEdit
          DataSource = fram_refe_material.data_refe_materiales
          StyleController = padr_estilo
          StoredValues = 1
        end
      end
    end
    inherited data_prod_ordenes: TDataSource
      DataSet = padr_quer_ordenes
    end
  end
  inherited padr_acciones: TActionList [10]
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Visible = False
    end
    inherited acti_padr_cancelar_2: TAction
      Visible = False
    end
    inherited padr_acti_nuevo: TDataSetInsert
      Visible = False
    end
    inherited padr_acti_duplicar: TAction
      Visible = False
    end
    inherited padr_acti_elim_todos: TAction
      Visible = False
    end
    inherited padr_acti_guar_cerrar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_expo_xls: TAction
      Visible = False
    end
    inherited padr_acti_expo_HTML: TAction
      Visible = False
    end
    inherited padr_acti_expo_arch_sepa_comas: TAction
      Visible = False
    end
  end
  inherited Imagenes_Botones_Pequenos: TImageList [11]
  end
  inherited Variables: TSCLPropiedadesForm [12]
  end
  inherited Tabla_Ventana: TTable [13]
  end
  inherited padr_estilo: TdxEditStyleController [14]
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [15]
  end
  inherited padr_esti_panel: TAdvPanelStyler [16]
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [17]
  end
  inherited imag_pequenas: TImageList [18]
  end
  inherited padr_imag_tem1_colo: TImageList [19]
  end
  inherited padr_quer_ordenes: TQuery
    SQL.Strings = (
      'Select distinct pe.cons_prod_orden, pe.nume_prod_orden,'
      ' pe.cons_referencia, pe.fech_sistema, pe.usua_sistema,'
      ' p.NUME_PEDIDO'
      'from pcp_prod_ordenes pe, pcp_pedi_planeacion pl,'
      ' pcp_pedi_unidades pu, pcp_pedi_referencias pr,'
      ' pcp_pedidos p'
      'where pe.CONS_PROD_ORDEN = pl.CONS_PROD_ORDEN'
      ' and pl.CONS_PEDI_UNIDADES = pu.CONS_PEDI_UNIDADES'
      ' and pu.CONS_PEDI_REFERENCIA = pr.CONS_PEDI_REFERENCIA'
      ' and pr.CONS_PEDIDO = p.CONS_PEDIDO'
      ' and pe.anulada = -1'
      'order by pe.nume_prod_orden')
    object padr_quer_ordenesCONS_PROD_ORDEN: TIntegerField
      FieldName = 'CONS_PROD_ORDEN'
    end
    object padr_quer_ordenesNUME_PROD_ORDEN: TStringField
      FieldName = 'NUME_PROD_ORDEN'
      Size = 12
    end
    object padr_quer_ordenesCONS_REFERENCIA: TIntegerField
      FieldName = 'CONS_REFERENCIA'
    end
    object padr_quer_ordenesFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object padr_quer_ordenesUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
    object padr_quer_ordenesNUME_PEDIDO: TStringField
      FieldName = 'NUME_PEDIDO'
    end
  end
  inherited padr_quer_prod_referencias: TQuery
    object padr_quer_prod_referenciasCONS_PROD_ORDEN: TIntegerField
      FieldName = 'CONS_PROD_ORDEN'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_REFERENCIAS.CONS_PROD_ORDEN'
    end
    object padr_quer_prod_referenciasCONS_REFERENCIA: TIntegerField
      FieldName = 'CONS_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_REFERENCIAS.CONS_REFERENCIA'
    end
    object padr_quer_prod_referenciasCODI_REFERENCIA: TStringField
      FieldName = 'CODI_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_REFERENCIAS.CODI_REFERENCIA'
      Size = 12
    end
    object padr_quer_prod_referenciasCODI_INTE_REFERENCIA: TStringField
      FieldName = 'CODI_INTE_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_REFERENCIAS.CODI_INTE_REFERENCIA'
      Size = 12
    end
    object padr_quer_prod_referenciasNOMB_REFERENCIA: TStringField
      FieldName = 'NOMB_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_REFERENCIAS.NOMB_REFERENCIA'
      Size = 60
    end
    object padr_quer_prod_referenciasCONS_REFE_VARIACION: TIntegerField
      FieldName = 'CONS_REFE_VARIACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_REFERENCIAS.CONS_REFE_VARIACION'
    end
    object padr_quer_prod_referenciasCONS_REFE_TIPO_VARIACION: TIntegerField
      FieldName = 'CONS_REFE_TIPO_VARIACION'
      Origin = 
        'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_REFERENCIAS.CONS_REFE_TIPO_VARIA' +
        'CION'
    end
    object padr_quer_prod_referenciasNOMB_REFE_TIPO_VARIACION: TStringField
      FieldName = 'NOMB_REFE_TIPO_VARIACION'
      Origin = 
        'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_REFERENCIAS.NOMB_REFE_TIPO_VARIA' +
        'CION'
      Size = 60
    end
    object padr_quer_prod_referenciasCON_ENTREPIERNAS: TIntegerField
      FieldName = 'CON_ENTREPIERNAS'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_ORDE_REFERENCIAS.CON_ENTREPIERNAS'
    end
  end
  inherited data_ventana: TDataSource [26]
  end
end

object ffra_prod_maestro: Tffra_prod_maestro
  Left = 0
  Top = 0
  Width = 723
  Height = 372
  TabOrder = 0
  object pane_seleccion: TPanel
    Left = 0
    Top = 0
    Width = 723
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 2
    TabOrder = 0
    object Bevel1: TBevel
      Left = 173
      Top = 2
      Width = 2
      Height = 21
      Align = alLeft
    end
    inline fram_lote: Tffra_prod_sele_lote
      Left = 2
      Top = 2
      Width = 171
      Height = 21
      Align = alLeft
      inherited padr_labe_nume_lote: TSCLDBLabel
        Top = 0
      end
      inherited comb_nume_lote: TPCPLookUpComboEdit
        Top = 0
        DataField = 'cons_prod_lote'
        DataSource = myData_Ventana
        OnChange = fram_lotecomb_nume_loteChange
      end
      inherited quer_lotes: TQuery
        DataSource = data_prod_ordenes
      end
      inherited data_lotes: TDataSource
        Left = 32
      end
    end
    inline fram_refe_material: Tffra_refe_material
      Left = 175
      Top = 2
      Height = 21
      Align = alLeft
      TabOrder = 1
      inherited SCLDBLabel5: TSCLDBLabel
        Left = 2
        Top = 0
        Width = 81
      end
      inherited SCLDBLabel7: TSCLDBLabel
        Left = 211
        Top = 0
        Width = 67
      end
      inherited fram_comb_codi_material: TPCPLookUpComboEdit
        Left = 85
        Top = 0
        DataField = 'cons_refe_material'
        DataSource = myData_Ventana
      end
      inherited fram_comb_nomb_material: TPCPLookUpComboEdit
        Left = 280
        Top = 0
        DataField = 'cons_refe_material'
        DataSource = myData_Ventana
      end
    end
  end
  inline fram_avance: Tffra_prod_resp_lote_proceso
    Top = 25
    Width = 723
    Height = 347
    TabOrder = 1
    Visible = False
    OnResize = fram_avanceResize
    inherited pane_arriba: TPanel
      Width = 723
    end
    inherited pane_observaciones: TPanel
      Width = 723
      Height = 198
      inherited dxDBMemo1: TdxDBMemo
        Width = 715
        Height = 190
      end
    end
    inherited TBXDock1: TTBXDock
      Width = 723
    end
    inherited pane_seleccion: TPanel
      Width = 723
      inherited fram_lote: Tffra_prod_sele_lote
        Width = 723
      end
    end
    inherited quer_sele_responsables: TQuery
      Top = 32
    end
    inherited data_sele_responsables: TDataSource
      Top = 36
    end
    inherited myTabla_ventana: TRxMemoryData
      Top = 28
    end
    inherited data_ventana: TDataSource
      Top = 28
    end
  end
  object tabl_prod_ordenes: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'PCP_PROD_ORDENES'
    Left = 104
    Top = 65531
    object tabl_prod_ordenesCONS_PROD_ORDEN: TIntegerField
      FieldName = 'CONS_PROD_ORDEN'
      Required = True
    end
    object tabl_prod_ordenesNUME_PROD_ORDEN: TStringField
      FieldName = 'NUME_PROD_ORDEN'
      Required = True
      Size = 12
    end
    object tabl_prod_ordenesCONT_POR_LOTES: TIntegerField
      FieldName = 'CONT_POR_LOTES'
    end
    object tabl_prod_ordenesANULADA: TIntegerField
      FieldName = 'ANULADA'
    end
    object tabl_prod_ordenesFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object tabl_prod_ordenesUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
  object data_prod_ordenes: TDataSource
    AutoEdit = False
    DataSet = tabl_prod_ordenes
    OnDataChange = data_prod_ordenesDataChange
    Left = 132
    Top = 65531
  end
  object myTabla_Ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_prod_orden'
        DataType = ftInteger
      end
      item
        Name = 'cons_prod_lote'
        DataType = ftInteger
      end
      item
        Name = 'cons_refe_material'
        DataType = ftInteger
      end
      item
        Name = 'cons_proceso'
        DataType = ftInteger
      end
      item
        Name = 'cons_refe_variacion'
        DataType = ftInteger
      end>
    AfterInsert = myTabla_VentanaAfterInsert
    Left = 160
    Top = 65531
    object myTabla_Ventanacons_prod_orden: TIntegerField
      FieldName = 'cons_prod_orden'
    end
    object myTabla_Ventanacons_prod_lote: TIntegerField
      FieldName = 'cons_prod_lote'
    end
    object myTabla_Ventanacons_refe_material: TIntegerField
      FieldName = 'cons_refe_material'
    end
    object myTabla_Ventanacons_proceso: TIntegerField
      FieldName = 'cons_proceso'
    end
    object myTabla_Ventanacons_refe_variacion: TIntegerField
      FieldName = 'cons_refe_variacion'
    end
  end
  object myData_Ventana: TDataSource
    DataSet = myTabla_Ventana
    Left = 188
    Top = 65531
  end
  object tabl_guardar: TRxMemoryData
    FieldDefs = <
      item
        Name = 'myField'
        DataType = ftInteger
      end>
    Left = 216
    Top = 65531
  end
  object data_guardar: TDataSource
    DataSet = tabl_guardar
    Left = 244
    Top = 65531
  end
end

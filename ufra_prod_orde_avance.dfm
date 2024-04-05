object ffra_prod_orde_avance: Tffra_prod_orde_avance
  Left = 0
  Top = 0
  Width = 671
  Height = 335
  TabOrder = 0
  inline fram_avance: Tffra_prod_resp_lote_proceso
    Width = 671
    Height = 335
    inherited pane_arriba: TPanel
      Width = 671
    end
    inherited pane_observaciones: TPanel
      Width = 671
      Height = 189
      inherited PCPFrame1: TPCPFrame
        Width = 671
        Height = 189
        inherited dxDBMemo1: TdxDBMemo
          Width = 657
          Height = 156
        end
      end
    end
    inherited TBXDock1: TTBXDock
      Width = 671
    end
    inherited pane_seleccion: TPanel
      Width = 671
      inherited fram_lote: Tffra_prod_sele_lote
        Width = 671
      end
    end
  end
  object tabl_prod_ordenes: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'PCP_PROD_ORDENES'
    Left = 91
    Top = 2
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
    Left = 123
    Top = 2
  end
end

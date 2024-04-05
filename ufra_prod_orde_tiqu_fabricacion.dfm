object ffra_prod_orde_tiqu_fabricacion: Tffra_prod_orde_tiqu_fabricacion
  Left = 0
  Top = 0
  Width = 834
  Height = 499
  TabOrder = 0
  inline fram_produccion: Tffra_prod_maestro
    Width = 834
    Height = 49
    Align = alTop
    inherited pane_seleccion: TPanel
      Width = 834
      inherited fram_lote: Tffra_prod_sele_lote
        inherited comb_nume_lote: TPCPLookUpComboEdit
          DataSource = fram_produccion.myData_Ventana
          OnChange = fram_lotecomb_nume_loteChange
        end
        inherited quer_lotes: TQuery
          DataSource = fram_produccion.data_prod_ordenes
          SQL.Strings = (
            'SELECT  CONS_PROD_LOTE, '
            'CAST(NUME_LOTE AS Varchar(12)) AS NUME_LOTE,'
            'CANT_PAQU_CORTE, CANT_PAQU_CORT_AGRUPAR,'
            'CAPA_SIMULACION, CONS_PROD_ORDEN'
            'FROM PCP_PROD_LOTES'
            'WHERE CONS_PROD_ORDEN = :CONS_PROD_ORDEN'
            'ORDER BY NUME_LOTE')
        end
      end
      inherited fram_refe_material: Tffra_refe_material
        Visible = False
        inherited fram_comb_codi_material: TPCPLookUpComboEdit
          DataSource = fram_produccion.myData_Ventana
        end
        inherited fram_comb_nomb_material: TPCPLookUpComboEdit
          DataSource = fram_produccion.myData_Ventana
        end
        inherited quer_refe_materiales: TQuery
          AfterOpen = fram_refe_materialquer_refe_materialesAfterOpen
          SQL.Strings = (
            'Select * from '
            'vis_pcp_refe_materiales'
            'where cons_refe_variacion = :cons_refe_variacion'
            'order by cons_refe_material')
        end
      end
    end
    inherited fram_avance: Tffra_prod_resp_lote_proceso
      Width = 834
      Height = 24
      inherited pane_arriba: TPanel
        Width = 818
      end
      inherited pane_observaciones: TPanel
        Width = 818
        Height = 0
        inherited PCPFrame1: TPCPFrame
          Width = 818
          Height = 0
          inherited dxDBMemo1: TdxDBMemo
            Width = 804
            Height = 190
          end
        end
      end
      inherited TBXDock1: TTBXDock
        Width = 818
      end
      inherited pane_seleccion: TPanel
        Width = 818
        inherited fram_lote: Tffra_prod_sele_lote
          Width = 818
        end
      end
    end
    inherited tabl_prod_ordenes: TTable
      Top = 27
    end
    inherited data_prod_ordenes: TDataSource
      OnDataChange = fram_producciondata_prod_ordenesDataChange
      Top = 27
    end
    inherited myTabla_Ventana: TRxMemoryData
      Top = 27
    end
    inherited myData_Ventana: TDataSource
      Top = 27
    end
    inherited tabl_guardar: TRxMemoryData
      Top = 27
    end
    inherited data_guardar: TDataSource
      Top = 27
    end
  end
  object PCPFrame1: TPCPFrame
    Tag = 450
    Left = 0
    Top = 49
    Width = 834
    Height = 450
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
    TabOrder = 1
    Caption = 'Distribución de paquetes'
    Titulo_Color = 16244694
    Boton_Visible = False
    object dfsSplitter1: TdfsSplitter
      Left = 822
      Top = 21
      Height = 427
      Cursor = crHSplit
      Align = alRight
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object Panel1: TPanel
      Left = 2
      Top = 21
      Width = 508
      Height = 427
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 2
      TabOrder = 1
      inline fram_unidades: Tffra_prod_orde_unid_lote
        Left = 2
        Top = 2
        Width = 504
        Height = 423
        Align = alClient
        inherited fram_unidades: Tffra_prod_orde_unidades
          Width = 504
          Height = 423
          inherited fram_dock: TTBXDock
            Width = 504
          end
          inherited grid: TSCLColumnGrid
            Width = 504
            Height = 397
          end
        end
      end
    end
    object Panel2: TPanel
      Left = 510
      Top = 21
      Width = 312
      Height = 427
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      inline fram_distribucion: Tffra_prod_orde_dist_paquetes
        Width = 312
        Height = 427
        Align = alClient
        inherited TBXDock1: TTBXDock
          Width = 312
        end
        inherited Panel4: TPanel
          Width = 312
          Height = 376
          inherited grid: TSCLColumnGrid
            Width = 308
            Height = 346
          end
          inherited pane_totales: TPanel
            Top = 348
            Width = 308
            inherited SCLDBLabel2: TSCLDBLabel
              FontActive.Name = 'Tahoma'
            end
            inherited SCLDBLabel3: TSCLDBLabel
              FontActive.Name = 'Tahoma'
            end
            inherited boto_ayuda: TTBXButtonSCL
              Left = 281
            end
            inherited boto_warning: TTBXButtonSCL
              Left = 256
            end
            inherited edit_tota_paquetes: TdxCurrencyEdit
              StoredValues = 1
            end
            inherited edit_tota_unidades: TdxCurrencyEdit
              StoredValues = 1
            end
          end
        end
        inherited pane_seleccion: TPanel
          Width = 312
          inherited SCLDBLabel1: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
        end
      end
    end
  end
end

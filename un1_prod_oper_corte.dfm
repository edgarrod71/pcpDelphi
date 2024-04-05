inherited fn1_prod_oper_corte: Tfn1_prod_oper_corte
  Left = 91
  Top = 48
  Height = 612
  Caption = 'Impresión tiquetes de control de corte'
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 584
  end
  inherited padr_pane_info: TPanel
    Top = 576
    Height = 0
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
    Top = 576
  end
  inline fram_corte: Tffra_prod_tiqu_corte [8]
    Top = 146
    Height = 430
    Align = alClient
    TabOrder = 6
    inherited page: TSCLPageControl
      Height = 430
      FixedDimension = 22
      inherited page_informacion: TSCLTabSheet
        inherited pane_seleccion: TPanel
          inherited fram_lote: Tffra_prod_sele_lote
            inherited padr_labe_nume_lote: TSCLDBLabel
              FontActive.Name = 'Tahoma'
            end
            inherited comb_nume_lote: TPCPLookUpComboEdit
              DataSource = fram_corte.myData_Ventana
              OnChange = doActualizarGrid
            end
            inherited quer_lotes: TQuery
              DataSource = data_ventana
            end
          end
          inherited fram_refe_material: Tffra_refe_material
            inherited SCLDBLabel5: TSCLDBLabel
              FontActive.Name = 'Tahoma'
            end
            inherited SCLDBLabel7: TSCLDBLabel
              FontActive.Name = 'Tahoma'
            end
            inherited fram_comb_codi_material: TPCPLookUpComboEdit
              DataSource = fram_corte.myData_Ventana
              OnChange = doActualizarGrid
            end
            inherited fram_comb_nomb_material: TPCPLookUpComboEdit
              DataSource = fram_corte.myData_Ventana
              OnChange = doActualizarGrid
            end
            inherited quer_refe_materiales: TQuery
              DataSource = padr_data_prod_referencias
              Top = 65515
            end
            inherited data_refe_materiales: TDataSource
              Top = 65515
            end
          end
        end
        inherited pane_info: TPanel
          inherited SCLDBLabel1: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel2: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel3: TSCLDBLabel
            Left = 389
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel4: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
          inherited dxDBEdit1: TdxDBEdit
            Top = -1
            StyleController = padr_estilo
          end
          inherited dxDBEdit2: TdxDBEdit
            Top = -1
            StyleController = padr_estilo
          end
          inherited edit_tama_paquete: TdxDBSpinEdit
            Left = 489
            Top = -1
            StyleController = padr_estilo
            StoredValues = 48
          end
          inherited dxDBEdit3: TdxDBEdit
            Top = -1
            StyleController = padr_estilo
          end
        end
        inherited pane_grid: TPanel
          Height = 337
          inherited grid: TSCLColumnGrid
            Height = 333
            GridLineColor = 14467501
            ScrollWidth = 16
          end
        end
      end
      inherited page_avance: TSCLTabSheet
        inherited fram_avance: Tffra_prod_resp_lote_proceso
          inherited pane_arriba: TPanel
            inherited SCLDBLabel1: TSCLDBLabel
              FontActive.Name = 'Tahoma'
            end
            inherited SCLDBLabel2: TSCLDBLabel
              FontActive.Name = 'Tahoma'
            end
            inherited SCLDBLabel3: TSCLDBLabel
              FontActive.Name = 'Tahoma'
            end
            inherited SCLDBLabel4: TSCLDBLabel
              FontActive.Name = 'Tahoma'
            end
            inherited SCLDBLabel5: TSCLDBLabel
              FontActive.Name = 'Tahoma'
            end
            inherited pane_finalizacion: TPanel
              inherited SCLDBLabel6: TSCLDBLabel
                FontActive.Name = 'Tahoma'
              end
            end
          end
          inherited pane_observaciones: TPanel
            inherited PCPFrame1: TPCPFrame
              inherited dxDBMemo1: TdxDBMemo
                Width = 1047
                Height = 197
              end
            end
          end
          inherited pane_seleccion: TPanel
            inherited fram_lote: Tffra_prod_sele_lote
              inherited padr_labe_nume_lote: TSCLDBLabel
                FontActive.Name = 'Tahoma'
              end
            end
          end
        end
      end
    end
    inherited data_guardar: TDataSource
      OnStateChange = fram_cortedata_guardarStateChange
    end
    inherited data_prod_ordenes: TDataSource
      DataSet = padr_quer_ordenes
    end
    inherited acti_Frame: TActionList
      Left = 666
    end
    inherited pop_grid: TTBXPopupMenu
      Left = 694
    end
  end
  inherited padr_fram_informacion: TPCPFrame [9]
    TabOrder = 7
  end
  inherited padr_acciones: TActionList [10]
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
  inherited data_ventana: TDataSource [26]
  end
end

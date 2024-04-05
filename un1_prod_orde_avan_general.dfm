inherited fn1_prod_orde_avan_general: Tfn1_prod_orde_avan_general
  Left = 7
  Top = 157
  Height = 508
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 480
  end
  inherited padr_pane_info: TPanel
    Top = 479
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
    Top = 471
  end
  inherited padr_fram_informacion: TPCPFrame
    inherited padr_comb_nume_lote: TPCPLookUpComboEdit
      OnChange = doCambiarOrden
    end
    inherited comb_nume_orden: TPCPLookUpComboEdit
      OnChange = doCambiarOrden
    end
    object edit_proc_actual: TdxSpinEdit
      Left = 920
      Top = 40
      Width = 57
      Enabled = False
      TabOrder = 12
      Visible = False
    end
  end
  object PCPFrame1: TPCPFrame [9]
    Tag = 281
    Left = 0
    Top = 146
    Width = 804
    Height = 325
    Align = alClient
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Caption = 'Estado actual del proceso'
    Titulo_Color = 16244694
    Boton_Visible = False
    BorderWidthIn = 4
    FlatBorder = True
    inline fram_avance: Tffra_prod_resp_lote_proceso
      Left = 7
      Top = 47
      Width = 790
      Height = 271
      TabOrder = 1
      Visible = False
      inherited pane_arriba: TPanel
        Width = 790
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
        inherited dxDBEdit1: TdxDBEdit
          StyleController = padr_estilo
        end
        inherited dxDBEdit2: TdxDBEdit
          StyleController = padr_estilo
        end
        inherited edit_avance: TJvTracker
          Width = 388
        end
        inherited pane_finalizacion: TPanel
          inherited SCLDBLabel6: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
          inherited edit_fech_finalizacion: TdxDBDateEdit
            StyleController = padr_estilo
          end
        end
      end
      inherited pane_observaciones: TPanel
        Width = 790
        Height = 125
        inherited PCPFrame1: TPCPFrame
          Width = 790
          Height = 125
          inherited dxDBMemo1: TdxDBMemo
            Width = 776
            Height = 92
          end
        end
      end
      inherited TBXDock1: TTBXDock
        Width = 790
      end
      inherited pane_seleccion: TPanel
        Width = 790
        inherited fram_lote: Tffra_prod_sele_lote
          Width = 790
          Visible = False
          inherited padr_labe_nume_lote: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
        end
      end
    end
    inline fram_mensaje: Tffra_mens_atencion
      Left = 3
      Top = 26
      Width = 798
      Height = 21
      TabOrder = 2
      inherited padr_shap_top: TShape
        Width = 798
      end
      inherited padr_shap_bottom: TShape
        Top = 20
        Width = 798
      end
      inherited padr_shap_right: TShape
        Left = 797
        Height = 19
      end
      inherited padr_shap_left: TShape
        Height = 19
      end
      inherited fram_label: TAdvPanel
        Width = 796
        Height = 19
        Text = '<IMG src="3"> Debe seleccionar una orden de producción y un lote'
        FullHeight = 18
      end
    end
  end
end

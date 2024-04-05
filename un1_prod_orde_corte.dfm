inherited fn1_prod_orde_corte: Tfn1_prod_orde_corte
  Caption = 'Control avance de corte'
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_info: TPanel
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
  inherited padr_fram_informacion: TPCPFrame
    inherited edit_proc_actual: TdxSpinEdit
      Value = 7
    end
  end
  inherited PCPFrame1: TPCPFrame
    inherited fram_avance: Tffra_prod_resp_lote_proceso
      inherited pane_arriba: TPanel
        inherited dxDBEdit1: TdxDBEdit
          StyleController = padr_estilo
        end
        inherited dxDBEdit2: TdxDBEdit
          StyleController = padr_estilo
        end
        inherited pane_finalizacion: TPanel
          inherited edit_fech_finalizacion: TdxDBDateEdit
            StyleController = padr_estilo
          end
        end
      end
      inherited pane_observaciones: TPanel
        inherited PCPFrame1: TPCPFrame
          inherited dxDBMemo1: TdxDBMemo
            Height = 92
          end
        end
      end
    end
    inherited fram_mensaje: Tffra_mens_atencion
      inherited fram_label: TAdvPanel
        FullHeight = 18
      end
    end
  end
end

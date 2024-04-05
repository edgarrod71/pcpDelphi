inherited fn1_prod_trazar: Tfn1_prod_trazar
  Caption = 'Trazar orden de producción'
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
  end
  inherited padr_fram_informacion: TPCPFrame
    inherited edit_proc_actual: TdxSpinEdit
      Left = 768
      Top = 24
      Value = 2
    end
  end
  inherited fram_avance: Tffra_prod_resp_lote_proceso
    inherited pane_observaciones: TPanel
      inherited dxDBMemo1: TdxDBMemo
        Height = 103
      end
    end
  end
  inherited fram_mensaje: Tffra_mens_atencion
    inherited fram_label: TAdvPanel
      FullHeight = 18
    end
  end
end

inherited fn1_form_pago_parametrizacion2: Tfn1_form_pago_parametrizacion2
  Left = 382
  Top = 399
  Caption = 'Valor hora mínimo garantizado'
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
  inherited Panel1: TPanel
    inherited SCLDBLabel1: TSCLDBLabel
      ParentFont = False
      DataField = 'NOMB_FORM_PAGO_VALO_MINIMO'
      Field = 'NOMB_FORM_PAGO_VALO_MINIMO'
    end
    inherited SCLDBLabel2: TSCLDBLabel
      ParentFont = False
      DataField = 'VALO_HORA_MINIMO'
      Field = 'VALO_HORA_MINIMO'
    end
    inherited dxDBEdit1: TdxDBEdit
      DataField = 'NOMB_FORM_PAGO_VALO_MINIMO'
    end
    inherited dxDBCurrencyEdit1: TdxDBCurrencyEdit
      DataField = 'VALO_HORA_MINIMO'
      StoredValues = 1
    end
  end
  inherited Tabla_Ventana: TTable
    TableName = 'PCP_FORM_PAGO_VALO_MINIMO'
  end
end

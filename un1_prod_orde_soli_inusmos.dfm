inherited fn1_prod_orde_soli_inusmos: Tfn1_prod_orde_soli_inusmos
  Caption = 'Requisición de insumos (fabricación y empaque)'
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 505
  end
  inherited padr_pane_info: TPanel
    Top = 504
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
    Top = 496
  end
  inherited padr_fram_informacion: TPCPFrame
    inherited edit_proc_actual: TdxSpinEdit
      Value = 9
    end
    inherited dxDBCurrencyEdit1: TdxDBCurrencyEdit
      StoredValues = 1
    end
  end
  inherited PCPFrame1: TPCPFrame
    Height = 23
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
            Height = 72
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
  inherited PCPFrame2: TPCPFrame
    Height = 325
    Caption = 'Explosión de insumos'
    inherited padr_grid: TSCLDBGrid
      Height = 292
      Filter.Criteria = {00000000}
    end
  end
  inherited quer_explosion: TQuery
    SQL.Strings = (
      'SELECT TIPO,CONS_REFE_MATERIAL,'
      
        '    CONS_MATE_REFERENCIA, CODI_MATE_REFERENCIA, NOMB_MATE_REFERE' +
        'NCIA,'
      '    CONS_MATE_GRUPO, CODI_MATE_GRUPO, NOMB_MATE_GRUPO,'
      '    CONS_MATE_SUBGRUPO, CODI_MATE_SUBGRUPO, NOMB_MATE_SUBGRUPO,'
      '    CONS_PROVEEDOR, CODI_PROVEEDOR, NOMB_PROVEEDOR,'
      '    CONS_COLOR, CODI_COLOR, NOMB_COLOR,'
      '    NOMB_UNID_MEDIDA,'
      '    AVG(CONS_UNIDAD) CONS_UNIDAD,'
      '    SUM(CONS_TOTAL) CONS_TOTAL,'
      '    AVG(COST_UNIDAD) COST_UNIDAD,'
      '    SUM(COST_TOTAL) COST_TOTAL,'
      '    AVG(EXISTENTE) EXISTENTE,'
      '    AVG(DISPONIBLE) DISPONIBLE,'
      '    AVG(ENTREGADO) ENTREGADO,'
      '    SUM(DIFERENCIA) DIFERENCIA'
      'FROM CON_PCP_PROD_EXPL_COMPLETO(:CONS_PROD_ORDEN)'
      'WHERE TIPO IN (3,4)'
      'GROUP BY TIPO,CONS_REFE_MATERIAL,'
      
        '    CONS_MATE_REFERENCIA, CODI_MATE_REFERENCIA, NOMB_MATE_REFERE' +
        'NCIA,'
      '    CONS_MATE_GRUPO, CODI_MATE_GRUPO, NOMB_MATE_GRUPO,'
      '    CONS_MATE_SUBGRUPO, CODI_MATE_SUBGRUPO, NOMB_MATE_SUBGRUPO,'
      '    CONS_PROVEEDOR, CODI_PROVEEDOR, NOMB_PROVEEDOR,'
      '    CONS_COLOR, CODI_COLOR, NOMB_COLOR, NOMB_UNID_MEDIDA')
    inherited quer_explosionCODI_MATE_REFERENCIA: TStringField
      DisplayLabel = 'Cód. insumo'
    end
    inherited quer_explosionNOMB_MATE_REFERENCIA: TStringField
      DisplayLabel = 'Nombre insumo'
    end
  end
end

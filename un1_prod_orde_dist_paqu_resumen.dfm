inherited fn1_prod_orde_dist_paqu_resumen: Tfn1_prod_orde_dist_paqu_resumen
  Caption = 'Distribución de paquetes'
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
  inherited padr_pane_grid: TPCPFrame
    inherited Grid: TDecisionGrid
      Options = [cgGridLines, cgPivotable]
    end
  end
  inherited padr_pane_pivote: TPanel
    inherited Control: TDecisionPivot
      Visible = False
    end
  end
  inherited Consulta: TQuery
    SQL.Strings = (
      
        'SELECT NUME_PAQUETE, NOMB_COLOR, TALLA, SUM( CANT_UNIDADES ) CAN' +
        'T_UNIDADES'
      'FROM VIS_PCP_PROD_DIST_PAQUETES'
      'WHERE CONS_PROD_LOTE = :CONS_PROD_LOTE'
      'AND CONS_PROD_PAQU_TIPO = :CONS_PROD_PAQU_TIPO'
      'AND CONS_PROCESO = :CONS_PROC_ANTERIOR'
      'GROUP BY NUME_PAQUETE, NOMB_COLOR, TALLA')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_LOTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_PROD_PAQU_TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_PROC_ANTERIOR'
        ParamType = ptInput
      end>
  end
  inherited Sour: TDecisionSource
    DimensionCount = 3
    SummaryCount = 1
    CurrentSummary = 0
    SparseRows = False
    SparseCols = False
    DimensionInfo = (
      1
      -1
      2
      0
      0
      1
      0
      1
      1
      -1
      2
      0
      1
      0
      0)
  end
end

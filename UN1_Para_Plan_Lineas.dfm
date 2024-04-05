inherited FN1_Para_Plan_Lineas: TFN1_Para_Plan_Lineas
  Left = 207
  Top = 152
  Caption = 'FN1_Para_Plan_Lineas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TdxDBGrid
          Filter.Criteria = {00000000}
        end
      end
    end
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT PL.CONS_PLANTA, P.NOMB_PLANTA, E.RAZO_SOCIAL'
      'FROM GLO_PLANTAS P, GLO_EMPRESAS E, GLO_PLAN_LINEAS PL'
      'WHERE P.CONS_EMPRESA = E.CONS_EMPRESA'
      ' AND P.CONS_PLANTA = PL.CONS_PLANTA'
      ' AND PL.CONS_LINEA = :CONS_LINEA')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_LINEA'
        ParamType = ptUnknown
      end>
  end
end

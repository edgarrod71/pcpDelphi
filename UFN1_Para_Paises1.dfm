inherited FN1_Para_Paises1: TFN1_Para_Paises1
  Left = 362
  Top = 208
  Width = 397
  Height = 210
  ActiveControl = DBCodigo
  Caption = 'FN1_Para_Paises1'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LCodigo: TLabel [0]
    Left = 47
    Top = 100
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'Código'
  end
  object LDescripcion: TLabel [1]
    Left = 58
    Top = 122
    Width = 22
    Height = 13
    Alignment = taRightJustify
    Caption = 'País'
  end
  inherited padr_dock_izquierda: TTBXDock
    Height = 126
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 389
    inherited padr_barra: TTBXToolbar
      DockPos = -8
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 389
  end
  object DBCodigo: TdxDBEdit [5]
    Left = 88
    Top = 95
    Width = 97
    Style.BorderStyle = xbsSingle
    TabOrder = 3
    DataField = 'CODI_PAIS'
    DataSource = data_ventana
  end
  object DBDescripcion: TdxDBEdit [6]
    Left = 88
    Top = 117
    Width = 257
    Style.BorderStyle = xbsSingle
    TabOrder = 4
    DataField = 'NOMB_PAIS'
    DataSource = data_ventana
  end
  inherited data_ventana: TDataSource
    DataSet = TPaises
  end
  object TPaises: TTable
    BeforePost = TPaisesBeforePost
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_PAISES'
    Left = 16
    Top = 80
  end
end

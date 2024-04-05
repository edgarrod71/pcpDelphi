inherited Fn1_para_anulaciones: TFn1_para_anulaciones
  Left = 259
  Top = 119
  Width = 737
  Height = 589
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_dock_arriba: TTBXDock
    Width = 729
  end
  inherited padr_pane_arriba: TPanel
    Width = 729
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 729
    inherited padr_beve_1: TBevel
      Width = 723
    end
  end
  inherited padr_pane_info: TPanel
    Top = 538
    Width = 729
    inherited _DBFecha_Creacion: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 530
    Width = 729
    inherited padr_beve_abajo: TBevel
      Width = 723
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 729
  end
  object PCPFrame1: TPCPFrame [6]
    Left = 0
    Top = 54
    Width = 729
    Height = 259
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Caption = 'Información General'
    TipoFrame = tfGrupo
  end
end

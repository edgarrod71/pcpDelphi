object ffra_prod_orde_etapas: Tffra_prod_orde_etapas
  Left = 0
  Top = 0
  Width = 260
  Height = 251
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 260
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBText1: TDBText
      Left = 76
      Top = 27
      Width = 93
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 1
      Top = 23
      Width = 73
      Height = 21
      Alive = False
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'MS Sans Serif'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Etapa actual:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel1: TSCLDBLabel
      Left = 1
      Top = 2
      Width = 73
      Height = 21
      Alive = False
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'MS Sans Serif'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Lote:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object PCPLookUpComboEdit1: TPCPLookUpComboEdit
      Left = 75
      Top = 3
      Width = 54
      Height = 21
      DropDownCount = 8
      TabOrder = 0
      DirectInput = False
    end
  end
  object grid_etapa: TdxDBGrid
    Left = 0
    Top = 44
    Width = 260
    Height = 207
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 1
    Filter.Criteria = {00000000}
  end
end
